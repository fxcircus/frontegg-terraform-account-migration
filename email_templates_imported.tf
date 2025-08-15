# Email Templates
# Generated from source account
# Note: Only template types supported by Terraform provider are included

resource "frontegg_email_template" "resetpassword" {
  template_type = "ResetPassword"
  from_address  = "noreply@example.com"
  from_name     = "test"
  subject       = "Let’s reset your password"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Hello! Please Reset your password by clicking on the button below
</div>
<head>
	<meta name="viewport" content="width=device-width, initial scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="color-scheme" content="light dark">
	<meta name="supported-color-schemes" content="light dark">
	<title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
	style="min-width:320px; ">
	<table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
		style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
		<tbody>
			<tr>
				<td height="1" style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
							color-scheme: light dark;
							supported-color-schemes: light dark;
						}

						html {
							-webkit-text-size-adjust: none;
							-ms-text-size-adjust: none;
							-webkit-text-resize: 100%;
							text-resize: 100%;
						}

						* {
							outline: none;
						}

						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}

						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}

						@media (prefers-color-scheme: dark) {
							.btn {
								color: #ffffff !important;
							}

							.title {
								color: #ffffff !important;
							}

							.bg {
								background: #dddddd !important;
							}

							.mainbg {
								background: #ffffff !important;
							}

							.main-title {
								color: #e0e0e0 !important;
							}

							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
						style=" max-width:650px; background-color: #dddddd;">
						<tbody>
							<tr>
								<td colspan="3" height="30" style="padding:0;"></td>
							</tr>
							<tr>
								<td width="15" valign="top" style="padding:0;"></td>
								<td style="padding:0;">
									<table width="100%" cellspacing="0" cellpadding="0" border="0"
										style=" max-width:600px;">
										<tbody>
											<tr>
												<td height="25" style="padding:0;"></td>
											</tr>
											<tr>
												<td height="32" style="padding:0;"></td>
											</tr>
										</tbody>
									</table>
								</td>
								<td width="15" valign="top" style="padding:0;"></td>
							</tr>
							<tr>
								<td width="15" valign="top" style="padding:0;"></td>
								<td style="padding: 0">
									<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
										border="0"
										style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
										<tbody>
											<tr>
												<td valign="top" style="padding:0;">
													<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
														cellpadding="0" border="0"
														style=" max-width:600px; border-radius: 10px">
														<tbody>
															<tr>
																<td height="23" style="padding:0;"></td>
															</tr>
															<tr>
																<td align="center"
																	style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td height="17" style="padding:0;"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td align="center"
																	style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td width="30" style="padding:0;"></td>
																				<td style="padding:0;">
																					<table cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        Forgot your password? No worries!
                                                                                                        <br />
                                                                                                        Click below to set a new one.
                                                                                                    </font>
																								</td>
																							</tr>
																							<tr>
																								<td height="28"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td style="padding:0;">
																									<table width="100%"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td
																													style="padding:0;">
																													<table
																														width="100%"
																														cellspacing="0"
																														cellpadding="0"
																														border="0">
																														<tbody>
																															<tr>
																																<td height="46"
																																	style="padding:0">
																																	<div
																																		class="btn">
																																		<font
																																			face="Arial, sans-serif"
																																			size="1"
																																			color="#ffffff"
																																			style="font-size:16px; font-weight:normal; vertical-align:middle;">
																																			<a href="{{redirectURL}}"
																																				class="btn"
																																				target="_blank"
																																				style="min-width: 145px; background:#6F7DFF; display:inline-block; text-align: center;  text-decoration:none; color: #ffffff; font-weight:normal; vertical-align:middle; line-height:46px; border-radius: 4px;  padding: 6px 12px">
																																				&nbsp;Set new password
																																				&nbsp;<i
																																					style="vertical-align:middle;">
																																					<img style="max-width:12px; height: auto;"
																																						border="0"
																																						src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/arr.png"
																																						width="auto"
																																						height="auto"
																																						alt="">
																																				</i>
																																			</a>
																																		</font>
																																	</div>
																																</td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																							</tr>
																							<tr>
																								<td height="30"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">
                                                                                                        If you didn't make this request, ignore this email.
                                                                                                    </font>
																								</td>
																							</tr>
																							<tr>
																								<td height="23"
																									style="padding:0;">
																								</td>
																							</tr>
                                                                                            <tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">
																										If that doesn’t
																										work, copy and
																										paste the
																										following link
																										into your
																										browser:</font>
																								</td>
																							</tr>
                                                                                            <tr>
																								<td height="30"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: 0em;">
																										<a href="{{redirectURL}}"
																											style="font-size:14px; line-height:22px;letter-spacing: 0em; color: #3789DC;">{{redirectURL}}</a>
																									</font>
																								</td>
																							</tr>
																							<tr>
																								<td height="25"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: 0em;">
																										Cheers,<br>The Frontegg
																										team</font>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td width="30" style="padding:0;"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="35" style="padding:0;"></td>
															</tr>
															<tr>
																<td valign="top" height="1"
																	style="padding:0; line-height: 0px;">
																	<table height="1" width="100%" cellspacing="0"
																		cellpadding="0" border="0"
																		style="font-size:0; line-height: 0px;">
																		<tbody>
																			<tr>
																				<td bgcolor="#eef1f7" height="1"
																					style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td height="22" style="padding:0;"></td>
																			</tr>
																			<tr>
																				<td width="30" style="padding:0;"></td>
																				<td style="padding:0;" colspan="3">
																					<table width="100%" cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td width="50%"
																									style="padding: 0">
																									<table width="100%"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td valign="top"
																													style="padding:0; line-height: 22px;">
																													<font
																														class="text"
																														color="#4D5062"
																														face="Arial, Helvetica, sans-serif"
																														size="3"
																														style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;">
																														Hatuval
																														40,
																														Ramat
																														Gan,
																														Israel
																													</font>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td align="right"
																									width="50%"
																									style="padding: 0">
																									<table width="auto"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="http://fb.me/frontegg"
																														style="display: block;"
																														target="_blank">
																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																												<td width="15"
																													style="padding:0;">
																												</td>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="https://twitter.com/Frontegg_"
																														style="display: inline-block; vertical-align: middle;"
																														target="_blank">
																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																												<td width="15"
																													style="padding:0;">
																												</td>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="https://www.linkedin.com/company/frontegg"
																														style="display: block;"
																														target="_blank">

																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																												<td width="15"
																													style="padding:0;">
																												</td>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="mailto:help@frontegg.com"
																														style="display: block;"
																														target="_blank">

																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td width="30" style="padding:0;"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="20" style="padding:0;"></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
								<td width="15" valign="top" style="padding:0;"></td>
							</tr>
							<tr>
								<td colspan="3" height="30" style="padding:0;"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>






</body>

</html>

EOT
  redirect_url  = "https://app-b5ukarv2uvoo.us.frontegg.com/oauth/account/reset-password"
  active        = true
}

resource "frontegg_email_template" "activateuser" {
  template_type = "ActivateUser"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Let’s activate your account"
  html_template = <<-EOT
<html>
	<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Welcome! Please verify your email address by clicking on the button below
	</div>
	<head>
		<meta name="viewport" content="width=device-width, initial scale=1.0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="color-scheme" content="light dark">
		<meta name="supported-color-schemes" content="light dark">
		<title>Frontegg</title>
	</head>
	<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0" style="min-width:320px; ">
		<table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0" style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
			<tbody><tr>
				<td height="1" style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
						  color-scheme: light dark;
						  supported-color-schemes: light dark;
						}

						html { -webkit-text-size-adjust:none;
						 -ms-text-size-adjust: none;
						 -webkit-text-resize: 100%;
						  text-resize: 100%;}
						*{outline:none;}
						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}
						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}
						 @media (prefers-color-scheme: dark) {
						    .btn {
								color: #ffffff !important;
							}
							.title {
								color: #ffffff !important;
							}
							.bg {
								background: #dddddd !important;
							}
							.mainbg {
								background: #ffffff!important;
							}
							.main-title {
								color: #e0e0e0 !important;
							}
							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0" style=" max-width:650px; background-color: #dddddd;">
						<tbody><tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding:0;">
								<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
									<tbody><tr>
										<td height="25" style="padding:0;"></td>
									</tr>
									<tr>
										<td height="32" style="padding:0;"></td>
									</tr>
								</tbody></table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding: 0">
								<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
									<tbody><tr>
										<td valign="top" style="padding:0;">
											<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; border-radius: 10px">
												<tbody><tr>
													<td height="23" style="padding:0;"></td>
												</tr>
												<tr>
													<td align="center" style="padding:0; line-height:0; font-size:0;">
														<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tbody><tr>
																<td height="17" style="padding:0;"></td>
															</tr>
														</tbody></table>
													</td>
												</tr>
												<tr>
													<td align="center" style="padding:0; line-height:0; font-size:0;">
														<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tbody><tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tbody><tr>
																			<td valign="top" style="padding:0; line-height: 40px;">
																				<font class="main-title" color="#393C4F" face="Arial, Helvetica, sans-serif" size="3" style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">Welcome, {{name}}! </font>
																			</td>
																		</tr>
																		<tr>
																			<td height="32" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">Ready to get started?<br> Click below to activate your account.</font>
																			</td>
																		</tr>
																		<tr>
																			<td height="28" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td style="padding:0;">
																				<table width="100%" cellspacing="0" cellpadding="0" border="0">
																					<tbody><tr>
																						<td style="padding:0;">
																							<table width="100%" cellspacing="0" cellpadding="0" border="0">
																								<tbody><tr>
																									<td height="46" style="padding:0">
																										<div class="btn">
																											<font face="Arial, sans-serif" size="1" color="#ffffff" style="font-size:16px; font-weight:normal; vertical-align:middle;">
																												<a href="{{redirectURL}}" class="btn" target="_blank" style="min-width: 145px; background:#6F7DFF; display:inline-block; text-align: center;  text-decoration:none; color: #ffffff; font-weight:normal; vertical-align:middle; line-height:46px; border-radius: 4px;">
                                                                                                                    &nbsp;&nbsp;Activate account &nbsp;<i style="vertical-align:middle;">
																														<img style="max-width:12px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/arr.png" width="auto" height="auto" alt="">&nbsp;
																													</i>
																												</a>
																											</font>
																										</div>
																									</td>
																								</tr>
																							</tbody></table>
																						</td>
																					</tr>
																				</tbody></table>
																			</td>
																		</tr>
																		<tr>
																			<td height="23" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">If that doesn’t work, copy and paste the following link into your browser:</font>
																			</td>
																		</tr>
																		<tr>
																			<td height="30" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;"><a href="{{redirectURL}}" style="font-size:14px; line-height:22px;letter-spacing: 0em; color: #3789DC;">{{redirectURL}}</a></font>
																			</td>
																		</tr>
																		<tr>
																			<td height="25" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;">Cheers,<br>The Frontegg team</font>
																			</td>
																		</tr>
																	</tbody></table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</tbody></table>
													</td>
												</tr>
												<tr>
													<td height="35" style="padding:0;"></td>
												</tr>
												<tr>
													<td valign="top" height="1" style="padding:0; line-height: 0px;">
														<table height="1" width="100%" cellspacing="0" cellpadding="0" border="0" style="font-size:0; line-height: 0px;">
															<tbody><tr>
																<td bgcolor="#eef1f7" height="1" style=" background-color:#eef1f7; padding:0;  line-height: 1px;"></td>
															</tr>
														</tbody></table>
													</td>
												</tr>
												<tr>
													<td style="padding:0; line-height:0; font-size:0;">
														<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tbody><tr>
																<td height="22" style="padding:0;"></td>
															</tr>
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;" colspan="3">
																	<table width="100%" cellspacing="0" cellpadding="0" border="0">
																		<tbody><tr>
																			<td width="50%" style="padding: 0">
																				<table width="100%" cellspacing="0" cellpadding="0" border="0">
																					<tbody><tr>
																						<td valign="top" style="padding:0; line-height: 22px;">
																							<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;">Hatuval 40, Ramat Gan, Israel</font>
																						</td>
																					</tr>
																				</tbody></table>
																			</td>
																			<td align="right" width="50%" style="padding: 0">
																				<table width="auto" cellspacing="0" cellpadding="0" border="0">
																					<tbody><tr>
																						<td align="center" width="16" height="16" style="padding: 0;">
																							<a href="http://fb.me/frontegg" style="display: block;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png" width="auto" height="auto" alt="">
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td align="center" width="16" height="16" style="padding: 0;">
																							<a href="https://twitter.com/Frontegg_" style="display: inline-block; vertical-align: middle;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png" width="auto" height="auto" alt="">
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td align="center" width="16" height="16" style="padding: 0;">
																							<a href="https://www.linkedin.com/company/frontegg" style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png" width="auto" height="auto" alt="">
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td align="center" width="16" height="16" style="padding: 0;">
																							<a href="mailto:help@frontegg.com" style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png" width="auto" height="auto" alt="">
																							</a>
																						</td>
																					</tr>
																				</tbody></table>
																			</td>
																		</tr>
																	</tbody></table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</tbody></table>
													</td>
												</tr>
												<tr>
													<td height="20" style="padding:0;"></td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>






</body></html>

EOT
  redirect_url  = "https://app-b5ukarv2uvoo.us.frontegg.com/oauth/account/activate"
  active        = false
}

resource "frontegg_email_template" "invitetotenant" {
  template_type = "InviteToTenant"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "New account invitation"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    New account invitation
</div>
<head>
	<meta name="viewport" content="width=device-width, initial scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="color-scheme" content="light dark">
	<meta name="supported-color-schemes" content="light dark">
	<title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
	style="min-width:320px; ">
	<table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
		style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
		<tbody>
			<tr>
				<td height="1" style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
							color-scheme: light dark;
							supported-color-schemes: light dark;
						}

						html {
							-webkit-text-size-adjust: none;
							-ms-text-size-adjust: none;
							-webkit-text-resize: 100%;
							text-resize: 100%;
						}

						* {
							outline: none;
						}

						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}

						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}

						@media (prefers-color-scheme: dark) {
							.btn {
								color: #ffffff !important;
							}

							.title {
								color: #ffffff !important;
							}

							.bg {
								background: #dddddd !important;
							}

							.mainbg {
								background: #ffffff !important;
							}

							.main-title {
								color: #e0e0e0 !important;
							}

							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
						style=" max-width:650px; background-color: #dddddd;">
						<tbody>
							<tr>
								<td colspan="3" height="30" style="padding:0;"></td>
							</tr>
							<tr>
								<td width="15" valign="top" style="padding:0;"></td>
								<td style="padding:0;">
									<table width="100%" cellspacing="0" cellpadding="0" border="0"
										style=" max-width:600px;">
										<tbody>
											<tr>
												<td height="25" style="padding:0;"></td>
											</tr>
											<tr>
												<td height="32" style="padding:0;"></td>
											</tr>
										</tbody>
									</table>
								</td>
								<td width="15" valign="top" style="padding:0;"></td>
							</tr>
							<tr>
								<td width="15" valign="top" style="padding:0;"></td>
								<td style="padding: 0">
									<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
										border="0"
										style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
										<tbody>
											<tr>
												<td valign="top" style="padding:0;">
													<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
														cellpadding="0" border="0"
														style=" max-width:600px; border-radius: 10px">
														<tbody>
															<tr>
																<td height="23" style="padding:0;"></td>
															</tr>
															<tr>
																<td align="center"
																	style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td height="17" style="padding:0;"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td align="center"
																	style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td width="30" style="padding:0;"></td>
																				<td style="padding:0;">
																					<table cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 40px;">
																									<font
																										class="main-title"
																										color="#393C4F"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
																										{{issuerName}} invited you to join a new account.</font>
																								</td>
																							</tr>
																							<tr>
																								<td height="32"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        Click below to join.
                                                                                                    </font>
																								</td>
																							</tr>
																							<tr>
																								<td height="28"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td style="padding:0;">
																									<table width="100%"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td
																													style="padding:0;">
																													<table
																														width="100%"
																														cellspacing="0"
																														cellpadding="0"
																														border="0">
																														<tbody>
																															<tr>
																																<td height="46"
																																	style="padding:0">
																																	<div
																																		class="btn">
																																		<font
																																			face="Arial, sans-serif"
																																			size="1"
																																			color="#ffffff"
																																			style="font-size:16px; font-weight:normal; vertical-align:middle;">
																																			<a href="{{redirectURL}}"
																																				class="btn"
																																				target="_blank"
																																				style="min-width: 145px; background:#6F7DFF; display:inline-block; text-align: center;  text-decoration:none; color: #ffffff; font-weight:normal; vertical-align:middle; line-height:46px; border-radius: 4px;">
																																				&nbsp;Join account
																																				&nbsp;<i
																																					style="vertical-align:middle;">
																																					<img style="max-width:12px; height: auto;"
																																						border="0"
																																						src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/arr.png"
																																						width="auto"
																																						height="auto"
																																						alt="">
																																				</i>
																																			</a>
																																		</font>
																																	</div>
																																</td>
																															</tr>
																														</tbody>
																													</table>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																							</tr>
																							<tr>
																								<td height="23"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">
                                                                                                        If that doesn't work, copy and paste the following link into your browser:
                                                                                                    </font>
																								</td>
																							</tr>
																							<tr>
																								<td height="30"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: 0em;">
																										<a href="{{redirectURL}}"
																											style="font-size:14px; line-height:22px;letter-spacing: 0em; color: #3789DC;">{{redirectURL}}</a>
																									</font>
																								</td>
																							</tr>
																							<tr>
																								<td height="25"
																									style="padding:0;">
																								</td>
																							</tr>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: 0em;">
																										Cheers,<br>The Frontegg
																										team</font>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td width="30" style="padding:0;"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="35" style="padding:0;"></td>
															</tr>
															<tr>
																<td valign="top" height="1"
																	style="padding:0; line-height: 0px;">
																	<table height="1" width="100%" cellspacing="0"
																		cellpadding="0" border="0"
																		style="font-size:0; line-height: 0px;">
																		<tbody>
																			<tr>
																				<td bgcolor="#eef1f7" height="1"
																					style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td height="22" style="padding:0;"></td>
																			</tr>
																			<tr>
																				<td width="30" style="padding:0;"></td>
																				<td style="padding:0;" colspan="3">
																					<table width="100%" cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td width="50%"
																									style="padding: 0">
																									<table width="100%"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td valign="top"
																													style="padding:0; line-height: 22px;">
																													<font
																														class="text"
																														color="#4D5062"
																														face="Arial, Helvetica, sans-serif"
																														size="3"
																														style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;">
																														Hatuval
																														40,
																														Ramat
																														Gan,
																														Israel
																													</font>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																								<td align="right"
																									width="50%"
																									style="padding: 0">
																									<table width="auto"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="http://fb.me/frontegg"
																														style="display: block;"
																														target="_blank">
																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																												<td width="15"
																													style="padding:0;">
																												</td>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="https://twitter.com/Frontegg_"
																														style="display: inline-block; vertical-align: middle;"
																														target="_blank">
																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																												<td width="15"
																													style="padding:0;">
																												</td>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="https://www.linkedin.com/company/frontegg"
																														style="display: block;"
																														target="_blank">

																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																												<td width="15"
																													style="padding:0;">
																												</td>
																												<td align="center"
																													width="16"
																													height="16"
																													style="padding: 0;">
																													<a href="mailto:help@frontegg.com"
																														style="display: block;"
																														target="_blank">

																														<img style="max-width:16px; height: auto;"
																															border="0"
																															src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
																															width="auto"
																															height="auto"
																															alt="">
																													</a>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td width="30" style="padding:0;"></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="20" style="padding:0;"></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
								<td width="15" valign="top" style="padding:0;"></td>
							</tr>
							<tr>
								<td colspan="3" height="30" style="padding:0;"></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>






</body>

</html>

EOT
  redirect_url  = "https://app-b5ukarv2uvoo.us.frontegg.com/oauth/account/invitation/accept"
  active        = false
}

resource "frontegg_email_template" "pwnedpassword" {
  template_type = "PwnedPassword"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Your password was exposed in a breach"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Pwned Password detected.
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        A data breach on a site or app resulted in your password being exposed. We highly recommend changing it immediately to protect your account.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        Your password was seen {{timesPwned}} times before. If you've used this password elsewhere, be sure to change it there as well.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                              <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If you don't have multi-factor authentication enabled on your account yet, we recommend enabling it now.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>



                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>

                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,<br>The Frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "magiclink" {
  template_type = "MagicLink"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Here’s your magic link for logging in 🔑"
  html_template = <<-EOT
<html>
	<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Hello! Here is your Magic Login Link
	</div>
	<head>
		<meta name="viewport" content="width=device-width, initial scale=1.0"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="color-scheme" content="light dark">
		<meta name="supported-color-schemes" content="light dark">
		<title>frontEgg</title>
	</head>
	<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"  style="min-width:320px; ">
		<table class="bg" width="100%" bgcolor="#dddddd" class="body" cellspacing="0" cellpadding="0" border="0" style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
			<tr>
				<td height="1"  style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
						  color-scheme: light dark;
						  supported-color-schemes: light dark;
						}

						html { -webkit-text-size-adjust:none;
						 -ms-text-size-adjust: none;
						 -webkit-text-resize: 100%;
						  text-resize: 100%;}
						*{outline:none;}
						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}
						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}
						 @media (prefers-color-scheme: dark) {
						    .btn {
								color: #ffffff !important;
							}
							.title {
								color: #ffffff !important;
							}
							.bg {
								background: #dddddd !important;
							}
							.mainbg {
								background: #ffffff!important;
							}
							.main-title {
								color: #e0e0e0 !important;
							}
							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" class="body" cellspacing="0" cellpadding="0" border="0" style=" max-width:650px; background-color: #dddddd;">
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding:0;">
								<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
									<tr>
										<td height="25" style="padding:0;"></td>
									</tr>
									<tr>
										<td height="32" style="padding:0;"></td>
									</tr>
								</table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding: 0">
								<table class="mainbg"  bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
									<tr>
										<td valign="top" style="padding:0;">
											<table class="mainbg" bgcolor="#ffffff" class="body"  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; border-radius: 10px">

												<tr>
													<td align="center" style="padding:0; line-height:0; font-size:0;">
														<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td height="32" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                    No password, no problem!<br>
                                                                                    Click below to log in. The link is available for the next {{expires}} minutes.</font>
																			</td>
																		</tr>
																		<tr>
																			<td height="28" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td style="padding:0;">
																				<table  width="100%"  cellspacing="0" cellpadding="0" border="0">
																					<tr>
																						<td style="padding:0;">
																							<table  width="100%" cellspacing="0" cellpadding="0" border="0">
																								<tr>
																									<td height="46" style="padding:0">
																										<div class="btn">
																											<font face="Arial, sans-serif" size="1" color="#ffffff" style="font-size:16px; font-weight:normal; vertical-align:middle;">
																												<a href="{{redirectURL}}" class="btn" target="_blank" style="min-width: 145px; background:#6F7DFF; display:inline-block; text-align: center;  text-decoration:none; color: #ffffff; font-weight:normal; vertical-align:middle; line-height:46px; border-radius: 4px;">
																													&nbsp;Log in &nbsp;<i style="vertical-align:middle;">
																														<img style="max-width:12px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/arr.png" width="auto" height="auto" alt="" />
																													</i>
																												</a>
																											</font>
																										</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td height="23" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">If that doesn’t work, copy and paste the following link into your browser:</font>
																			</td>
																		</tr>
																		<tr>
																			<td height="30" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;"><a href="{{redirectURL}}" style="font-size:14px; line-height:22px;letter-spacing: 0em; color: #3789DC;">{{redirectURL}}</a></font>
																			</td>
																		</tr>
																		<tr>
																			<td height="25" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text"  color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;">Cheers,<br>The Frontegg team</font>
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td  height="35" style="padding:0;"></td>
												</tr>
												<tr>
													<td valign="top" height="1" style="padding:0; line-height: 0px;">
														<table height="1" width="100%" cellspacing="0" cellpadding="0" border="0" style="font-size:0; line-height: 0px;">
															<tr>
																<td bgcolor="#eef1f7" height="1" style=" background-color:#eef1f7; padding:0;  line-height: 1px;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td  style="padding:0; line-height:0; font-size:0;">
														<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tr>
																<td height="22" style="padding:0;"></td>
															</tr>
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;" colspan="3">
																	<table width="100%" cellspacing="0" cellpadding="0" border="0" >
																		<tr>
																			<td width="50%" style="padding: 0">
																				<table width="100%" cellspacing="0" cellpadding="0" border="0" >
																					<tr>
																						<td valign="top" style="padding:0; line-height: 22px;">
																							<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;">Hatuval 40, Ramat Gan, Israel</font>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td align="right" width="50%" style="padding: 0">
																				<table width="auto" cellspacing="0" cellpadding="0" border="0" >
																					<tr>
																						<td  align="center"  width="16"  height="16" style="padding: 0;">
																							<a href="http://fb.me/frontegg" style="display: block;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center"  width="16"  height="16"style="padding: 0;">
																							<a href="https://twitter.com/Frontegg_" style="display: inline-block; vertical-align: middle;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center" width="16"  height="16" style="padding: 0;">
																							<a href="https://www.linkedin.com/company/frontegg"style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center" width="16"  height="16" style="padding: 0;">
																							<a href="mailto:help@frontegg.com"style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height="20" style="padding:0;"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>





EOT
  redirect_url  = "https://app-b5ukarv2uvoo.us.frontegg.com/oauth/account/magic-link"
  active        = false
}

resource "frontegg_email_template" "otc" {
  template_type = "OTC"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Here’s your verification code 🔑"
  html_template = <<-EOT
<html>
	<div class="preheader"
    style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Hello! Here is your verification code</div>
	<head>
		<meta name="viewport" content="width=device-width, initial scale=1.0"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="color-scheme" content="light dark">
		<meta name="supported-color-schemes" content="light dark">
		<title>frontEgg</title>
	</head>
	<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"  style="min-width:320px; ">
		<table class="bg" width="100%" bgcolor="#dddddd" class="body" cellspacing="0" cellpadding="0" border="0" style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
			<tr>
				<td height="1"  style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
						  color-scheme: light dark;
						  supported-color-schemes: light dark;
						}

						html { -webkit-text-size-adjust:none;
						 -ms-text-size-adjust: none;
						 -webkit-text-resize: 100%;
						  text-resize: 100%;}
						*{outline:none;}
						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}
						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}
						 @media (prefers-color-scheme: dark) {
						    .btn {
								color: #ffffff !important;
							}
							.title {
								color: #ffffff !important;
							}
							.bg {
								background: #dddddd !important;
							}
							.mainbg {
								background: #ffffff!important;
							}
							.main-title {
								color: #e0e0e0 !important;
							}
							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" class="body" cellspacing="0" cellpadding="0" border="0" style=" max-width:650px; background-color: #dddddd;">
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding:0;">
								<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
									<tr>
										<td height="25" style="padding:0;"></td>
									</tr>
									<tr>
										<td height="32" style="padding:0;"></td>
									</tr>
								</table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding: 0">
								<table class="mainbg"  bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
									<tr>
										<td valign="top" style="padding:0;">
											<table class="mainbg" bgcolor="#ffffff" class="body"  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; border-radius: 10px">
												<tr>
													<td height="23" style="padding:0;"></td>
												</tr>

												<tr>
													<td align="center" style="padding:0; line-height:0; font-size:0;">
														<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;">
																	<table cellspacing="0" cellpadding="0" border="0">
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                    No password, no problem!<br/>
                                                                                    Copy and paste the following code to log in. The code is available for the next {{expires}} minutes.
                                                                                </font>
																			</td>
																		</tr>
                                                                      <tr>
																			<td height="32" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;text-align:center;">
																				<font class="text"  color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">{{code}}</font>
																			</td>
																		</tr>
																		<tr>
																			<td height="28" style="padding:0;"></td>
																		</tr>

																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text"  color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;">Cheers,<br>The Frontegg team</font>
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td  height="35" style="padding:0;"></td>
												</tr>
												<tr>
													<td valign="top" height="1" style="padding:0; line-height: 0px;">
														<table height="1" width="100%" cellspacing="0" cellpadding="0" border="0" style="font-size:0; line-height: 0px;">
															<tr>
																<td bgcolor="#eef1f7" height="1" style=" background-color:#eef1f7; padding:0;  line-height: 1px;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td  style="padding:0; line-height:0; font-size:0;">
														<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tr>
																<td height="22" style="padding:0;"></td>
															</tr>
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;" colspan="3">
																	<table width="100%" cellspacing="0" cellpadding="0" border="0" >
																		<tr>
																			<td width="50%" style="padding: 0">
																				<table width="100%" cellspacing="0" cellpadding="0" border="0" >
																					<tr>
																						<td valign="top" style="padding:0; line-height: 22px;">
																							<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;"">Hatuval 40, Ramat Gan, Israel</font>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td align="right" width="50%" style="padding: 0">
																				<table width="auto" cellspacing="0" cellpadding="0" border="0" >
																					<tr>
																						<td  align="center"  width="16"  height="16" style="padding: 0;">
																							<a href="http://fb.me/frontegg" style="display: block;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center"  width="16"  height="16"style="padding: 0;">
																							<a href="https://twitter.com/Frontegg_" style="display: inline-block; vertical-align: middle;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center" width="16"  height="16" style="padding: 0;">
																							<a href="https://www.linkedin.com/company/frontegg"style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center" width="16"  height="16" style="padding: 0;">
																							<a href="mailto:help@frontegg.com"style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height="20" style="padding:0;"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>





EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "connectnewdevice" {
  template_type = "ConnectNewDevice"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "A new device was used to log in to your account"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    New device connected.
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        We identified a new login to your account with the following details:
                                                                                                        <br>
                                                                                                        <br>
                                                                                                        Timestamp:
                                                                                                        {{metadata.timestamp}}
                                                                                                        <br>
                                                                                                        IP Address:
                                                                                                        {{metadata.ipAddress}}
                                                                                                        <br>
                                                                                                        User agent:
                                                                                                        {{metadata.userAgent}}
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If you don't recognize this login, please reset your password immediately.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this was you (for example, if you were browsing in incognito or private mode or recently cleared your cookies), you can ignore this message.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>



                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "userusedinvitation" {
  template_type = "UserUsedInvitation"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "A new user joined your account 🎉"
  html_template = <<-EOT
<html>

<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                     {{metadata.userJoined}} joined the {{metadata.accountJoined}} using your invite link.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        Happy working!
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>

                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Cheers,<br>The Frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "resetphonenumber" {
  template_type = "ResetPhoneNumber"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Reset Phone Number"
  html_template = <<-EOT
<html>
<div class="preheader"
    style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Reset Phone Number</div>
<head>
	<meta name="viewport" content="width=device-width, initial scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="color-scheme" content="light dark">
	<meta name="supported-color-schemes" content="light dark">
	<title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
	style="min-width:320px; ">
	<table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
		style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
		<tbody>
			<tr>
				<td height="1" style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
							color-scheme: light dark;
							supported-color-schemes: light dark;
						}

						html {
							-webkit-text-size-adjust: none;
							-ms-text-size-adjust: none;
							-webkit-text-resize: 100%;
							text-resize: 100%;
						}

						* {
							outline: none;
						}

						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}

						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}

						@media (prefers-color-scheme: dark) {
							.btn {
								color: #ffffff !important;
							}

							.title {
								color: #ffffff !important;
							}

							.bg {
								background: #dddddd !important;
							}

							.mainbg {
								background: #ffffff !important;
							}

							.main-title {
								color: #e0e0e0 !important;
							}

							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
						style=" max-width:650px; background-color: #dddddd;">
						<tbody>
							<tr>
								<td colspan="3" height="30" style="padding:0;"></td>
							</tr>
							<tr>
								<td width="15" valign="top" style="padding:0;"></td>
								<td style="padding:0;">
									<table width="100%" cellspacing="0" cellpadding="0" border="0"
										style=" max-width:600px;">
										<tbody>
											<tr>
												<td height="25" style="padding:0;"></td>
											</tr>
											<tr>
												<td height="32" style="padding:0;"></td>
											</tr>
										</tbody>
									</table>
								</td>
								<td width="15" valign="top" style="padding:0;"></td>
							</tr>
							<tr>
								<td width="15" valign="top" style="padding:0;"></td>
								<td style="padding: 0">
									<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
										border="0"
										style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
										<tbody>
											<tr>
												<td valign="top" style="padding:0;">
													<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
														cellpadding="0" border="0"
														style=" max-width:600px; border-radius: 10px">
														<tbody>
															<tr>
																<td align="center"
																	style="padding:0; line-height:0; font-size:0;">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0" style=" max-width:600px;">
																		<tbody>
																			<tr>
																				<td width="30" style="padding:0;"></td>
																				<td style="padding:0;">
																					<table cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																			</tr>
																			<tr>
																				<td height="32" style="padding:0;"></td>
																			</tr>
																			<tr>
																				<td valign="top"
																					style="padding:0; line-height: 22px; text-align: center;">
																					<font class="text" color="#4D5062"
																						face="Arial, Helvetica, sans-serif"
																						size="3"
																						style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
																						Copy and paste the following
																						code in the reset phone form.
																						<br /> The code will expire in
																						{{expires}} minutes. </font>
																				</td>
																			</tr>
																			<tr>
																				<td style="padding:0;">
																					<table width="100%" cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td style="padding:0;">
																									<table width="100%"
																										cellspacing="0"
																										cellpadding="0"
																										border="0">
																										<tbody>
																											<tr>
																												<td height="72"
																													style="padding:0; text-align: center;">
																													{{code}}
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td valign="top"
																					style="padding:0; line-height: 22px;">
																					<font class="text" color="#4D5062"
																						face="Arial, Helvetica, sans-serif"
																						size="3"
																						style="font-size:14px; line-height:22px;letter-spacing: 0em;">
																						Cheers,<br>The Frontegg team</font>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td height="35" style="padding:0;"></td>
											</tr>
											<tr>
												<td valign="top" height="1" style="padding:0; line-height: 0px;">
													<table height="1" width="100%" cellspacing="0" cellpadding="0"
														border="0" style="font-size:0; line-height: 0px;">
														<tbody>
															<tr>
																<td bgcolor="#eef1f7" height="1"
																	style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td style="padding:0; line-height:0; font-size:0;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0"
														style=" max-width:600px;">
														<tbody>
															<tr>
																<td height="22" style="padding:0;"></td>
															</tr>
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;" colspan="3">
																	<table width="100%" cellspacing="0" cellpadding="0"
																		border="0">
																		<tbody>
																			<tr>
																				<td width="50%" style="padding: 0">
																					<table width="100%" cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td valign="top"
																									style="padding:0; line-height: 22px;">
																									<font class="text"
																										color="#4D5062"
																										face="Arial, Helvetica, sans-serif"
																										size="3"
																										style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;">
																										Hatuval 40,
																										Ramat Gan,
																										Israel</font>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																				<td align="right" width="50%"
																					style="padding: 0">
																					<table width="auto" cellspacing="0"
																						cellpadding="0" border="0">
																						<tbody>
																							<tr>
																								<td align="center"
																									width="16"
																									height="16"
																									style="padding: 0;">
																									<a href="http://fb.me/frontegg"
																										style="display: block;"
																										target="_blank">
																										<img style="max-width:16px; height: auto;"
																											border="0"
																											src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
																											width="auto"
																											height="auto"
																											alt="">
																									</a>
																								</td>
																								<td width="15"
																									style="padding:0;">
																								</td>
																								<td align="center"
																									width="16"
																									height="16"
																									style="padding: 0;">
																									<a href="https://twitter.com/Frontegg_"
																										style="display: inline-block; vertical-align: middle;"
																										target="_blank">
																										<img style="max-width:16px; height: auto;"
																											border="0"
																											src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
																											width="auto"
																											height="auto"
																											alt="">
																									</a>
																								</td>
																								<td width="15"
																									style="padding:0;">
																								</td>
																								<td align="center"
																									width="16"
																									height="16"
																									style="padding: 0;">
																									<a href="https://www.linkedin.com/company/frontegg"
																										style="display: block;"
																										target="_blank">

																										<img style="max-width:16px; height: auto;"
																											border="0"
																											src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
																											width="auto"
																											height="auto"
																											alt="">
																									</a>
																								</td>
																								<td width="15"
																									style="padding:0;">
																								</td>
																								<td align="center"
																									width="16"
																									height="16"
																									style="padding: 0;">
																									<a href="mailto:help@frontegg.com"
																										style="display: block;"
																										target="_blank">

																										<img style="max-width:16px; height: auto;"
																											border="0"
																											src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
																											width="auto"
																											height="auto"
																											alt="">
																									</a>
																								</td>
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td height="20" style="padding:0;"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
				<td width="15" valign="top" style="padding:0;"></td>
			</tr>
			<tr>
				<td colspan="3" height="30" style="padding:0;"></td>
			</tr>
		</tbody>
	</table>
	</td>
	</tr>
	</tbody>
	</table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "bulkinvitestotenant" {
  template_type = "BulkInvitesToTenant"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "New Tenants Invitation"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Hello! Please join these accounts by clicking on the button below
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        You Have Been
                                                                                                        Invited To
                                                                                                        {{metadata.tenantName}}
                                                                                                        account </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        Joining this
                                                                                                        account will add
                                                                                                        you also to
                                                                                                        {{metadata.subtenantsList}}
                                                                                                        under this
                                                                                                        account.</font>
                                                                                                </td>
                                                                                            </tr>

                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <table
                                                                                                                        width="100%"
                                                                                                                        cellspacing="0"
                                                                                                                        cellpadding="0"
                                                                                                                        border="0">
                                                                                                                        <tbody>
                                                                                                                            <tr>
                                                                                                                                <td height="46"
                                                                                                                                    style="padding:0">
                                                                                                                                    <div
                                                                                                                                        class="btn">
                                                                                                                                        <font
                                                                                                                                            face="Arial, sans-serif"
                                                                                                                                            size="1"
                                                                                                                                            color="#ffffff"
                                                                                                                                            style="font-size:16px; font-weight:normal; vertical-align:middle;">
                                                                                                                                            <a href="{{redirectURL}}"
                                                                                                                                                class="btn"
                                                                                                                                                target="_blank"
                                                                                                                                                style="min-width: 145px; background:#6F7DFF; display:inline-block; text-align: center;  text-decoration:none; color: #ffffff; font-weight:normal; vertical-align:middle; line-height:46px; border-radius: 4px;">
                                                                                                                                                &nbsp;Join
                                                                                                                                                &nbsp;<i
                                                                                                                                                    style="vertical-align:middle;">
                                                                                                                                                    <img style="max-width:12px; height: auto;"
                                                                                                                                                        border="0"
                                                                                                                                                        src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/arr.png"
                                                                                                                                                        width="auto"
                                                                                                                                                        height="auto"
                                                                                                                                                        alt="">
                                                                                                                                                </i>
                                                                                                                                            </a>
                                                                                                                                        </font>
                                                                                                                                    </div>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </tbody>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">
                                                                                                        If that doesn’t
                                                                                                        work, copy and
                                                                                                        paste the
                                                                                                        following link
                                                                                                        into your
                                                                                                        browser:</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        <a href="{{redirectURL}}
                                                                                                            style="font-size:14px; line-height:22px;letter-spacing: 0em; color: #3789DC;">{{redirectURL}}</a>
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="25"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Cheers,<br>The Frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = "https://app-b5ukarv2uvoo.us.frontegg.com/oauth/account/invitation/accept"
  active        = false
}

resource "frontegg_email_template" "mfaenroll" {
  template_type = "MFAEnroll"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Multi-factor authentication enabled"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Multi-factor authentication now enabled for your account
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        Your account is now protected by multi-factor authentication. You may be asked to log in with two forms of authentication in the future.
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this wasn't you, please seek help from an admin.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this was you, you can ignore this message.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>



                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "mfaunenroll" {
  template_type = "MFAUnenroll"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Multi-factor authentication disabled"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Multi-factor authentication now disabled for your account
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        Multi-factor authentication on your account has been disabled.
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this wasn't you, please re-enroll in MFA immediately.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this was you, you can ignore this message.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>



                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = true
}

resource "frontegg_email_template" "newmfamethod" {
  template_type = "NewMFAMethod"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "New MFA method added to account"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    A new MFA method was registered in your account
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        We just want to let you know that a new MFA method was registered in your account.
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this wasn't you, you should immediately reconfigure MFA.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this was you, you can ignore this message.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>



                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "mfarecoverycode" {
  template_type = "MFARecoveryCode"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Recovery code used to access your account"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Recovery code was used to access your account
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        We want to let you know that a recovery code was used to access your account.
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this wasn't you, you should immediately reconfigure your MFA.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this was you, you can ignore this message.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>



                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "removemfamethod" {
  template_type = "RemoveMFAMethod"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "MFA method removed"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    An MFA method was removed from your account
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                        @media (prefers-color-scheme: dark) {
                            .btn {
                                color: #ffffff !important;
                            }

                            .title {
                                color: #ffffff !important;
                            }

                            .bg {
                                background: #dddddd !important;
                            }

                            .mainbg {
                                background: #ffffff !important;
                            }

                            .main-title {
                                color: #e0e0e0 !important;
                            }

                            .text {
                                color: #e0e0e0 !important;
                            }
                        }
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        We just want to let you know that an MFA method was removed from your account.
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this wasn't you, you should immediately reconfigure your MFA.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                                        If this was you, you can ignore this message.
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>



                                                                                            <tr>
                                                                                                <td height="23"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "emailverification" {
  template_type = "EmailVerification"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Verify your email address"
  html_template = <<-EOT
`
<html>
	<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
		Welcome! Please verify your email address by clicking on the button below
	</div>
	<head>
		<meta name="viewport" content="width=device-width, initial scale=1.0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="color-scheme" content="light dark">
		<meta name="supported-color-schemes" content="light dark">
		<title>Frontegg</title>
	</head>
	<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0" style="min-width:320px; ">
	<table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0" style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
		<tbody><tr>
			<td height="1" style="padding:0; line-height: 0;">
				<style type="text/css">
					@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

					:root {
						color-scheme: light dark;
						supported-color-schemes: light dark;
					}

					html { -webkit-text-size-adjust:none;
						-ms-text-size-adjust: none;
						-webkit-text-resize: 100%;
						text-resize: 100%;}
					*{outline:none;}
					.btn {
						font-family: 'Manrope', Arial, Helvetica, sans-serif;
						font-weight: 700;
					}

					.main-title {
						font-family: 'Manrope', Arial, Helvetica, sans-serif;
						font-weight: 800;
					}
					.text {
						font-family: 'Manrope', Arial, Helvetica, sans-serif;
						font-weight: 400;
					}
					@media (prefers-color-scheme: dark) {
						.btn {
							color: #ffffff !important;
						}
						.title {
							color: #ffffff !important;
						}
						.bg {
							background: #dddddd !important;
						}
						.mainbg {
							background: #ffffff!important;
						}
						.main-title {
							color: #e0e0e0 !important;
						}
						.text {
							color: #e0e0e0 !important;
						}
					}
				</style>
			</td>
		</tr>
		<tr>
			<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
				<table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0" style=" max-width:650px; background-color: #dddddd;">
					<tbody><tr>
						<td colspan="3" height="30" style="padding:0;"></td>
					</tr>
					<tr>
						<td width="15" valign="top" style="padding:0;"></td>
						<td style="padding:0;">
							<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
								<tbody><tr>
									<td height="25" style="padding:0;"></td>
								</tr>
								<tr>
									<td height="32" style="padding:0;"></td>
								</tr>
								</tbody></table>
						</td>
						<td width="15" valign="top" style="padding:0;"></td>
					</tr>
					<tr>
						<td width="15" valign="top" style="padding:0;"></td>
						<td style="padding: 0">
							<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
								<tbody><tr>
									<td valign="top" style="padding:0;">
										<table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; border-radius: 10px">
											<tbody><tr>
												<td height="23" style="padding:0;"></td>
											</tr>
											<tr>
												<td align="center" style="padding:0; line-height:0; font-size:0;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
														<tbody><tr>
															<td height="17" style="padding:0;"></td>
														</tr>
														</tbody></table>
												</td>
											</tr>
											<tr>
												<td align="center" style="padding:0; line-height:0; font-size:0;">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
														<tbody><tr>
															<td width="30" style="padding:0;"></td>
															<td style="padding:0;">
																<table cellspacing="0" cellpadding="0" border="0">
																	<tbody><tr>
																		<td valign="top" style="padding:0; line-height: 40px;">
																			<font class="main-title" color="#393C4F" face="Arial, Helvetica, sans-serif" size="3" style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">Verify your email address</font>
																		</td>
																	</tr>
																	<tr>
																		<td height="32" style="padding:0;"></td>
																	</tr>
																	<tr>
																		<td valign="top" style="padding:0; line-height: 22px;">
																			<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">Click below to verify your email.</font>
																		</td>
																	</tr>
																	<tr>
																		<td height="28" style="padding:0;"></td>
																	</tr>
																	<tr>
																		<td style="padding:0;">
																			<table width="100%" cellspacing="0" cellpadding="0" border="0">
																				<tbody><tr>
																					<td style="padding:0;">
																						<table width="100%" cellspacing="0" cellpadding="0" border="0">
																							<tbody><tr>
																								<td height="46" style="padding:0">
																									<div class="btn">
																										<font face="Arial, sans-serif" size="1" color="#ffffff" style="font-size:16px; font-weight:normal; vertical-align:middle;">
																											<a href="{{redirectURL}}" class="btn" target="_blank" style="min-width: 145px; background:#000000; display:inline-block; text-align: center;  text-decoration:none; color: #ffffff; font-weight:normal; vertical-align:middle; line-height:46px; border-radius: 4px;">
																												&nbsp;&nbsp;Verify email &nbsp;<i style="vertical-align:middle;">
																												<img style="max-width:12px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/arr.png" width="auto" height="auto" alt="">&nbsp;
																											</i>
																											</a>
																										</font>
																									</div>
																								</td>
																							</tr>
																							</tbody></table>
																					</td>
																				</tr>
																				</tbody></table>
																		</td>
																	</tr>
																	<tr>
																		<td height="23" style="padding:0;"></td>
																	</tr>
																	<tr>
																		<td valign="top" style="padding:0; line-height: 22px;">
																			<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: -0.005em;">If that doesn’t work, copy and paste the following link into your browser:</font>
																		</td>
																	</tr>
																	<tr>
																		<td height="30" style="padding:0;"></td>
																	</tr>
																	<tr>
																		<td valign="top" style="padding:0; line-height: 22px;">
																			<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;"><a href="{{redirectURL}}" style="font-size:14px; line-height:22px;letter-spacing: 0em; color: #3789DC;">{{redirectURL}}</a></font>
																		</td>
																	</tr>
																	<tr>
																		<td height="25" style="padding:0;"></td>
																	</tr>
																	<tr>
																		<td valign="top" style="padding:0; line-height: 22px;">
																			<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;">Thanks!</font>
																		</td>
																	</tr>
																	</tbody></table>
															</td>
															<td width="30" style="padding:0;"></td>
														</tr>
														</tbody></table>
												</td>
											</tr>

											<tr>
												<td height="20" style="padding:0;"></td>
											</tr>
											</tbody></table>
									</td>
								</tr>
								</tbody></table>
						</td>
						<td width="15" valign="top" style="padding:0;"></td>
					</tr>
					<tr>
						<td colspan="3" height="30" style="padding:0;"></td>
					</tr>
					</tbody></table>
			</td>
		</tr>
		</tbody></table>
</body></html>

`

EOT
  redirect_url  = "https://app-b5ukarv2uvoo.us.frontegg.com/oauth/account/verify-email"
  active        = false
}

resource "frontegg_email_template" "bruteforceprotection" {
  template_type = "BruteForceProtection"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Multiple Login Attempts with Incorrect Password"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Multiple Login Attempts with Incorrect Password
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                      
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        We identified multiple unsuccessful login attempts using an incorrect password. Here are the details of the last event:
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
 Timestamp: {{metadata.timestamp}} <br>
                IP Address: {{metadata.ipAddress}} <br>
                User agent: {{metadata.userAgent}}                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>


                                          <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "suspiciousip" {
  template_type = "SuspiciousIP"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Suspicious IP Activity Detected"
  html_template = <<-EOT
<html>
	<div
		class='preheader'
		style='display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;'
	>
		Suspicious IP Activity Detected
	</div>
	<head>
		<meta name='viewport' content='width=device-width, initial scale=1.0' />
		<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
		<meta name='color-scheme' content='light dark' />
		<meta name='supported-color-schemes' content='light dark' />
		<title>Frontegg</title>
	</head>

	<body
		class='bg'
		marginheight='0'
		bgcolor='#dddddd'
		marginwidth='0'
		leftmargin='0'
		topmargin='0'
		style='min-width:320px; '
	>
		<table
			class='bg'
			width='100%'
			bgcolor='#dddddd'
			cellspacing='0'
			cellpadding='0'
			border='0'
			style='color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;'
		>
			<tbody>
				<tr>
					<td height='1' style='padding:0; line-height: 0;'>
						<style type='text/css'>
							@import
							url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap'); :root
							{ color-scheme: light dark; supported-color-schemes: light dark; } html {
							-webkit-text-size-adjust: none; -ms-text-size-adjust: none; -webkit-text-resize: 100%;
							text-resize: 100%; } * { outline: none; } .btn { font-family: 'Manrope', Arial, Helvetica,
							sans-serif; font-weight: 700; } .main-title { font-family: 'Manrope', Arial, Helvetica,
							sans-serif; font-weight: 800; } .text { font-family: 'Manrope', Arial, Helvetica,
							sans-serif; font-weight: 400; }

						</style>
					</td>
				</tr>
				<tr>
					<td class='bg' align='center' style='padding:0; line-height:0; font-size:0;'>
						<table
							class='bg'
							bgcolor='#dddddd'
							cellspacing='0'
							cellpadding='0'
							border='0'
							style=' max-width:650px; background-color: #dddddd;'
						>
							<tbody>
								<tr>
									<td colspan='3' height='30' style='padding:0;'></td>
								</tr>
								<tr>
									<td width='15' valign='top' style='padding:0;'></td>
									<td style='padding:0;'>
										<table
											width='100%'
											cellspacing='0'
											cellpadding='0'
											border='0'
											style=' max-width:600px;'
										>
											<tbody>
												<tr>
													<td height='25' style='padding:0;'></td>
												</tr>
												<tr>
													<td height='32' style='padding:0;'></td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width='15' valign='top' style='padding:0;'></td>
								</tr>
								<tr>
									<td width='15' valign='top' style='padding:0;'></td>
									<td style='padding: 0'>
										<table
											class='mainbg'
											bgcolor='#ffffff'
											width='100%'
											cellspacing='0'
											cellpadding='0'
											border='0'
											style=' max-width:600px; background-color: #ffffff; border-radius: 10px;'
										>
											<tbody>
												<tr>
													<td valign='top' style='padding:0;'>
														<table
															class='mainbg'
															bgcolor='#ffffff'
															width='100%'
															cellspacing='0'
															cellpadding='0'
															border='0'
															style=' max-width:600px; border-radius: 10px'
														>
															<tbody>
																<tr>
																	<td height='23' style='padding:0;'></td>
																</tr>
																<tr>
																	<td
																		align='center'
																		style='padding:0; line-height:0; font-size:0;'
																	>
																		<table
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style=' max-width:600px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						height='17'
																						style='padding:0;'
																					></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td
																		align='center'
																		style='padding:0; line-height:0; font-size:0;'
																	>
																		<table
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style=' max-width:600px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																					<td style='padding:0;'>
																						<table
																							cellspacing='0'
																							cellpadding='0'
																							border='0'
																						>
																							<tbody>
																								<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 40px;'
																									>
																										<font
																											class='main-title'
																											color='#393C4F'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold'
																										>
																											Hi
																											{{name}},
																										</font>
																									</td>
																								</tr>
																								<tr>
																									<td
																										height='32'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 22px;'
																									>
																										<font
																											class='text'
																											color='#4D5062'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																										>
																											We
																											identified
																											{{metadata.numberOfEvents}}
																											unusual
																											login
																											attempt/s
																											from a
																											suspicious
																											IP. Here are
																											the details
																											of the last
																											event:
																										</font>
																									</td>
																								</tr>
																								<tr>
																									<td
																										height='28'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										style='padding:0;'
																									>
																										<table
																											width='100%'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															IP
																															Address:
																															{{metadata.ipAddress}}
																															<br
																															/>
																															Timestamp:
																															{{metadata.timestamp}}
																															<br
																															/>
																															User
																															agent:
																															{{metadata.userAgent}}
																														</font>
																													</td>
																												</tr>
																											</tbody>
																										</table>
																									</td>
																								</tr>

																								<tr>
																									<td
																										height='28'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										style='padding:0;'
																									>
																										<table
																											width='100%'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															If
																															you
																															recognize
																															this
																															activity
																															and
																															believe
																															it
																															was
																															legitimate,
																															you
																															can
																															disregard
																															this
																															message.
																														</font>
																													</td>
																												</tr>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															However,
																															if
																															you
																															do
																															not
																															recognize
																															this
																															login
																															and
																															suspect
																															unauthorized
																															access,
																															we
																															highly
																															recommend
																															resetting
																															your
																															account
																															password
																															immediately.
																														</font>
																													</td>
																												</tr>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															If
																															you
																															don't
																															have
																															multi-factor
																															authentication
																															enabled
																															on
																															your
																															account
																															yet,
																															we
																															recommend
																															enabling
																															it
																															now.
																														</font>
																													</td>
																												</tr>

																											</tbody>
																										</table>
																									</td>
																								</tr>

																								<tr>
																									<td
																										height='30'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 22px;'
																									>
																										<font
																											class='text'
																											color='#4D5062'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:14px; line-height:22px;letter-spacing: 0em;'
																										>
																											Stay safe,
																											<br />The
																											frontegg
																											team</font>
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height='35' style='padding:0;'></td>
																</tr>
																<tr>
																	<td
																		valign='top'
																		height='1'
																		style='padding:0; line-height: 0px;'
																	>
																		<table
																			height='1'
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style='font-size:0; line-height: 0px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						bgcolor='#eef1f7'
																						height='1'
																						style=' background-color:#eef1f7; padding:0;  line-height: 1px;'
																					>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td style='padding:0; line-height:0; font-size:0;'>
																		<table
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style=' max-width:600px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						height='22'
																						style='padding:0;'
																					></td>
																				</tr>
																				<tr>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																					<td style='padding:0;' colspan='3'>
																						<table
																							width='100%'
																							cellspacing='0'
																							cellpadding='0'
																							border='0'
																						>
																							<tbody>
																								<tr>
																									<td
																										width='50%'
																										style='padding: 0'
																									>
																										<table
																											width='100%'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														valign='top'
																														style='padding:0; line-height: 22px;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;letter-spacing: 0em;'
																														>
																															Hatuval
																															40,
																															Ramat
																															Gan,
																															Israel
																														</font>
																													</td>
																												</tr>
																											</tbody>
																										</table>
																									</td>
																									<td
																										align='right'
																										width='50%'
																										style='padding: 0'
																									>
																										<table
																											width='auto'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='http://fb.me/frontegg'
																															style='display: block;'
																															target='_blank'
																														>
																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																													<td
																														width='15'
																														style='padding:0;'
																													>
																													</td>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='https://twitter.com/Frontegg_'
																															style='display: inline-block; vertical-align: middle;'
																															target='_blank'
																														>
																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																													<td
																														width='15'
																														style='padding:0;'
																													>
																													</td>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='https://www.linkedin.com/company/frontegg'
																															style='display: block;'
																															target='_blank'
																														>

																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																													<td
																														width='15'
																														style='padding:0;'
																													>
																													</td>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='mailto:help@frontegg.com'
																															style='display: block;'
																															target='_blank'
																														>

																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																												</tr>
																											</tbody>
																										</table>
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height='20' style='padding:0;'></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width='15' valign='top' style='padding:0;'></td>
								</tr>
								<tr>
									<td colspan='3' height='30' style='padding:0;'></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>

	</body>

</html>
EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "mfaotc" {
  template_type = "MFAOTC"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Login Challenge - Verification Code"
  html_template = <<-EOT
<html>
	<div class="preheader"
    style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Login Challenge - Verification Code</div>
	<head>
		<meta name="viewport" content="width=device-width, initial scale=1.0"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="color-scheme" content="light dark">
		<meta name="supported-color-schemes" content="light dark">
		<title>Frontegg</title>
	</head>
	<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"  style="min-width:320px; ">
		<table class="bg" width="100%" bgcolor="#dddddd" class="body" cellspacing="0" cellpadding="0" border="0" style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
			<tr>
				<td height="1"  style="padding:0; line-height: 0;">
					<style type="text/css">
						@import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

						:root {
						  color-scheme: light dark;
						  supported-color-schemes: light dark;
						}

						html { -webkit-text-size-adjust:none;
						 -ms-text-size-adjust: none;
						 -webkit-text-resize: 100%;
						  text-resize: 100%;}
						*{outline:none;}
						.btn {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 700;
						}

						.main-title {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 800;
						}
						.text {
							font-family: 'Manrope', Arial, Helvetica, sans-serif;
							font-weight: 400;
						}
						 @media (prefers-color-scheme: dark) {
						    .btn {
								color: #ffffff !important;
							}
							.title {
								color: #ffffff !important;
							}
							.bg {
								background: #dddddd !important;
							}
							.mainbg {
								background: #ffffff!important;
							}
							.main-title {
								color: #e0e0e0 !important;
							}
							.text {
								color: #e0e0e0 !important;
							}
						}
					</style>
				</td>
			</tr>
			<tr>
				<td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
					<table class="bg" bgcolor="#dddddd" class="body" cellspacing="0" cellpadding="0" border="0" style=" max-width:650px; background-color: #dddddd;">
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding:0;">
								<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
									<tr>
										<td height="25" style="padding:0;"></td>
									</tr>
									<tr>
										<td height="32" style="padding:0;"></td>
									</tr>
								</table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td width="15" valign="top" style="padding:0;"></td>
							<td style="padding: 0">
								<table class="mainbg"  bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
									<tr>
										<td valign="top" style="padding:0;">
											<table class="mainbg" bgcolor="#ffffff" class="body"  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px; border-radius: 10px">
												<tr>
													<td height="23" style="padding:0;"></td>
												</tr>

												<tr>
													<td align="center" style="padding:0; line-height:0; font-size:0;">
														<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;">
																	<table cellspacing="0" cellpadding="0" border="0">
																	    	<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 40px;'
																									>
																										<font
																											class='main-title'
																											color='#393C4F'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold'
																										>
																											Hi
																											{{name}},
																										</font>
																									</td>
																								</tr>
																								<tr>
																									<td
																										height='32'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                    You are required to login with the following code.<br/>
                                                                                    Copy and paste the following code in the login form. The code will expire in 5 minutes
                                                                                </font>
																			</td>
																		</tr>
                                                                      <tr>
																			<td height="32" style="padding:0;"></td>
																		</tr>
																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;text-align:center;">
																				<font class="text"  color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">{{code}}</font>
																			</td>
																		</tr>
																		<tr>
																			<td height="28" style="padding:0;"></td>
																		</tr>

																		<tr>
																			<td valign="top" style="padding:0; line-height: 22px;">
																				<font class="text"  color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em;">Cheers,<br>The Frontegg team</font>
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td  height="35" style="padding:0;"></td>
												</tr>
												<tr>
													<td valign="top" height="1" style="padding:0; line-height: 0px;">
														<table height="1" width="100%" cellspacing="0" cellpadding="0" border="0" style="font-size:0; line-height: 0px;">
															<tr>
																<td bgcolor="#eef1f7" height="1" style=" background-color:#eef1f7; padding:0;  line-height: 1px;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td  style="padding:0; line-height:0; font-size:0;">
														<table  width="100%" cellspacing="0" cellpadding="0" border="0" style=" max-width:600px;">
															<tr>
																<td height="22" style="padding:0;"></td>
															</tr>
															<tr>
																<td width="30" style="padding:0;"></td>
																<td style="padding:0;" colspan="3">
																	<table width="100%" cellspacing="0" cellpadding="0" border="0" >
																		<tr>
																			<td width="50%" style="padding: 0">
																				<table width="100%" cellspacing="0" cellpadding="0" border="0" >
																					<tr>
																						<td valign="top" style="padding:0; line-height: 22px;">
																							<font class="text" color="#4D5062" face="Arial, Helvetica, sans-serif" size="3" style="font-size:14px; line-height:22px;letter-spacing: 0em; white-space: nowrap;"">Hatuval 40, Ramat Gan, Israel</font>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td align="right" width="50%" style="padding: 0">
																				<table width="auto" cellspacing="0" cellpadding="0" border="0" >
																					<tr>
																						<td  align="center"  width="16"  height="16" style="padding: 0;">
																							<a href="http://fb.me/frontegg" style="display: block;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center"  width="16"  height="16"style="padding: 0;">
																							<a href="https://twitter.com/Frontegg_" style="display: inline-block; vertical-align: middle;" target="_blank">
																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center" width="16"  height="16" style="padding: 0;">
																							<a href="https://www.linkedin.com/company/frontegg"style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																						<td width="15" style="padding:0;"></td>
																						<td  align="center" width="16"  height="16" style="padding: 0;">
																							<a href="mailto:help@frontegg.com"style="display: block;" target="_blank">

																								<img style="max-width:16px; height: auto;" border="0" src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png" width="auto" height="auto" alt="" />
																							</a>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="30" style="padding:0;"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height="20" style="padding:0;"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="15" valign="top" style="padding:0;"></td>
						</tr>
						<tr>
							<td colspan="3" height="30" style="padding:0;"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>





EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "impossibletravel" {
  template_type = "ImpossibleTravel"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Suspicious Login Detected - Impossible Travel"
  html_template = <<-EOT
<html>
	<div
		class='preheader'
		style='display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;'
	>
		Suspicious Login Detected - Impossible Travel
	</div>
	<head>
		<meta name='viewport' content='width=device-width, initial scale=1.0' />
		<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
		<meta name='color-scheme' content='light dark' />
		<meta name='supported-color-schemes' content='light dark' />
		<title>Frontegg</title>
	</head>

	<body
		class='bg'
		marginheight='0'
		bgcolor='#dddddd'
		marginwidth='0'
		leftmargin='0'
		topmargin='0'
		style='min-width:320px; '
	>
		<table
			class='bg'
			width='100%'
			bgcolor='#dddddd'
			cellspacing='0'
			cellpadding='0'
			border='0'
			style='color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;'
		>
			<tbody>
				<tr>
					<td height='1' style='padding:0; line-height: 0;'>
						<style type='text/css'>
							@import
							url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap'); :root
							{ color-scheme: light dark; supported-color-schemes: light dark; } html {
							-webkit-text-size-adjust: none; -ms-text-size-adjust: none; -webkit-text-resize: 100%;
							text-resize: 100%; } * { outline: none; } .btn { font-family: 'Manrope', Arial, Helvetica,
							sans-serif; font-weight: 700; } .main-title { font-family: 'Manrope', Arial, Helvetica,
							sans-serif; font-weight: 800; } .text { font-family: 'Manrope', Arial, Helvetica,
							sans-serif; font-weight: 400; }

						</style>
					</td>
				</tr>
				<tr>
					<td class='bg' align='center' style='padding:0; line-height:0; font-size:0;'>
						<table
							class='bg'
							bgcolor='#dddddd'
							cellspacing='0'
							cellpadding='0'
							border='0'
							style=' max-width:650px; background-color: #dddddd;'
						>
							<tbody>
								<tr>
									<td colspan='3' height='30' style='padding:0;'></td>
								</tr>
								<tr>
									<td width='15' valign='top' style='padding:0;'></td>
									<td style='padding:0;'>
										<table
											width='100%'
											cellspacing='0'
											cellpadding='0'
											border='0'
											style=' max-width:600px;'
										>
											<tbody>
												<tr>
													<td height='25' style='padding:0;'></td>
												</tr>
												<tr>
													<td height='32' style='padding:0;'></td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width='15' valign='top' style='padding:0;'></td>
								</tr>
								<tr>
									<td width='15' valign='top' style='padding:0;'></td>
									<td style='padding: 0'>
										<table
											class='mainbg'
											bgcolor='#ffffff'
											width='100%'
											cellspacing='0'
											cellpadding='0'
											border='0'
											style=' max-width:600px; background-color: #ffffff; border-radius: 10px;'
										>
											<tbody>
												<tr>
													<td valign='top' style='padding:0;'>
														<table
															class='mainbg'
															bgcolor='#ffffff'
															width='100%'
															cellspacing='0'
															cellpadding='0'
															border='0'
															style=' max-width:600px; border-radius: 10px'
														>
															<tbody>
																<tr>
																	<td height='23' style='padding:0;'></td>
																</tr>
																<tr>
																	<td
																		align='center'
																		style='padding:0; line-height:0; font-size:0;'
																	>
																		<table
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style=' max-width:600px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						height='17'
																						style='padding:0;'
																					></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td
																		align='center'
																		style='padding:0; line-height:0; font-size:0;'
																	>
																		<table
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style=' max-width:600px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																					<td style='padding:0;'>
																						<table
																							cellspacing='0'
																							cellpadding='0'
																							border='0'
																						>
																							<tbody>
																								<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 40px;'
																									>
																										<font
																											class='main-title'
																											color='#393C4F'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold'
																										>
																											Hi
																											{{name}},
																										</font>
																									</td>
																								</tr>
																								<tr>
																									<td
																										height='32'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 22px;'
																									>
																										<font
																											class='text'
																											color='#4D5062'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																										>
																											We
																											identified
																											{{metadata.numberOfEvents}}
																											unusual
																											login
																											attempt/s
																											that was flagged as "impossible travel," which indicates that your account was accessed from two geographically distant locations within an implausible time frame. Here are the details of the last event:
																										</font>
																									</td>
																								</tr>
																								<tr>
																									<td
																										height='28'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										style='padding:0;'
																									>
																										<table
																											width='100%'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															Timestamp of the first login: {{metadata.firstLoginTimestamp}}
																															<br
																															/>
																															Location of the first login: {{metadata.firstLoginLocation}}
																															<br
																															/>
																															IP Address of the first login: {{metadata.firstIpAddress}}
																															<br/>
																															Timestamp of the second login: {{metadata.secondLoginTimestamp}}
																															<br/>
																															Location of the second login: {{metadata.secondLoginLocation}}
																															<br/>
																															IP Address of the second login: {{metadata.secondIpAddress}}
																														</font>
																													</td>
																												</tr>
																											</tbody>
																										</table>
																									</td>
																								</tr>

																								<tr>
																									<td
																										height='28'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										style='padding:0;'
																									>
																										<table
																											width='100%'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															If
																															you
																															recognize
																															this
																															activity
																															and
																															believe
																															it
																															was
																															legitimate,
																															you
																															can
																															disregard
																															this
																															message.
																														</font>
																													</td>
																												</tr>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															However,
																															if
																															you
																															do
																															not
																															recognize
																															this
																															login
																															and
																															suspect
																															unauthorized
																															access,
																															we
																															highly
																															recommend
																															resetting
																															your
																															account
																															password
																															immediately.
																														</font>
																													</td>
																												</tr>
																												<tr>
																													<td
																														style='padding:0;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;  letter-spacing: -0.005em;'
																														>
																															If
																															you
																															don't
																															have
																															multi-factor
																															authentication
																															enabled
																															on
																															your
																															account
																															yet,
																															we
																															recommend
																															enabling
																															it
																															now.
																														</font>
																													</td>
																												</tr>

																											</tbody>
																										</table>
																									</td>
																								</tr>

																								<tr>
																									<td
																										height='30'
																										style='padding:0;'
																									>
																									</td>
																								</tr>
																								<tr>
																									<td
																										valign='top'
																										style='padding:0; line-height: 22px;'
																									>
																										<font
																											class='text'
																											color='#4D5062'
																											face='Arial, Helvetica, sans-serif'
																											size='3'
																											style='font-size:14px; line-height:22px;letter-spacing: 0em;'
																										>
																											Stay safe,
																											<br />The
																											frontegg
																											team</font>
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height='35' style='padding:0;'></td>
																</tr>
																<tr>
																	<td
																		valign='top'
																		height='1'
																		style='padding:0; line-height: 0px;'
																	>
																		<table
																			height='1'
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style='font-size:0; line-height: 0px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						bgcolor='#eef1f7'
																						height='1'
																						style=' background-color:#eef1f7; padding:0;  line-height: 1px;'
																					>
																					</td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td style='padding:0; line-height:0; font-size:0;'>
																		<table
																			width='100%'
																			cellspacing='0'
																			cellpadding='0'
																			border='0'
																			style=' max-width:600px;'
																		>
																			<tbody>
																				<tr>
																					<td
																						height='22'
																						style='padding:0;'
																					></td>
																				</tr>
																				<tr>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																					<td style='padding:0;' colspan='3'>
																						<table
																							width='100%'
																							cellspacing='0'
																							cellpadding='0'
																							border='0'
																						>
																							<tbody>
																								<tr>
																									<td
																										width='50%'
																										style='padding: 0'
																									>
																										<table
																											width='100%'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														valign='top'
																														style='padding:0; line-height: 22px;'
																													>
																														<font
																															class='text'
																															color='#4D5062'
																															face='Arial, Helvetica, sans-serif'
																															size='3'
																															style='font-size:14px; line-height:22px;letter-spacing: 0em;'
																														>
																															Hatuval
																															40,
																															Ramat
																															Gan,
																															Israel
																														</font>
																													</td>
																												</tr>
																											</tbody>
																										</table>
																									</td>
																									<td
																										align='right'
																										width='50%'
																										style='padding: 0'
																									>
																										<table
																											width='auto'
																											cellspacing='0'
																											cellpadding='0'
																											border='0'
																										>
																											<tbody>
																												<tr>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='http://fb.me/frontegg'
																															style='display: block;'
																															target='_blank'
																														>
																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																													<td
																														width='15'
																														style='padding:0;'
																													>
																													</td>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='https://twitter.com/Frontegg_'
																															style='display: inline-block; vertical-align: middle;'
																															target='_blank'
																														>
																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																													<td
																														width='15'
																														style='padding:0;'
																													>
																													</td>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='https://www.linkedin.com/company/frontegg'
																															style='display: block;'
																															target='_blank'
																														>

																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																													<td
																														width='15'
																														style='padding:0;'
																													>
																													</td>
																													<td
																														align='center'
																														width='16'
																														height='16'
																														style='padding: 0;'
																													>
																														<a
																															href='mailto:help@frontegg.com'
																															style='display: block;'
																															target='_blank'
																														>

																															<img
																																style='max-width:16px; height: auto;'
																																border='0'
																																src='https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png'
																																width='auto'
																																height='auto'
																																alt=''
																															/>
																														</a>
																													</td>
																												</tr>
																											</tbody>
																										</table>
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</td>
																					<td
																						width='30'
																						style='padding:0;'
																					></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height='20' style='padding:0;'></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width='15' valign='top' style='padding:0;'></td>
								</tr>
								<tr>
									<td colspan='3' height='30' style='padding:0;'></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>

	</body>

</html>


EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "botdetection" {
  template_type = "BotDetection"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "Suspicious Login Attempt of Bot was Detected"
  html_template = <<-EOT
<html>
<div class="preheader" style="display: none; max-width: 0; max-height: 0; overflow: hidden; font-size: 1px; line-height: 1px; color: #fff; opacity: 0;">
    Suspicious Login Attempt of Bot was Detected
</div>
<head>
    <meta name="viewport" content="width=device-width, initial scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="color-scheme" content="light dark">
    <meta name="supported-color-schemes" content="light dark">
    <title>Frontegg</title>
</head>

<body class="bg" marginheight="0" bgcolor="#dddddd" marginwidth="0" leftmargin="0" topmargin="0"
    style="min-width:320px; ">
    <table class="bg" width="100%" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
        style="color:#7c7474; background-color: #dddddd;  font:14px/20px  Arial, Helvetica, sans-serif;">
        <tbody>
            <tr>
                <td height="1" style="padding:0; line-height: 0;">
                    <style type="text/css">
                        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@500;700;800&display=swap');

                        :root {
                            color-scheme: light dark;
                            supported-color-schemes: light dark;
                        }

                        html {
                            -webkit-text-size-adjust: none;
                            -ms-text-size-adjust: none;
                            -webkit-text-resize: 100%;
                            text-resize: 100%;
                        }

                        * {
                            outline: none;
                        }

                        .btn {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 700;
                        }

                        .main-title {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 800;
                        }

                        .text {
                            font-family: 'Manrope', Arial, Helvetica, sans-serif;
                            font-weight: 400;
                        }

                      
                    </style>
                </td>
            </tr>
            <tr>
                <td class="bg" align="center" style="padding:0; line-height:0; font-size:0;">
                    <table class="bg" bgcolor="#dddddd" cellspacing="0" cellpadding="0" border="0"
                        style=" max-width:650px; background-color: #dddddd;">
                        <tbody>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding:0;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0"
                                        style=" max-width:600px;">
                                        <tbody>
                                            <tr>
                                                <td height="25" style="padding:0;"></td>
                                            </tr>
                                            <tr>
                                                <td height="32" style="padding:0;"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td width="15" valign="top" style="padding:0;"></td>
                                <td style="padding: 0">
                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0" cellpadding="0"
                                        border="0"
                                        style=" max-width:600px; background-color: #ffffff; border-radius: 10px;">
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="padding:0;">
                                                    <table class="mainbg" bgcolor="#ffffff" width="100%" cellspacing="0"
                                                        cellpadding="0" border="0"
                                                        style=" max-width:600px; border-radius: 10px">
                                                        <tbody>
                                                            <tr>
                                                                <td height="23" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="17" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"
                                                                    style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;">
                                                                                    <table cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 40px;">
                                                                                                    <font
                                                                                                        class="main-title"
                                                                                                        color="#393C4F"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:32px; line-height:40px;letter-spacing: 0.01em; font-weight: bold">
                                                                                                        Hi {{name}},
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="32"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
                                                                                                        We have detected a suspicious {{metadata.numberOfEvents}} login attempt/s to your account that appears to be from a bot in the last hour.
                                                                                                        Here are the details of the last event:
                                                                                                    </font>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td height="28"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="padding:0;">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td
                                                                                                                    style="padding:0;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;  letter-spacing: -0.005em;">
 Timestamp: {{metadata.timestamp}} <br>
                IP Address: {{metadata.ipAddress}} <br>
                User agent: {{metadata.userAgent}}                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr
                                                                                                                height="28">
                                                                                                            </tr>

                                                                                                            
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>


                                          <tr>
                                                                                                <td height="30"
                                                                                                    style="padding:0;">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td valign="top"
                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                    <font class="text"
                                                                                                        color="#4D5062"
                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                        size="3"
                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                        Stay safe,
                                                                                                        <br>The frontegg
                                                                                                        team</font>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="35" style="padding:0;"></td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" height="1"
                                                                    style="padding:0; line-height: 0px;">
                                                                    <table height="1" width="100%" cellspacing="0"
                                                                        cellpadding="0" border="0"
                                                                        style="font-size:0; line-height: 0px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td bgcolor="#eef1f7" height="1"
                                                                                    style=" background-color:#eef1f7; padding:0;  line-height: 1px;">
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:0; line-height:0; font-size:0;">
                                                                    <table width="100%" cellspacing="0" cellpadding="0"
                                                                        border="0" style=" max-width:600px;">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td height="22" style="padding:0;"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="30" style="padding:0;"></td>
                                                                                <td style="padding:0;" colspan="3">
                                                                                    <table width="100%" cellspacing="0"
                                                                                        cellpadding="0" border="0">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="100%"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td valign="top"
                                                                                                                    style="padding:0; line-height: 22px;">
                                                                                                                    <font
                                                                                                                        class="text"
                                                                                                                        color="#4D5062"
                                                                                                                        face="Arial, Helvetica, sans-serif"
                                                                                                                        size="3"
                                                                                                                        style="font-size:14px; line-height:22px;letter-spacing: 0em;">
                                                                                                                        Hatuval
                                                                                                                        40,
                                                                                                                        Ramat
                                                                                                                        Gan,
                                                                                                                        Israel
                                                                                                                    </font>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                                <td align="right"
                                                                                                    width="50%"
                                                                                                    style="padding: 0">
                                                                                                    <table width="auto"
                                                                                                        cellspacing="0"
                                                                                                        cellpadding="0"
                                                                                                        border="0">
                                                                                                        <tbody>
                                                                                                            <tr>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="http://fb.me/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/fb.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://twitter.com/Frontegg_"
                                                                                                                        style="display: inline-block; vertical-align: middle;"
                                                                                                                        target="_blank">
                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/tw.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="https://www.linkedin.com/company/frontegg"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/lin.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                                <td width="15"
                                                                                                                    style="padding:0;">
                                                                                                                </td>
                                                                                                                <td align="center"
                                                                                                                    width="16"
                                                                                                                    height="16"
                                                                                                                    style="padding: 0;">
                                                                                                                    <a href="mailto:help@frontegg.com"
                                                                                                                        style="display: block;"
                                                                                                                        target="_blank">

                                                                                                                        <img style="max-width:16px; height: auto;"
                                                                                                                            border="0"
                                                                                                                            src="https://frontegg.com/wp-content/themes/frontegg/newsletter-images/slack.png"
                                                                                                                            width="auto"
                                                                                                                            height="auto"
                                                                                                                            alt="">
                                                                                                                    </a>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="30" style="padding:0;"></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20" style="padding:0;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="15" valign="top" style="padding:0;"></td>
                            </tr>
                            <tr>
                                <td colspan="3" height="30" style="padding:0;"></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>






</body>

</html>

EOT
  redirect_url  = ""
  active        = false
}

resource "frontegg_email_template" "smsauthenticationenabled" {
  template_type = "SmsAuthenticationEnabled"
  from_address  = "noreply@example.com"
  from_name     = "None"
  subject       = "SMS authentication enabled"
  html_template = <<-EOT
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SMS authentication enabled</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style type="text/css">
      /**
         * Google webfonts. Recommended to include the .woff version for cross-client compatibility.
         */
      @media screen {
        @font-face {
          font-family: 'Source Sans Pro';
          font-style: normal;
          font-weight: 400;
          src: local('Source Sans Pro Regular'), local('SourceSansPro-Regular'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/ODelI1aHBYDBqgeIAH2zlBM0YzuT7MdOe03otPbuUS0.woff) format('woff');
        }

        @font-face {
          font-family: 'Source Sans Pro';
          font-style: normal;
          font-weight: 700;
          src: local('Source Sans Pro Bold'), local('SourceSansPro-Bold'), url(https://fonts.gstatic.com/s/sourcesanspro/v10/toadOcfmlt9b38dHJxOBGFkQc6VGVFSmCnC_l7QZG60.woff) format('woff');
        }
      }

      /**
         * Avoid browser level font resizing.
         * 1. Windows Mobile
         * 2. iOS / OSX
         */
      body,
      table,
      td,
      a {
        -ms-text-size-adjust: 100%;
        /* 1 */
        -webkit-text-size-adjust: 100%;
        /* 2 */
      }

      /**
         * Remove extra space added to tables and cells in Outlook.
         */
      table,
      td {
        mso-table-rspace: 0pt;
        mso-table-lspace: 0pt;
      }

      /**
         * Better fluid images in Internet Explorer.
         */
      img {
        -ms-interpolation-mode: bicubic;
      }

      /**
         * Remove blue links for iOS devices.
         */
      a[x-apple-data-detectors] {
        font-family: inherit !important;
        font-size: inherit !important;
        font-weight: inherit !important;
        line-height: inherit !important;
        color: inherit !important;
        text-decoration: none !important;
      }

      /**
         * Fix centering issues in Android 4.4.
         */
      div[style*="margin: 16px 0;"] {
        margin: 0 !important;
      }

      body {
        width: 100% !important;
        height: 100% !important;
        padding: 0 !important;
        margin: 0 !important;
      }

      /**
         * Collapse table borders to avoid space between cells.
         */
      table {
        border-collapse: collapse !important;
      }

      a {
        color: #1a82e2;
      }

      img {
        height: auto;
        line-height: 100%;
        text-decoration: none;
        border: 0;
        outline: none;
      }
    </style>
  </head>
  <body style="background-color: #e9ecef;">
    <!-- start body -->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <!-- start logo -->
      <tr>
        <td align="center" bgcolor="#e9ecef">
          <!--[if (gte mso 9)|(IE)]>
								<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
									<tr>
										<td align="center" valign="top" width="600">
											<![endif]-->
          <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
            <tr>
              <td align="center" valign="top" style="padding: 36px 24px;">
                <img src="https://fronteggstorageprodus.blob.core.windows.net/public-vendor-assets/f226891e-6a9e-4e21-b5d1-343811cac6ed/assets/logo-ea590fab-dbdb-4113-ab06-cbbaeec29ac4.png" alt="Logo" border="0" width="128" style="display: block; width: 256px; max-width: 256px; min-width: 48px;">
              </td>
            </tr>
          </table>
          <!--[if (gte mso 9)|(IE)]>
											</td>
										</tr>
									</table>
									<![endif]-->
        </td>
      </tr>
      <!-- end logo -->
      <!-- start hero -->
      <tr>
        <td align="center" bgcolor="#e9ecef">
          <!--[if (gte mso 9)|(IE)]>
									<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
										<tr>
											<td align="center" valign="top" width="600">
												<![endif]-->
          <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
            <tr>
              <td align="left" bgcolor="#ffffff" style="padding: 36px 24px 0; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; border-top: 3px solid #d4dadf;">
                <h1>Hi {{name}},</h1>
              </td>
            </tr>
          </table>
          <!--[if (gte mso 9)|(IE)]>
											</td>
										</tr>
									</table>
									<![endif]-->
        </td>
      </tr>
      <!-- end hero -->
      <!-- start copy block -->
      <tr>
        <td align="center" bgcolor="#e9ecef">
          <!--[if (gte mso 9)|(IE)]>
									<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
										<tr>
											<td align="center" valign="top" width="600">
												<![endif]-->
          <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;">
            <!-- start copy -->
            <tr>
              <td align="left" bgcolor="#ffffff" style="padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px;">
                <p style="margin: 0;"> SMS authentication has been successfully enabled for your account. Now you can log in using your phone number. If this wasn't you, please seek help from an admin. If this was you, you can ignore this message. </p>
              </td>
            </tr>
            <!-- end copy -->
            <!-- start copy -->
            <tr>
              <td align="left" bgcolor="#ffffff" style="padding: 24px; font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 24px; border-bottom: 3px solid #d4dadf">
                <p style="margin: 0;">Stay safe, <br> The frontegg team </p>
              </td>
            </tr>
            <!-- end copy -->
          </table>
          <!--[if (gte mso 9)|(IE)]>
												</td>
											</tr>
										</table>
										<![endif]-->
        </td>
      </tr>
      <!-- end copy block -->
      <!-- start footer -->
      <tr>
        <td align="center" bgcolor="#e9ecef" style="padding: 24px;">
          <!--[if (gte mso 9)|(IE)]>
										<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
											<tr>
												<td align="center" valign="top" width="600">
													<![endif]-->
          <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;"></table>
          <!--[if (gte mso 9)|(IE)]>
												</td>
											</tr>
										</table>
										<![endif]-->
        </td>
      </tr>
      <!-- end footer -->
    </table>
    <!-- end body -->
  </body>
</html>
EOT
  redirect_url  = ""
  active        = false
}
