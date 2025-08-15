#!/usr/bin/env python3
import os
import json
import requests
import sys
import uuid
from dotenv import load_dotenv
from typing import List, Tuple

load_dotenv()

class FronteggAccountCreator:
    def __init__(self):
        self.client_id = os.getenv('CLIENT_ID')
        self.secret = os.getenv('SECRET')
        self.region = os.getenv('REGION', 'api.us')
        self.account_name = os.getenv('ACCOUNT_NAME')
        self.environment_id = os.getenv('ENVIRONMENT_ID')
        self.application_id = os.getenv('APPLICATION_ID')
        self.role_id = os.getenv('ROLE_ID')
        self.actions = os.getenv('ACTIONS')
        self.users_to_invite = os.getenv('USERS_TO_INVITE', '')
        
        self.token = None
        self.tenant_id = None
        
        self._validate_config()
    
    def _validate_config(self):
        required_fields = {
            'CLIENT_ID': self.client_id,
            'SECRET': self.secret,
            'ACCOUNT_NAME': self.account_name,
            'ENVIRONMENT_ID': self.environment_id,
            'APPLICATION_ID': self.application_id,
            'ROLE_ID': self.role_id,
            'ACTIONS': self.actions
        }
        
        missing_fields = [field for field, value in required_fields.items() if not value]
        
        if missing_fields:
            print(f"❌ Missing required environment variables: {', '.join(missing_fields)}")
            print("Please update your .env file with the required values.")
            sys.exit(1)
    
    def get_vendor_token(self) -> bool:
        print("🔐 Getting vendor token...")
        
        url = f'https://{self.region}.frontegg.com/auth/vendor/'
        headers = {
            'accept': 'application/json',
            'content-type': 'application/json'
        }
        data = {
            'clientId': self.client_id,
            'secret': self.secret
        }
        
        try:
            response = requests.post(url, headers=headers, json=data)
            response.raise_for_status()
            
            result = response.json()
            self.token = result.get('token')
            
            if self.token:
                # Set the TOKEN environment variable
                os.environ['TOKEN'] = self.token
                print("✅ Successfully obtained vendor token")
                print(f"✅ Set TOKEN environment variable")
                return True
            else:
                print("❌ Failed to get token from response")
                return False
                
        except requests.exceptions.RequestException as e:
            print(f"❌ Error getting vendor token: {e}")
            if hasattr(e.response, 'text'):
                print(f"Response: {e.response.text}")
            return False
    
    def create_account(self) -> bool:
        print(f"\n📦 Creating new account: {self.account_name}...")
        
        # Generate a UUID for the tenant
        self.tenant_id = str(uuid.uuid4())
        print(f"📝 Generated Tenant ID: {self.tenant_id}")
        
        url = f'https://{self.region}.frontegg.com/tenants/resources/tenants/v1'
        headers = {
            'authorization': f'Bearer {self.token}',
            'frontegg-environment-id': self.environment_id,
            'content-type': 'application/json'
        }
        data = {
            'account': self.account_name,
            'inviteUser': True,
            'primaryUser': '',
            'userName': '',
            'domain': '',
            'tenantId': self.tenant_id,
            'name': self.account_name
        }
        
        try:
            response = requests.post(url, headers=headers, json=data)
            response.raise_for_status()
            
            # Tenant ID was already generated and used in the request
            # Set the TENANT_ID environment variable
            os.environ['TENANT_ID'] = self.tenant_id
            print(f"✅ Successfully created account with Tenant ID: {self.tenant_id}")
            print(f"✅ Set TENANT_ID environment variable: {self.tenant_id}")
            return True
                
        except requests.exceptions.RequestException as e:
            print(f"❌ Error creating account: {e}")
            if hasattr(e.response, 'text'):
                print(f"Response: {e.response.text}")
            return False
    
    def update_plans(self) -> bool:
        print("\n📋 Updating plans to Enterprise with Addons...")
        
        url = f'https://{self.region}.frontegg.com/entitlements/resources/entitlements/v2/batch-actions'
        headers = {
            'authorization': f'Bearer {self.token}',
            'content-type': 'application/json',
            'frontegg-environment-id': self.environment_id
        }
        
        try:
            actions_data = json.loads(self.actions)
            
            for action in actions_data.get('createActions', []):
                action['tenantId'] = self.tenant_id
            
            response = requests.post(url, headers=headers, json=actions_data)
            response.raise_for_status()
            
            print(f"✅ Successfully updated plans for tenant {self.tenant_id}")
            return True
            
        except json.JSONDecodeError as e:
            print(f"❌ Error parsing ACTIONS JSON: {e}")
            return False
        except requests.exceptions.RequestException as e:
            print(f"❌ Error updating plans: {e}")
            if hasattr(e.response, 'text'):
                print(f"Response: {e.response.text}")
            return False
    
    def parse_users(self) -> List[Tuple[str, str]]:
        users = []
        if not self.users_to_invite:
            return users
        
        user_entries = self.users_to_invite.split(',')
        for entry in user_entries:
            parts = entry.strip().split(' - ')
            if len(parts) == 2:
                name = parts[0].strip()
                email = parts[1].strip()
                users.append((name, email))
        
        return users
    
    def invite_user(self, name: str, email: str) -> bool:
        print(f"\n👤 Inviting user: {name} ({email})...")
        
        url = f'https://{self.region}.frontegg.com/identity/resources/vendor-only/users/v1'
        headers = {
            'authorization': f'Bearer {self.token}',
            'frontegg-application-id': self.application_id,
            'frontegg-environment-id': self.environment_id,
            'content-type': 'application/json'
        }
        data = {
            'name': name,
            'email': email,
            'tenantId': self.tenant_id,
            'roleIds': [self.role_id],
            'inviteUser': True,
            'applicationIds': []
        }
        
        try:
            response = requests.post(url, headers=headers, json=data)
            response.raise_for_status()
            
            print(f"✅ Successfully invited {name} ({email})")
            return True
            
        except requests.exceptions.RequestException as e:
            print(f"❌ Error inviting user {name}: {e}")
            if hasattr(e.response, 'text'):
                print(f"Response: {e.response.text}")
            return False
    
    def run(self):
        print("🚀 Starting Frontegg Account Creator Script")
        print("=" * 50)
        
        if not self.get_vendor_token():
            print("\n❌ Failed to authenticate. Exiting.")
            return
        
        if not self.create_account():
            print("\n❌ Failed to create account. Exiting.")
            return
        
        if not self.update_plans():
            print("\n⚠️  Failed to update plans, but continuing with user invitations.")
        
        users = self.parse_users()
        if users:
            print(f"\n📧 Inviting {len(users)} user(s)...")
            success_count = 0
            for name, email in users:
                if self.invite_user(name, email):
                    success_count += 1
            
            print(f"\n✅ Successfully invited {success_count}/{len(users)} users")
        else:
            print("\n📧 No users to invite.")
        
        print("\n" + "=" * 50)
        print("✨ Account creation process completed!")
        print(f"📍 Tenant ID: {self.tenant_id}")
        print(f"📍 Account Name: {self.account_name}")

if __name__ == "__main__":
    creator = FronteggAccountCreator()
    creator.run()