package schema

format_version: "1.0"
provider_schemas: "registry.terraform.io/cloudflare/cloudflare": {
	provider: {
		version: 0
		block: {
			attributes: {
				api_base_path: {
					type:             "string"
					description:      "Configure the base path used by the API client. Alternatively, can be configured using the `CLOUDFLARE_API_BASE_PATH` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				api_client_logging: {
					type:             "bool"
					description:      "Whether to print logs from the API client (using the default log library logger). Alternatively, can be configured using the `CLOUDFLARE_API_CLIENT_LOGGING` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				api_hostname: {
					type:             "string"
					description:      "Configure the hostname used by the API client. Alternatively, can be configured using the `CLOUDFLARE_API_HOSTNAME` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				api_key: {
					type:             "string"
					description:      "The API key for operations. Alternatively, can be configured using the `CLOUDFLARE_API_KEY` environment variable. API keys are [now considered legacy by Cloudflare](https://developers.cloudflare.com/fundamentals/api/get-started/keys/#limitations), API tokens should be used instead. Must provide only one of `api_key`, `api_token`, `api_user_service_key`."
					description_kind: "markdown"
					optional:         true
				}
				api_token: {
					type:             "string"
					description:      "The API Token for operations. Alternatively, can be configured using the `CLOUDFLARE_API_TOKEN` environment variable. Must provide only one of `api_key`, `api_token`, `api_user_service_key`."
					description_kind: "markdown"
					optional:         true
				}
				api_user_service_key: {
					type:             "string"
					description:      "A special Cloudflare API key good for a restricted set of endpoints. Alternatively, can be configured using the `CLOUDFLARE_API_USER_SERVICE_KEY` environment variable. Must provide only one of `api_key`, `api_token`, `api_user_service_key`."
					description_kind: "markdown"
					optional:         true
				}
				email: {
					type:             "string"
					description:      "A registered Cloudflare email address. Alternatively, can be configured using the `CLOUDFLARE_EMAIL` environment variable. Required when using `api_key`. Conflicts with `api_token`."
					description_kind: "markdown"
					optional:         true
				}
				max_backoff: {
					type:             "number"
					description:      "Maximum backoff period in seconds after failed API calls. Alternatively, can be configured using the `CLOUDFLARE_MAX_BACKOFF` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				min_backoff: {
					type:             "number"
					description:      "Minimum backoff period in seconds after failed API calls. Alternatively, can be configured using the `CLOUDFLARE_MIN_BACKOFF` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				retries: {
					type:             "number"
					description:      "Maximum number of retries to perform when an API request fails. Alternatively, can be configured using the `CLOUDFLARE_RETRIES` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				rps: {
					type:             "number"
					description:      "RPS limit to apply when making calls to the API. Alternatively, can be configured using the `CLOUDFLARE_RPS` environment variable."
					description_kind: "markdown"
					optional:         true
				}
				user_agent_operator_suffix: {
					type:             "string"
					description:      "A value to append to the HTTP User Agent for all API calls. This value is not something most users need to modify however, if you are using a non-standard provider or operator configuration, this is recommended to assist in uniquely identifying your traffic. **Setting this value will remove the Terraform version from the HTTP User Agent string and may have unintended consequences**. Alternatively, can be configured using the `CLOUDFLARE_USER_AGENT_OPERATOR_SUFFIX` environment variable."
					description_kind: "markdown"
					optional:         true
				}
			}
			description_kind: "plain"
		}
	}
	resource_schemas: {
		cloudflare_access_application: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					allowed_idps: {
						type: ["set", "string"]
						description:      "The identity providers selected for the application."
						description_kind: "markdown"
						optional:         true
					}
					app_launcher_visible: {
						type:             "bool"
						description:      "Option to show/hide applications in App Launcher. Defaults to `true`."
						description_kind: "markdown"
						optional:         true
					}
					aud: {
						type:             "string"
						description:      "Application Audience (AUD) Tag of the application."
						description_kind: "markdown"
						computed:         true
					}
					auto_redirect_to_identity: {
						type:             "bool"
						description:      "Option to skip identity provider selection if only one is configured in `allowed_idps`. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					custom_deny_message: {
						type:             "string"
						description:      "Option that returns a custom error message when a user is denied access to the application."
						description_kind: "markdown"
						optional:         true
					}
					custom_deny_url: {
						type:             "string"
						description:      "Option that redirects to a custom URL when a user is denied access to the application via identity based rules."
						description_kind: "markdown"
						optional:         true
					}
					custom_non_identity_deny_url: {
						type:             "string"
						description:      "Option that redirects to a custom URL when a user is denied access to the application via non identity rules."
						description_kind: "markdown"
						optional:         true
					}
					custom_pages: {
						type: ["set", "string"]
						description:      "The custom pages selected for the application."
						description_kind: "markdown"
						optional:         true
					}
					domain: {
						type:             "string"
						description:      "The primary hostname and path that Access will secure. If the app is visible in the App Launcher dashboard, this is the domain that will be displayed."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					enable_binding_cookie: {
						type:             "bool"
						description:      "Option to provide increased security against compromised authorization tokens and CSRF attacks by requiring an additional \"binding\" cookie on requests. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					http_only_cookie_attribute: {
						type:             "bool"
						description:      "Option to add the `HttpOnly` cookie flag to access tokens."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					logo_url: {
						type:             "string"
						description:      "Image URL for the logo shown in the app launcher dashboard."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the Access Application."
						description_kind: "markdown"
						required:         true
					}
					same_site_cookie_attribute: {
						type:             "string"
						description:      "Defines the same-site cookie setting for access tokens. Available values: `none`, `lax`, `strict`."
						description_kind: "markdown"
						optional:         true
					}
					self_hosted_domains: {
						type: ["set", "string"]
						description:      "List of domains that access will secure. Only present for self_hosted, vnc, and ssh applications. Always includes the value set as `domain`."
						description_kind: "markdown"
						optional:         true
					}
					service_auth_401_redirect: {
						type:             "bool"
						description:      "Option to return a 401 status code in service authentication rules on failed requests. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					session_duration: {
						type:             "string"
						description:      "How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. Defaults to `24h`."
						description_kind: "markdown"
						optional:         true
					}
					skip_interstitial: {
						type:             "bool"
						description:      "Option to skip the authorization interstitial when using the CLI. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					tags: {
						type: ["set", "string"]
						description:      "The itags associated with the application."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description:      "The application type. Available values: `app_launcher`, `bookmark`, `biso`, `dash_sso`, `saas`, `self_hosted`, `ssh`, `vnc`, `warp`. Defaults to `self_hosted`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					cors_headers: {
						nesting_mode: "list"
						block: {
							attributes: {
								allow_all_headers: {
									type:             "bool"
									description:      "Value to determine whether all HTTP headers are exposed."
									description_kind: "markdown"
									optional:         true
								}
								allow_all_methods: {
									type:             "bool"
									description:      "Value to determine whether all methods are exposed."
									description_kind: "markdown"
									optional:         true
								}
								allow_all_origins: {
									type:             "bool"
									description:      "Value to determine whether all origins are permitted to make CORS requests."
									description_kind: "markdown"
									optional:         true
								}
								allow_credentials: {
									type:             "bool"
									description:      "Value to determine if credentials (cookies, authorization headers, or TLS client certificates) are included with requests."
									description_kind: "markdown"
									optional:         true
								}
								allowed_headers: {
									type: ["set", "string"]
									description:      "List of HTTP headers to expose via CORS."
									description_kind: "markdown"
									optional:         true
								}
								allowed_methods: {
									type: ["set", "string"]
									description:      "List of methods to expose via CORS."
									description_kind: "markdown"
									optional:         true
								}
								allowed_origins: {
									type: ["set", "string"]
									description:      "List of origins permitted to make CORS requests."
									description_kind: "markdown"
									optional:         true
								}
								max_age: {
									type:             "number"
									description:      "The maximum time a preflight request will be cached."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "CORS configuration for the Access Application. See below for reference structure."
							description_kind: "markdown"
						}
					}
					saas_app: {
						nesting_mode: "list"
						block: {
							attributes: {
								consumer_service_url: {
									type:             "string"
									description:      "The service provider's endpoint that is responsible for receiving and parsing a SAML assertion."
									description_kind: "markdown"
									required:         true
								}
								idp_entity_id: {
									type:             "string"
									description:      "The unique identifier for the SaaS application."
									description_kind: "markdown"
									computed:         true
								}
								name_id_format: {
									type:             "string"
									description:      "The format of the name identifier sent to the SaaS application. Defaults to `email`."
									description_kind: "markdown"
									optional:         true
								}
								public_key: {
									type:             "string"
									description:      "The public certificate that will be used to verify identities."
									description_kind: "markdown"
									computed:         true
								}
								sp_entity_id: {
									type:             "string"
									description:      "A globally unique name for an identity or service provider."
									description_kind: "markdown"
									required:         true
								}
								sso_endpoint: {
									type:             "string"
									description:      "The endpoint where the SaaS application will send login requests."
									description_kind: "markdown"
									computed:         true
								}
							}
							block_types: custom_attribute: {
								nesting_mode: "list"
								block: {
									attributes: {
										friendly_name: {
											type:             "string"
											description:      "A friendly name for the attribute as provided to the SaaS app."
											description_kind: "markdown"
											optional:         true
										}
										name: {
											type:             "string"
											description:      "The name of the attribute as provided to the SaaS app."
											description_kind: "markdown"
											optional:         true
										}
										name_format: {
											type:             "string"
											description:      "A globally unique name for an identity or service provider."
											description_kind: "markdown"
											optional:         true
										}
										required: {
											type:             "bool"
											description:      "True if the attribute must be always present."
											description_kind: "markdown"
											optional:         true
										}
									}
									block_types: source: {
										nesting_mode: "list"
										block: {
											attributes: name: {
												type:             "string"
												description:      "The name of the attribute as provided by the IDP."
												description_kind: "markdown"
												required:         true
											}
											description_kind: "plain"
										}
										min_items: 1
										max_items: 1
									}
									description:      "Custom attribute mapped from IDPs."
									description_kind: "markdown"
								}
							}
							description:      "SaaS configuration for the Access Application."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description: """
					Provides a Cloudflare Access Application resource. Access
					Applications are used to restrict access to a whole application using an
					authorisation gateway managed by Cloudflare.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_ca_certificate: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					application_id: {
						type:             "string"
						description:      "The Access Application ID to associate with the CA certificate."
						description_kind: "markdown"
						required:         true
					}
					aud: {
						type:             "string"
						description:      "Application Audience (AUD) Tag of the CA certificate."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					public_key: {
						type:             "string"
						description:      "Cryptographic public key of the generated CA certificate."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description: """
					Cloudflare Access can replace traditional SSH key models with
					short-lived certificates issued to your users based on the token
					generated by their Access login.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_custom_page: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					app_count: {
						type:             "number"
						description:      "Number of apps to display on the custom page."
						description_kind: "markdown"
						optional:         true
					}
					custom_html: {
						type:             "string"
						description:      "Custom HTML to display on the custom page."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the Access Custom Page configuration."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "Type of Access custom page to create. Available values: `identity_denied`, `forbidden`."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a resource to customize the pages your end users will see
					when trying to reach applications behind Cloudflare Access.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_group: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description_kind: "plain"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					exclude: {
						nesting_mode: "list"
						block: {
							attributes: {
								any_valid_service_token: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								auth_method: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								common_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								device_posture: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email_domain: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								everyone: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								geo: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								group: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								ip: {
									type: ["list", "string"]
									description:      "An IPv4 or IPv6 CIDR block."
									description_kind: "markdown"
									optional:         true
								}
								ip_list: {
									type: ["list", "string"]
									description:      "The ID of an existing IP list to reference."
									description_kind: "markdown"
									optional:         true
								}
								login_method: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								service_token: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								auth_context: {
									nesting_mode: "list"
									block: {
										attributes: {
											ac_id: {
												type:             "string"
												description:      "The ACID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											id: {
												type:             "string"
												description:      "The ID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												required:         true
											}
										}
										description_kind: "plain"
									}
								}
								azure: {
									nesting_mode: "list"
									block: {
										attributes: {
											id: {
												type: ["list", "string"]
												description:      "The ID of the Azure group or user."
												description_kind: "markdown"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								external_evaluation: {
									nesting_mode: "list"
									block: {
										attributes: {
											evaluate_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											keys_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									max_items: 1
								}
								github: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											teams: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								gsuite: {
									nesting_mode: "list"
									block: {
										attributes: {
											email: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								okta: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								saml: {
									nesting_mode: "list"
									block: {
										attributes: {
											attribute_name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											attribute_value: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
							}
							description_kind: "plain"
						}
					}
					include: {
						nesting_mode: "list"
						block: {
							attributes: {
								any_valid_service_token: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								auth_method: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								common_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								device_posture: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email_domain: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								everyone: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								geo: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								group: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								ip: {
									type: ["list", "string"]
									description:      "An IPv4 or IPv6 CIDR block."
									description_kind: "markdown"
									optional:         true
								}
								ip_list: {
									type: ["list", "string"]
									description:      "The ID of an existing IP list to reference."
									description_kind: "markdown"
									optional:         true
								}
								login_method: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								service_token: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								auth_context: {
									nesting_mode: "list"
									block: {
										attributes: {
											ac_id: {
												type:             "string"
												description:      "The ACID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											id: {
												type:             "string"
												description:      "The ID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												required:         true
											}
										}
										description_kind: "plain"
									}
								}
								azure: {
									nesting_mode: "list"
									block: {
										attributes: {
											id: {
												type: ["list", "string"]
												description:      "The ID of the Azure group or user."
												description_kind: "markdown"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								external_evaluation: {
									nesting_mode: "list"
									block: {
										attributes: {
											evaluate_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											keys_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									max_items: 1
								}
								github: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											teams: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								gsuite: {
									nesting_mode: "list"
									block: {
										attributes: {
											email: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								okta: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								saml: {
									nesting_mode: "list"
									block: {
										attributes: {
											attribute_name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											attribute_value: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
							}
							description_kind: "plain"
						}
						min_items: 1
					}
					require: {
						nesting_mode: "list"
						block: {
							attributes: {
								any_valid_service_token: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								auth_method: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								common_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								device_posture: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email_domain: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								everyone: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								geo: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								group: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								ip: {
									type: ["list", "string"]
									description:      "An IPv4 or IPv6 CIDR block."
									description_kind: "markdown"
									optional:         true
								}
								ip_list: {
									type: ["list", "string"]
									description:      "The ID of an existing IP list to reference."
									description_kind: "markdown"
									optional:         true
								}
								login_method: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								service_token: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								auth_context: {
									nesting_mode: "list"
									block: {
										attributes: {
											ac_id: {
												type:             "string"
												description:      "The ACID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											id: {
												type:             "string"
												description:      "The ID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												required:         true
											}
										}
										description_kind: "plain"
									}
								}
								azure: {
									nesting_mode: "list"
									block: {
										attributes: {
											id: {
												type: ["list", "string"]
												description:      "The ID of the Azure group or user."
												description_kind: "markdown"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								external_evaluation: {
									nesting_mode: "list"
									block: {
										attributes: {
											evaluate_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											keys_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									max_items: 1
								}
								github: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											teams: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								gsuite: {
									nesting_mode: "list"
									block: {
										attributes: {
											email: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								okta: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								saml: {
									nesting_mode: "list"
									block: {
										attributes: {
											attribute_name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											attribute_value: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
							}
							description_kind: "plain"
						}
					}
				}
				description: """
					Provides a Cloudflare Access Group resource. Access Groups are used
					in conjunction with Access Policies to restrict access to a
					particular resource based on group membership.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_identity_provider: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the Access Identity Provider configuration."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "The provider type to use. Available values: `azureAD`, `centrify`, `facebook`, `github`, `google`, `google-apps`, `linkedin`, `oidc`, `okta`, `onelogin`, `onetimepin`, `pingone`, `saml`, `yandex`."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					config: {
						nesting_mode: "list"
						block: {
							attributes: {
								api_token: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								apps_domain: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								attributes: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								auth_url: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								authorization_server_id: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								centrify_account: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								centrify_app_id: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certs_url: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								claims: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								client_id: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								client_secret: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								conditional_access_enabled: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								directory_id: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								email_attribute_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								email_claim_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								idp_public_cert: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								issuer_url: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								okta_account: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								onelogin_account: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								ping_env_id: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								pkce_enabled: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								redirect_url: {
									type:             "string"
									description_kind: "plain"
									computed:         true
								}
								scopes: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								sign_request: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								sso_target_url: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								support_groups: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								token_url: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "Provider configuration from the [developer documentation](https://developers.cloudflare.com/access/configuring-identity-providers/)."
							description_kind: "markdown"
						}
					}
					scim_config: {
						nesting_mode: "list"
						block: {
							attributes: {
								enabled: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								group_member_deprovision: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								seat_deprovision: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								secret: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
									sensitive:        true
								}
								user_deprovision: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "Configuration for SCIM settings for a given IDP."
							description_kind: "markdown"
						}
					}
				}
				description: """
					Provides a Cloudflare Access Identity Provider resource. Identity
					Providers are used as an authentication or authorisation source
					within Access.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_keys_configuration: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					key_rotation_interval_days: {
						type:             "number"
						description:      "Number of days to trigger a rotation of the keys."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description: """
					Access Keys Configuration defines the rotation policy for the keys
					that access will use to sign data.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_mutual_tls_certificate: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					associated_hostnames: {
						type: ["list", "string"]
						description:      "The hostnames that will be prompted for this certificate."
						description_kind: "markdown"
						optional:         true
					}
					certificate: {
						type:             "string"
						description:      "The Root CA for your certificates."
						description_kind: "markdown"
						optional:         true
					}
					fingerprint: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the certificate."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description: """
					Provides a Cloudflare Access Mutual TLS Certificate resource.
					Mutual TLS authentication ensures that the traffic is secure and
					trusted in both directions between a client and server and can be
					 used with Access to only allows requests from devices with a
					 corresponding client certificate.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_organization: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					auth_domain: {
						type:             "string"
						description:      "The unique subdomain assigned to your Zero Trust organization."
						description_kind: "markdown"
						required:         true
					}
					auto_redirect_to_identity: {
						type:             "bool"
						description:      "When set to true, users skip the identity provider selection step during login."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					is_ui_read_only: {
						type:             "bool"
						description:      "When set to true, this will disable all editing of Access resources via the Zero Trust Dashboard."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The name of your Zero Trust organization."
						description_kind: "markdown"
						optional:         true
					}
					session_duration: {
						type:             "string"
						description:      "How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. Defaults to `24h`."
						description_kind: "markdown"
						optional:         true
					}
					ui_read_only_toggle_reason: {
						type:             "string"
						description:      "A description of the reason why the UI read only field is being toggled."
						description_kind: "markdown"
						optional:         true
					}
					user_seat_expiration_inactive_time: {
						type:             "string"
						description:      "The amount of time a user seat is inactive before it expires. When the user seat exceeds the set time of inactivity, the user is removed as an active seat and no longer counts against your Teams seat count. Must be in the format `300ms` or `2h45m`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					custom_pages: {
						nesting_mode: "list"
						block: {
							attributes: {
								forbidden: {
									type:             "string"
									description:      "The id of the forbidden page."
									description_kind: "markdown"
									optional:         true
								}
								identity_denied: {
									type:             "string"
									description:      "The id of the identity denied page."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Custom pages for your Zero Trust organization."
							description_kind: "markdown"
						}
					}
					login_design: {
						nesting_mode: "list"
						block: {
							attributes: {
								background_color: {
									type:             "string"
									description:      "The background color on the login page."
									description_kind: "markdown"
									optional:         true
								}
								footer_text: {
									type:             "string"
									description:      "The text at the bottom of the login page."
									description_kind: "markdown"
									optional:         true
								}
								header_text: {
									type:             "string"
									description:      "The text at the top of the login page."
									description_kind: "markdown"
									optional:         true
								}
								logo_path: {
									type:             "string"
									description:      "The URL of the logo on the login page."
									description_kind: "markdown"
									optional:         true
								}
								text_color: {
									type:             "string"
									description:      "The text color on the login page."
									description_kind: "markdown"
									optional:         true
								}
							}
							description_kind: "plain"
						}
					}
				}
				description: """
					A Zero Trust organization defines the user login experience.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_policy: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					application_id: {
						type:             "string"
						description:      "The ID of the application the policy is associated with."
						description_kind: "markdown"
						required:         true
					}
					approval_required: {
						type:             "bool"
						description_kind: "plain"
						optional:         true
					}
					decision: {
						type:             "string"
						description:      "Defines the action Access will take if the policy matches the user. Available values: `allow`, `deny`, `non_identity`, `bypass`."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					isolation_required: {
						type:             "bool"
						description:      "Require this application to be served in an isolated browser for users matching this policy."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the Access Policy."
						description_kind: "markdown"
						required:         true
					}
					precedence: {
						type:             "number"
						description:      "The unique precedence for policies on a single application."
						description_kind: "markdown"
						required:         true
					}
					purpose_justification_prompt: {
						type:             "string"
						description:      "The prompt to display to the user for a justification for accessing the resource. Required when using `purpose_justification_required`."
						description_kind: "markdown"
						optional:         true
					}
					purpose_justification_required: {
						type:             "bool"
						description:      "Whether to prompt the user for a justification for accessing the resource."
						description_kind: "markdown"
						optional:         true
					}
					session_duration: {
						type:             "string"
						description:      "How often a user will be forced to re-authorise. Must be in the format `48h` or `2h45m`. Defaults to `24h`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					approval_group: {
						nesting_mode: "list"
						block: {
							attributes: {
								approvals_needed: {
									type:             "number"
									description:      "Number of approvals needed."
									description_kind: "markdown"
									required:         true
								}
								email_addresses: {
									type: ["list", "string"]
									description:      "List of emails to request approval from."
									description_kind: "markdown"
									optional:         true
								}
								email_list_uuid: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description_kind: "plain"
						}
					}
					exclude: {
						nesting_mode: "list"
						block: {
							attributes: {
								any_valid_service_token: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								auth_method: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								common_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								device_posture: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email_domain: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								everyone: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								geo: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								group: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								ip: {
									type: ["list", "string"]
									description:      "An IPv4 or IPv6 CIDR block."
									description_kind: "markdown"
									optional:         true
								}
								ip_list: {
									type: ["list", "string"]
									description:      "The ID of an existing IP list to reference."
									description_kind: "markdown"
									optional:         true
								}
								login_method: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								service_token: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								auth_context: {
									nesting_mode: "list"
									block: {
										attributes: {
											ac_id: {
												type:             "string"
												description:      "The ACID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											id: {
												type:             "string"
												description:      "The ID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												required:         true
											}
										}
										description_kind: "plain"
									}
								}
								azure: {
									nesting_mode: "list"
									block: {
										attributes: {
											id: {
												type: ["list", "string"]
												description:      "The ID of the Azure group or user."
												description_kind: "markdown"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								external_evaluation: {
									nesting_mode: "list"
									block: {
										attributes: {
											evaluate_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											keys_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									max_items: 1
								}
								github: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											teams: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								gsuite: {
									nesting_mode: "list"
									block: {
										attributes: {
											email: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								okta: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								saml: {
									nesting_mode: "list"
									block: {
										attributes: {
											attribute_name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											attribute_value: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
							}
							description:      "A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions)."
							description_kind: "markdown"
						}
					}
					include: {
						nesting_mode: "list"
						block: {
							attributes: {
								any_valid_service_token: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								auth_method: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								common_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								device_posture: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email_domain: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								everyone: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								geo: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								group: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								ip: {
									type: ["list", "string"]
									description:      "An IPv4 or IPv6 CIDR block."
									description_kind: "markdown"
									optional:         true
								}
								ip_list: {
									type: ["list", "string"]
									description:      "The ID of an existing IP list to reference."
									description_kind: "markdown"
									optional:         true
								}
								login_method: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								service_token: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								auth_context: {
									nesting_mode: "list"
									block: {
										attributes: {
											ac_id: {
												type:             "string"
												description:      "The ACID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											id: {
												type:             "string"
												description:      "The ID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												required:         true
											}
										}
										description_kind: "plain"
									}
								}
								azure: {
									nesting_mode: "list"
									block: {
										attributes: {
											id: {
												type: ["list", "string"]
												description:      "The ID of the Azure group or user."
												description_kind: "markdown"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								external_evaluation: {
									nesting_mode: "list"
									block: {
										attributes: {
											evaluate_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											keys_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									max_items: 1
								}
								github: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											teams: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								gsuite: {
									nesting_mode: "list"
									block: {
										attributes: {
											email: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								okta: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								saml: {
									nesting_mode: "list"
									block: {
										attributes: {
											attribute_name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											attribute_value: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
							}
							description:      "A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions)."
							description_kind: "markdown"
						}
						min_items: 1
					}
					require: {
						nesting_mode: "list"
						block: {
							attributes: {
								any_valid_service_token: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								auth_method: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								common_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								device_posture: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								email_domain: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								everyone: {
									type:             "bool"
									description_kind: "plain"
									optional:         true
								}
								geo: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								group: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								ip: {
									type: ["list", "string"]
									description:      "An IPv4 or IPv6 CIDR block."
									description_kind: "markdown"
									optional:         true
								}
								ip_list: {
									type: ["list", "string"]
									description:      "The ID of an existing IP list to reference."
									description_kind: "markdown"
									optional:         true
								}
								login_method: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
								service_token: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
								}
							}
							block_types: {
								auth_context: {
									nesting_mode: "list"
									block: {
										attributes: {
											ac_id: {
												type:             "string"
												description:      "The ACID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											id: {
												type:             "string"
												description:      "The ID of the Authentication Context."
												description_kind: "markdown"
												required:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												required:         true
											}
										}
										description_kind: "plain"
									}
								}
								azure: {
									nesting_mode: "list"
									block: {
										attributes: {
											id: {
												type: ["list", "string"]
												description:      "The ID of the Azure group or user."
												description_kind: "markdown"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description:      "The ID of the Azure Identity provider."
												description_kind: "markdown"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								external_evaluation: {
									nesting_mode: "list"
									block: {
										attributes: {
											evaluate_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											keys_url: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
									max_items: 1
								}
								github: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											teams: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								gsuite: {
									nesting_mode: "list"
									block: {
										attributes: {
											email: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								okta: {
									nesting_mode: "list"
									block: {
										attributes: {
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											name: {
												type: ["list", "string"]
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
								saml: {
									nesting_mode: "list"
									block: {
										attributes: {
											attribute_name: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											attribute_value: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
											identity_provider_id: {
												type:             "string"
												description_kind: "plain"
												optional:         true
											}
										}
										description_kind: "plain"
									}
								}
							}
							description:      "A series of access conditions, see [Access Groups](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/access_group#conditions)."
							description_kind: "markdown"
						}
					}
				}
				description: """
					Provides a Cloudflare Access Policy resource. Access Policies are
					used in conjunction with Access Applications to restrict access to
					a particular resource.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_rule: {
			version: 1
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					mode: {
						type:             "string"
						description:      "The action to apply to a matched request. Available values: `block`, `challenge`, `whitelist`, `js_challenge`, `managed_challenge`."
						description_kind: "markdown"
						required:         true
					}
					notes: {
						type:             "string"
						description:      "A personal note about the rule. Typically used as a reminder or explanation for the rule."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				block_types: configuration: {
					nesting_mode: "list"
					block: {
						attributes: {
							target: {
								type:             "string"
								description:      "The request property to target. Available values: `ip`, `ip6`, `ip_range`, `asn`, `country`. **Modifying this attribute will force creation of a new resource.**"
								description_kind: "markdown"
								required:         true
							}
							value: {
								type:             "string"
								description:      "The value to target. Depends on target's type. **Modifying this attribute will force creation of a new resource.**"
								description_kind: "markdown"
								required:         true
							}
						}
						description:      "Rule configuration to apply to a matched request. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
					}
					min_items: 1
					max_items: 1
				}
				description: """
					Provides a Cloudflare IP Firewall Access Rule resource. Access
					control can be applied on basis of IP addresses, IP ranges, AS
					numbers or countries.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_service_token: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
					}
					client_id: {
						type:             "string"
						description:      "UUID client ID associated with the Service Token. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					client_secret: {
						type:             "string"
						description:      "A secret for interacting with Access protocols. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
						sensitive:        true
					}
					duration: {
						type:             "string"
						description:      "Length of time the service token is valid for. Available values: `8760h`, `17520h`, `43800h`, `87600h`, `forever`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					expires_at: {
						type:             "string"
						description:      "Date when the token expires."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					min_days_for_renewal: {
						type:             "number"
						description:      "Refresh the token if terraform is run within the specified amount of days before expiration. Defaults to `0`."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the token's intent."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Access Service Tokens are used for service-to-service communication
					when an application is behind Cloudflare Access.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_access_tag: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					app_count: {
						type:             "number"
						description:      "Number of apps associated with the tag."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the Access Tag."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a resource to customize the pages your end users will see
					when trying to reach applications behind Cloudflare Access.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_account: {
			version: 0
			block: {
				attributes: {
					enforce_twofactor: {
						type:             "bool"
						description:      "Whether 2FA is enforced on the account. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the account that is displayed in the Cloudflare dashboard."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "Account type. Available values: `enterprise`, `standard`. Defaults to `standard`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a Cloudflare Account resource. Account is the basic resource for
					working with Cloudflare zones, teams and users.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_account_member: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "Account ID to create the account member in."
						description_kind: "markdown"
						required:         true
					}
					email_address: {
						type:             "string"
						description:      "The email address of the user who you wish to manage. Following creation, this field becomes read only via the API and cannot be updated."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					role_ids: {
						type: ["set", "string"]
						description:      "List of account role IDs that you want to assign to a member."
						description_kind: "markdown"
						required:         true
					}
					status: {
						type:             "string"
						description:      "A member's status in the account. Available values: `accepted`, `pending`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description: """
					Provides a resource which manages Cloudflare account members.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_address_map: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					can_delete: {
						type:             "bool"
						description:      "If set to false, then the Address Map cannot be deleted via API. This is true for Cloudflare-managed maps."
						description_kind: "markdown"
						computed:         true
					}
					can_modify_ips: {
						type:             "bool"
						description:      "If set to false, then the IPs on the Address Map cannot be modified via the API. This is true for Cloudflare-managed maps."
						description_kind: "markdown"
						computed:         true
					}
					default_sni: {
						type:             "string"
						description:      "If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the address map."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Whether the Address Map is enabled or not."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					ips: {
						nesting_mode: "set"
						block: {
							attributes: ip: {
								type:             "string"
								description:      "An IPv4 or IPv6 address."
								description_kind: "markdown"
								required:         true
							}
							description:      "The set of IPs on the Address Map."
							description_kind: "markdown"
						}
					}
					memberships: {
						nesting_mode: "set"
						block: {
							attributes: {
								can_delete: {
									type:             "bool"
									description:      "Controls whether the membership can be deleted via the API or not."
									description_kind: "markdown"
									computed:         true
								}
								identifier: {
									type:             "string"
									description:      "Identifier of the account or zone."
									description_kind: "markdown"
									required:         true
								}
								kind: {
									type:             "string"
									description:      "The type of the membership."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Zones and Accounts which will be assigned IPs on this Address Map."
							description_kind: "markdown"
						}
					}
				}
				description: """
					Provides the ability to manage IP addresses that can be used by DNS records when
					they are proxied through Cloudflare.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_api_shield: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: auth_id_characteristics: {
					nesting_mode: "list"
					block: {
						attributes: {
							name: {
								type:             "string"
								description:      "The name of the characteristic."
								description_kind: "markdown"
								optional:         true
							}
							type: {
								type:             "string"
								description:      "The type of characteristic. Available values: `header`, `cookie`."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "Characteristics define properties across which auth-ids can be computed in a privacy-preserving manner."
						description_kind: "markdown"
					}
				}
				description: """
					Provides a resource to manage API Shield configurations.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_api_shield_operation: {
			version: 0
			block: {
				attributes: {
					endpoint: {
						type:             "string"
						description:      "The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with `{varN}`, starting with `{var1}`. This will then be [Cloudflare-normalized](https://developers.cloudflare.com/rules/normalization/how-it-works/). **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					host: {
						type:             "string"
						description:      "RFC3986-compliant host. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					method: {
						type:             "string"
						description:      "The HTTP method used to access the endpoint. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource to manage an operation in API Shield Endpoint Management.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_api_shield_schema: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					kind: {
						type:             "string"
						description:      "Kind of schema. Defaults to `openapi_v3`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the schema. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					source: {
						type:             "string"
						description:      "Schema file bytes. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					validation_enabled: {
						type:             "bool"
						description:      "Flag whether schema is enabled for validation."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource to manage a schema in API Shield Schema Validation 2.0.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_api_token: {
			version: 0
			block: {
				attributes: {
					expires_on: {
						type:             "string"
						description:      "The expiration time on or after which the token MUST NOT be accepted for processing."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					issued_on: {
						type:             "string"
						description:      "Timestamp of when the token was issued."
						description_kind: "markdown"
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "Timestamp of when the token was last modified."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the API Token."
						description_kind: "markdown"
						required:         true
					}
					not_before: {
						type:             "string"
						description:      "The time before which the token MUST NOT be accepted for processing."
						description_kind: "markdown"
						optional:         true
					}
					status: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					value: {
						type:             "string"
						description:      "The value of the API Token."
						description_kind: "markdown"
						computed:         true
						sensitive:        true
					}
				}
				block_types: {
					condition: {
						nesting_mode: "list"
						block: {
							block_types: request_ip: {
								nesting_mode: "list"
								block: {
									attributes: {
										in: {
											type: ["set", "string"]
											description:      "List of IP addresses or CIDR notation where the token may be used from. If not specified, the token will be valid for all IP addresses."
											description_kind: "markdown"
											optional:         true
										}
										not_in: {
											type: ["set", "string"]
											description:      "List of IP addresses or CIDR notation where the token should not be used from."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "Request IP related conditions."
									description_kind: "markdown"
								}
								max_items: 1
							}
							description:      "Conditions under which the token should be considered valid."
							description_kind: "markdown"
						}
						max_items: 1
					}
					policy: {
						nesting_mode: "set"
						block: {
							attributes: {
								effect: {
									type:             "string"
									description:      "Effect of the policy. Available values: `allow`, `deny`. Defaults to `allow`."
									description_kind: "markdown"
									optional:         true
								}
								permission_groups: {
									type: ["set", "string"]
									description:      "List of permissions groups IDs. See [documentation](https://developers.cloudflare.com/api/tokens/create/permissions) for more information."
									description_kind: "markdown"
									required:         true
								}
								resources: {
									type: ["map", "string"]
									description:      "Describes what operations against which resources are allowed or denied."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Permissions policy. Multiple policy blocks can be defined."
							description_kind: "markdown"
						}
						min_items: 1
					}
				}
				description: """
					Provides a resource which manages Cloudflare API tokens.

					Read more about permission groups and their applicable scopes in the
					[developer documentation](https://developers.cloudflare.com/api/tokens/create/permissions).

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_argo: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					smart_routing: {
						type:             "string"
						description:      "Whether smart routing is enabled. Available values: `on`, `off`."
						description_kind: "markdown"
						optional:         true
					}
					tiered_caching: {
						type:             "string"
						description:      "Whether tiered caching is enabled. Available values: `on`, `off`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Cloudflare Argo controls the routing to your origin and tiered
					caching options to speed up your website browsing experience.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_authenticated_origin_pulls: {
			version: 0
			block: {
				attributes: {
					authenticated_origin_pulls_certificate: {
						type:             "string"
						description:      "The ID of an uploaded Authenticated Origin Pulls certificate. If no hostname is provided, this certificate will be used zone wide as Per-Zone Authenticated Origin Pulls."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Whether to enable Authenticated Origin Pulls on the given zone or hostname."
						description_kind: "markdown"
						required:         true
					}
					hostname: {
						type:             "string"
						description:      "Specify a hostname to enable Per-Hostname Authenticated Origin Pulls on, using the provided certificate."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare Authenticated Origin Pulls resource. A `cloudflare_authenticated_origin_pulls`
					resource is required to use Per-Zone or Per-Hostname Authenticated
					Origin Pulls.
					"""
				description_kind: "markdown"
			}
		}
		cloudflare_authenticated_origin_pulls_certificate: {
			version: 0
			block: {
				attributes: {
					certificate: {
						type:             "string"
						description:      "The public client certificate. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					expires_on: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					issuer: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					private_key: {
						type:             "string"
						description:      "The private key of the client certificate. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
						sensitive:        true
					}
					serial_number: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					signature: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					status: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					type: {
						type:             "string"
						description:      "The form of Authenticated Origin Pulls to upload the certificate to. Available values: `per-zone`, `per-hostname`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					uploaded_on: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: timeouts: {
					nesting_mode: "single"
					block: {
						attributes: create: {
							type:             "string"
							description_kind: "plain"
							optional:         true
						}
						description_kind: "plain"
					}
				}
				description: """
					Provides a Cloudflare Authenticated Origin Pulls certificate
					resource. An uploaded client certificate is required to use Per-Zone
					 or Per-Hostname Authenticated Origin Pulls.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_bot_management: {
			version: 0
			block: {
				attributes: {
					auto_update_model: {
						type:             "bool"
						description:      "Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)."
						description_kind: "markdown"
						optional:         true
					}
					enable_js: {
						type:             "bool"
						description:      "Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/)."
						description_kind: "markdown"
						optional:         true
					}
					fight_mode: {
						type:             "bool"
						description:      "Whether to enable Bot Fight Mode."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					optimize_wordpress: {
						type:             "bool"
						description:      "Whether to optimize Super Bot Fight Mode protections for Wordpress."
						description_kind: "markdown"
						optional:         true
					}
					sbfm_definitely_automated: {
						type:             "string"
						description:      "Super Bot Fight Mode (SBFM) action to take on definitely automated requests."
						description_kind: "markdown"
						optional:         true
					}
					sbfm_likely_automated: {
						type:             "string"
						description:      "Super Bot Fight Mode (SBFM) action to take on likely automated requests."
						description_kind: "markdown"
						optional:         true
					}
					sbfm_static_resource_protection: {
						type:             "bool"
						description:      "Super Bot Fight Mode (SBFM) to enable static resource protection. Enable if static resources on your application need bot protection. Note: Static resource protection can also result in legitimate traffic being blocked."
						description_kind: "markdown"
						optional:         true
					}
					sbfm_verified_bots: {
						type:             "string"
						description:      "Super Bot Fight Mode (SBFM) action to take on verified bots requests."
						description_kind: "markdown"
						optional:         true
					}
					suppress_session_score: {
						type:             "bool"
						description:      "Whether to disable tracking the highest bot score for a session in the Bot Management cookie."
						description_kind: "markdown"
						optional:         true
					}
					using_latest_model: {
						type:             "bool"
						description:      "A read-only field that indicates whether the zone currently is running the latest ML model."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource to configure Bot Management.

					Specifically, this resource can be used to manage:

					- **Bot Fight Mode**
					- **Super Bot Fight Mode**
					- **Bot Management for Enterprise**

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_byo_ip_prefix: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					advertisement: {
						type:             "string"
						description:      "Whether or not the prefix shall be announced. A prefix can be activated or deactivated once every 15 minutes (attempting more regular updates will trigger rate limiting). Available values: `on`, `off`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					description: {
						type:             "string"
						description:      "Description of the BYO IP prefix."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					prefix_id: {
						type:             "string"
						description:      "The assigned Bring-Your-Own-IP prefix ID. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides the ability to manage Bring-Your-Own-IP prefixes (BYOIP)
					which are used with or without Magic Transit.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_certificate_pack: {
			version: 0
			block: {
				attributes: {
					certificate_authority: {
						type:             "string"
						description:      "Which certificate authority to issue the certificate pack. Available values: `digicert`, `lets_encrypt`, `google`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					cloudflare_branding: {
						type:             "bool"
						description:      "Whether or not to include Cloudflare branding. This will add `sni.cloudflaressl.com` as the Common Name if set to `true`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					hosts: {
						type: ["set", "string"]
						description:      "List of hostnames to provision the certificate pack for. The zone name must be included as a host. Note: If using Let's Encrypt, you cannot use individual subdomains and only a wildcard for subdomain is available. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					type: {
						type:             "string"
						description:      "Certificate pack configuration type. Available values: `advanced`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					validation_method: {
						type:             "string"
						description:      "Which validation method to use in order to prove domain ownership. Available values: `txt`, `http`, `email`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					validity_days: {
						type:             "number"
						description:      "How long the certificate is valid for. Note: If using Let's Encrypt, this value can only be 90 days. Available values: `14`, `30`, `90`, `365`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					wait_for_active_status: {
						type:             "bool"
						description:      "Whether or not to wait for a certificate pack to reach status `active` during creation. Defaults to `false`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					validation_errors: {
						nesting_mode: "list"
						block: {
							attributes: message: {
								type:             "string"
								description_kind: "plain"
								computed:         true
							}
							description_kind: "plain"
						}
					}
					validation_records: {
						nesting_mode: "list"
						block: {
							attributes: {
								cname_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								cname_target: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								emails: {
									type: ["list", "string"]
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								http_body: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								http_url: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								txt_name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
								txt_value: {
									type:             "string"
									description_kind: "plain"
									optional:         true
									computed:         true
								}
							}
							description_kind: "plain"
						}
					}
				}
				description: """
					Provides a Cloudflare Certificate Pack resource that is used to
					provision managed TLS certificates.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_custom_hostname: {
			version: 0
			block: {
				attributes: {
					custom_metadata: {
						type: ["map", "string"]
						description:      "Custom metadata associated with custom hostname. Only supports primitive string values, all other values are accessible via the API directly."
						description_kind: "markdown"
						optional:         true
					}
					custom_origin_server: {
						type:             "string"
						description:      "The custom origin server used for certificates."
						description_kind: "markdown"
						optional:         true
					}
					custom_origin_sni: {
						type:             "string"
						description:      "The [custom origin SNI](https://developers.cloudflare.com/ssl/ssl-for-saas/hostname-specific-behavior/custom-origin) used for certificates."
						description_kind: "markdown"
						optional:         true
					}
					hostname: {
						type:             "string"
						description:      "Hostname you intend to request a certificate for. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ownership_verification: {
						type: ["map", "string"]
						description_kind: "plain"
						computed:         true
					}
					ownership_verification_http: {
						type: ["map", "string"]
						description_kind: "plain"
						computed:         true
					}
					status: {
						type:             "string"
						description:      "Status of the certificate."
						description_kind: "markdown"
						computed:         true
					}
					wait_for_ssl_pending_validation: {
						type:             "bool"
						description:      "Whether to wait for a custom hostname SSL sub-object to reach status `pending_validation` during creation. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: ssl: {
					nesting_mode: "list"
					block: {
						attributes: {
							bundle_method: {
								type:             "string"
								description:      "A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it. Available values: `ubiquitous`, `optimal`, `force`."
								description_kind: "markdown"
								optional:         true
							}
							certificate_authority: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							custom_certificate: {
								type:             "string"
								description:      "If a custom uploaded certificate is used."
								description_kind: "markdown"
								optional:         true
							}
							custom_key: {
								type:             "string"
								description:      "The key for a custom uploaded certificate."
								description_kind: "markdown"
								optional:         true
							}
							method: {
								type:             "string"
								description:      "Domain control validation (DCV) method used for this hostname. Available values: `http`, `txt`, `email`."
								description_kind: "markdown"
								optional:         true
							}
							status: {
								type:             "string"
								description_kind: "plain"
								computed:         true
							}
							type: {
								type:             "string"
								description:      "Level of validation to be used for this hostname. Available values: `dv`. Defaults to `dv`."
								description_kind: "markdown"
								optional:         true
							}
							validation_errors: {
								type: ["list", ["object", {
									message: "string"
								}]]
								description_kind: "plain"
								computed:         true
							}
							validation_records: {
								type: ["list", ["object", {
									cname_name:   "string"
									cname_target: "string"
									emails: ["list", "string"]
									http_body: "string"
									http_url:  "string"
									txt_name:  "string"
									txt_value: "string"
								}]]
								description_kind: "plain"
								computed:         true
							}
							wildcard: {
								type:             "bool"
								description:      "Indicates whether the certificate covers a wildcard."
								description_kind: "markdown"
								optional:         true
							}
						}
						block_types: settings: {
							nesting_mode: "list"
							block: {
								attributes: {
									ciphers: {
										type: ["set", "string"]
										description:      "List of SSL/TLS ciphers to associate with this certificate."
										description_kind: "markdown"
										optional:         true
									}
									early_hints: {
										type:             "string"
										description:      "Whether early hints should be supported. Available values: `on`, `off`."
										description_kind: "markdown"
										optional:         true
									}
									http2: {
										type:             "string"
										description:      "Whether HTTP2 should be supported. Available values: `on`, `off`."
										description_kind: "markdown"
										optional:         true
									}
									min_tls_version: {
										type:             "string"
										description:      "Lowest version of TLS this certificate should support. Available values: `1.0`, `1.1`, `1.2`, `1.3`."
										description_kind: "markdown"
										optional:         true
									}
									tls13: {
										type:             "string"
										description:      "Whether TLSv1.3 should be supported. Available values: `on`, `off`."
										description_kind: "markdown"
										optional:         true
									}
								}
								description:      "SSL/TLS settings for the certificate."
								description_kind: "markdown"
							}
						}
						description:      "SSL properties used when creating the custom hostname."
						description_kind: "markdown"
					}
				}
				description: """
					Provides a Cloudflare custom hostname (also known as SSL for SaaS) resource.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_custom_hostname_fallback_origin: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					origin: {
						type:             "string"
						description:      "Hostname you intend to fallback requests to. Origin must be a proxied A/AAAA/CNAME DNS record within Clouldflare."
						description_kind: "markdown"
						required:         true
					}
					status: {
						type:             "string"
						description:      "Status of the fallback origin's activation."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides a Cloudflare custom hostname fallback origin resource."
				description_kind: "markdown"
			}
		}
		cloudflare_custom_pages: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Conflicts with `zone_id`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					state: {
						type:             "string"
						description:      "Managed state of the custom page. Available values: `default`, `customized`."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description:      "The type of custom page you wish to update. Available values: `basic_challenge`, `waf_challenge`, `waf_block`, `ratelimit_block`, `country_challenge`, `ip_block`, `under_attack`, `500_errors`, `1000_errors`, `always_online`, `managed_challenge`."
						description_kind: "markdown"
						required:         true
					}
					url: {
						type:             "string"
						description:      "URL of where the custom page source is located."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Conflicts with `account_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Provides a resource which manages Cloudflare custom error pages."
				description_kind: "markdown"
			}
		}
		cloudflare_custom_ssl: {
			version: 1
			block: {
				attributes: {
					expires_on: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					hosts: {
						type: ["list", "string"]
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					issuer: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					modified_on: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					priority: {
						type:             "number"
						description_kind: "plain"
						computed:         true
					}
					signature: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					status: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					uploaded_on: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					custom_ssl_options: {
						nesting_mode: "list"
						block: {
							attributes: {
								bundle_method: {
									type:             "string"
									description:      "Method of building intermediate certificate chain. A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it. Available values: `ubiquitous`, `optimal`, `force`."
									description_kind: "markdown"
									optional:         true
								}
								certificate: {
									type:             "string"
									description:      "Certificate certificate and the intermediate(s)."
									description_kind: "markdown"
									optional:         true
								}
								geo_restrictions: {
									type:             "string"
									description:      "Specifies the region where your private key can be held locally. Available values: `us`, `eu`, `highest_security`."
									description_kind: "markdown"
									optional:         true
								}
								private_key: {
									type:             "string"
									description:      "Certificate's private key."
									description_kind: "markdown"
									optional:         true
									sensitive:        true
								}
								type: {
									type:             "string"
									description:      "Whether to enable support for legacy clients which do not include SNI in the TLS handshake. Available values: `legacy_custom`, `sni_custom`."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "The certificate associated parameters. **Modifying this attribute will force creation of a new resource.**"
							description_kind: "markdown"
						}
						max_items: 1
					}
					custom_ssl_priority: {
						nesting_mode: "list"
						block: {
							attributes: {
								id: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								priority: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
							}
							description_kind: "plain"
						}
					}
				}
				description:      "Provides a Cloudflare custom SSL resource."
				description_kind: "markdown"
			}
		}
		cloudflare_d1_database: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "The identifier of this resource."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the D1 Database."
						description_kind: "markdown"
						required:         true
					}
					version: {
						type:             "string"
						description:      "The backend version of the database."
						description_kind: "markdown"
						computed:         true
					}
				}
				description: """
					The [D1 Database](https://developers.cloudflare.com/d1/) resource allows you to manage Cloudflare D1 databases.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_device_dex_test: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					created: {
						type:             "string"
						description:      "Timestamp of when the Dex Test was created."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "Additional details about the test."
						description_kind: "markdown"
						required:         true
					}
					enabled: {
						type:             "bool"
						description:      "Determines whether or not the test is active."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					interval: {
						type:             "string"
						description:      "How often the test will run."
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "The name of the Device Dex Test. Must be unique."
						description_kind: "markdown"
						required:         true
					}
					updated: {
						type:             "string"
						description:      "Timestamp of when the Dex Test was last updated."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: data: {
					nesting_mode: "list"
					block: {
						attributes: {
							host: {
								type:             "string"
								description:      "The host URL for `http` test `kind`. For `traceroute`, it must be a valid hostname or IP address."
								description_kind: "markdown"
								required:         true
							}
							kind: {
								type:             "string"
								description:      "The type of Device Dex Test. Available values: `http`, `traceroute`."
								description_kind: "markdown"
								required:         true
							}
							method: {
								type:             "string"
								description:      "The http request method. Available values: `GET`."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "The configuration object which contains the details for the WARP client to conduct the test."
						description_kind: "markdown"
					}
					min_items: 1
					max_items: 1
				}
				description:      "Provides a Cloudflare Device Dex Test resource. Device Dex Tests allow for building location-aware device settings policies."
				description_kind: "markdown"
			}
		}
		cloudflare_device_managed_networks: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the Device Managed Network. Must be unique."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "The type of Device Managed Network. Available values: `tls`."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: config: {
					nesting_mode: "list"
					block: {
						attributes: {
							sha256: {
								type:             "string"
								description:      "The SHA-256 hash of the TLS certificate presented by the host found at tls_sockaddr. If absent, regular certificate verification (trusted roots, valid timestamp, etc) will be used to validate the certificate."
								description_kind: "markdown"
								required:         true
							}
							tls_sockaddr: {
								type:             "string"
								description:      "A network address of the form \"host:port\" that the WARP client will use to detect the presence of a TLS host."
								description_kind: "markdown"
								required:         true
							}
						}
						description:      "The configuration containing information for the WARP client to detect the managed network."
						description_kind: "markdown"
					}
					min_items: 1
					max_items: 1
				}
				description:      "Provides a Cloudflare Device Managed Network resource. Device managed networks allow for building location-aware device settings policies."
				description_kind: "markdown"
			}
		}
		cloudflare_device_policy_certificates: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "`true` if certificate generation is enabled."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare device policy certificates resource. Device
					policy certificate resources enable client device certificate
					generation.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_device_posture_integration: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					identifier: {
						type:             "string"
						description_kind: "plain"
						optional:         true
					}
					interval: {
						type:             "string"
						description:      "Indicates the frequency with which to poll the third-party API. Must be in the format `1h` or `30m`."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the device posture integration."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "The device posture integration type. Available values: `workspace_one`, `uptycs`, `crowdstrike_s2s`, `intune`, `kolide`, `sentinelone_s2s`, `tanium_s2s`."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: config: {
					nesting_mode: "list"
					block: {
						attributes: {
							api_url: {
								type:             "string"
								description:      "The third-party API's URL."
								description_kind: "markdown"
								optional:         true
							}
							auth_url: {
								type:             "string"
								description:      "The third-party authorization API URL."
								description_kind: "markdown"
								optional:         true
							}
							client_id: {
								type:             "string"
								description:      "The client identifier for authenticating API calls."
								description_kind: "markdown"
								optional:         true
							}
							client_key: {
								type:             "string"
								description:      "The client key for authenticating API calls."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							client_secret: {
								type:             "string"
								description:      "The client secret for authenticating API calls."
								description_kind: "markdown"
								optional:         true
								sensitive:        true
							}
							customer_id: {
								type:             "string"
								description:      "The customer identifier for authenticating API calls."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "The device posture integration's connection authorization parameters."
						description_kind: "markdown"
					}
				}
				description: """
					Provides a Cloudflare Device Posture Integration resource. Device
					posture integrations configure third-party data providers for device
					posture rules.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_device_posture_rule: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description_kind: "plain"
						optional:         true
					}
					expiration: {
						type:             "string"
						description:      "Expire posture results after the specified amount of time. Must be in the format `1h` or `30m`. Valid units are `h` and `m`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the device posture rule."
						description_kind: "markdown"
						optional:         true
					}
					schedule: {
						type:             "string"
						description:      "Tells the client when to run the device posture check. Must be in the format `1h` or `30m`. Valid units are `h` and `m`."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description:      "The device posture rule type. Available values: `serial_number`, `file`, `application`, `gateway`, `warp`, `domain_joined`, `os_version`, `disk_encryption`, `firewall`, `client_certificate`, `workspace_one`, `unique_client_id`, `crowdstrike_s2s`, `sentinelone`, `kolide`, `tanium_s2s`, `intune`, `sentinelone_s2s`."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					input: {
						nesting_mode: "list"
						block: {
							attributes: {
								active_threats: {
									type:             "number"
									description:      "The number of active threats from SentinelOne."
									description_kind: "markdown"
									optional:         true
								}
								certificate_id: {
									type:             "string"
									description:      "The UUID of a Cloudflare managed certificate."
									description_kind: "markdown"
									optional:         true
								}
								check_disks: {
									type: ["set", "string"]
									description:      "Specific volume(s) to check for encryption."
									description_kind: "markdown"
									optional:         true
								}
								cn: {
									type:             "string"
									description:      "The common name for a certificate."
									description_kind: "markdown"
									optional:         true
								}
								compliance_status: {
									type:             "string"
									description:      "The workspace one device compliance status. Available values: `compliant`, `noncompliant`."
									description_kind: "markdown"
									optional:         true
								}
								connection_id: {
									type:             "string"
									description:      "The workspace one connection id."
									description_kind: "markdown"
									optional:         true
								}
								count_operator: {
									type:             "string"
									description:      "The count comparison operator for kolide. Available values: `>`, `>=`, `<`, `<=`, `==`."
									description_kind: "markdown"
									optional:         true
								}
								domain: {
									type:             "string"
									description:      "The domain that the client must join."
									description_kind: "markdown"
									optional:         true
								}
								eid_last_seen: {
									type:             "string"
									description:      "The datetime a device last seen in RFC 3339 format from Tanium."
									description_kind: "markdown"
									optional:         true
								}
								enabled: {
									type:             "bool"
									description:      "True if the firewall must be enabled."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								exists: {
									type:             "bool"
									description:      "Checks if the file should exist."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								id: {
									type:             "string"
									description:      "The Teams List id."
									description_kind: "markdown"
									optional:         true
								}
								infected: {
									type:             "bool"
									description:      "True if SentinelOne device is infected."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								is_active: {
									type:             "bool"
									description:      "True if SentinelOne device is active."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								issue_count: {
									type:             "string"
									description:      "The number of issues for kolide."
									description_kind: "markdown"
									optional:         true
								}
								network_status: {
									type:             "string"
									description:      "The network status from SentinelOne. Available values: `connected`, `disconnected`, `disconnecting`, `connecting`."
									description_kind: "markdown"
									optional:         true
								}
								operator: {
									type:             "string"
									description:      "The version comparison operator. Available values: `>`, `>=`, `<`, `<=`, `==`."
									description_kind: "markdown"
									optional:         true
								}
								os: {
									type:             "string"
									description:      "OS signal score from Crowdstrike. Value must be between 1 and 100."
									description_kind: "markdown"
									optional:         true
								}
								os_distro_name: {
									type:             "string"
									description:      "The operating system excluding version information."
									description_kind: "markdown"
									optional:         true
								}
								os_distro_revision: {
									type:             "string"
									description:      "The operating system version excluding OS name information or release name."
									description_kind: "markdown"
									optional:         true
								}
								overall: {
									type:             "string"
									description:      "Overall ZTA score from Crowdstrike. Value must be between 1 and 100."
									description_kind: "markdown"
									optional:         true
								}
								path: {
									type:             "string"
									description:      "The path to the file."
									description_kind: "markdown"
									optional:         true
								}
								require_all: {
									type:             "bool"
									description:      "True if all drives must be encrypted."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								risk_level: {
									type:             "string"
									description:      "The risk level from Tanium. Available values: `low`, `medium`, `high`, `critical`."
									description_kind: "markdown"
									optional:         true
								}
								running: {
									type:             "bool"
									description:      "Checks if the application should be running."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								sensor_config: {
									type:             "string"
									description:      "Sensor signal score from Crowdstrike. Value must be between 1 and 100."
									description_kind: "markdown"
									optional:         true
								}
								sha256: {
									type:             "string"
									description:      "The sha256 hash of the file."
									description_kind: "markdown"
									optional:         true
								}
								thumbprint: {
									type:             "string"
									description:      "The thumbprint of the file certificate."
									description_kind: "markdown"
									optional:         true
								}
								total_score: {
									type:             "number"
									description:      "The total score from Tanium."
									description_kind: "markdown"
									optional:         true
								}
								version: {
									type:             "string"
									description:      "The operating system semantic version."
									description_kind: "markdown"
									optional:         true
								}
								version_operator: {
									type:             "string"
									description:      "The version comparison operator for crowdstrike. Available values: `>`, `>=`, `<`, `<=`, `==`."
									description_kind: "markdown"
									optional:         true
								}
							}
							description_kind: "plain"
						}
					}
					match: {
						nesting_mode: "list"
						block: {
							attributes: platform: {
								type:             "string"
								description:      "The platform of the device. Available values: `windows`, `mac`, `linux`, `android`, `ios`, `chromeos`."
								description_kind: "markdown"
								optional:         true
							}
							description:      "The conditions that the client must match to run the rule."
							description_kind: "markdown"
						}
					}
				}
				description: """
					Provides a Cloudflare Device Posture Rule resource. Device posture rules configure security policies for device posture checks.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_device_settings_policy: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					allow_mode_switch: {
						type:             "bool"
						description:      "Whether to allow mode switch for this policy."
						description_kind: "markdown"
						optional:         true
					}
					allow_updates: {
						type:             "bool"
						description:      "Whether to allow updates under this policy."
						description_kind: "markdown"
						optional:         true
					}
					allowed_to_leave: {
						type:             "bool"
						description:      "Whether to allow devices to leave the organization. Defaults to `true`."
						description_kind: "markdown"
						optional:         true
					}
					auto_connect: {
						type:             "number"
						description:      "The amount of time in minutes to reconnect after having been disabled."
						description_kind: "markdown"
						optional:         true
					}
					captive_portal: {
						type:             "number"
						description:      "The captive portal value for this policy. Defaults to `180`."
						description_kind: "markdown"
						optional:         true
					}
					default: {
						type:             "bool"
						description:      "Whether the policy refers to the default account policy."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of Policy."
						description_kind: "markdown"
						required:         true
					}
					disable_auto_fallback: {
						type:             "bool"
						description:      "Whether to disable auto fallback for this policy."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Whether the policy is enabled (cannot be set for default policies). Defaults to `true`."
						description_kind: "markdown"
						optional:         true
					}
					exclude_office_ips: {
						type:             "bool"
						description:      "Whether to add Microsoft IPs to split tunnel exclusions."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					match: {
						type:             "string"
						description:      "Wirefilter expression to match a device against when evaluating whether this policy should take effect for that device."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the policy."
						description_kind: "markdown"
						required:         true
					}
					precedence: {
						type:             "number"
						description:      "The precedence of the policy. Lower values indicate higher precedence."
						description_kind: "markdown"
						optional:         true
					}
					service_mode_v2_mode: {
						type:             "string"
						description:      "The service mode. Available values: `1dot1`, `warp`, `proxy`, `posture_only`, `warp_tunnel_only`. Defaults to `warp`."
						description_kind: "markdown"
						optional:         true
					}
					service_mode_v2_port: {
						type:             "number"
						description:      "The port to use for the proxy service mode. Required when using `service_mode_v2_mode`."
						description_kind: "markdown"
						optional:         true
					}
					support_url: {
						type:             "string"
						description:      "The support URL that will be opened when sending feedback."
						description_kind: "markdown"
						optional:         true
					}
					switch_locked: {
						type:             "bool"
						description:      "Enablement of the ZT client switch lock."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Provides a Cloudflare Device Settings Policy resource. Device policies configure settings applied to WARP devices."
				description_kind: "markdown"
			}
		}
		cloudflare_dlp_profile: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					allowed_match_count: {
						type:             "number"
						description:      "Related DLP policies will trigger when the match count exceeds the number set."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "Brief summary of the profile and its intended use."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the profile. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "The type of the profile. Available values: `custom`, `predefined`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: entry: {
					nesting_mode: "set"
					block: {
						attributes: {
							enabled: {
								type:             "bool"
								description:      "Whether the entry is active. Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							id: {
								type:             "string"
								description:      "Unique entry identifier."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							name: {
								type:             "string"
								description:      "Name of the entry to deploy."
								description_kind: "markdown"
								required:         true
							}
						}
						block_types: pattern: {
							nesting_mode: "list"
							block: {
								attributes: {
									regex: {
										type:             "string"
										description:      "The regex that defines the pattern."
										description_kind: "markdown"
										required:         true
									}
									validation: {
										type:             "string"
										description:      "The validation algorithm to apply with this pattern."
										description_kind: "markdown"
										optional:         true
									}
								}
								description_kind: "plain"
							}
							max_items: 1
						}
						description:      "List of entries to apply to the profile."
						description_kind: "markdown"
					}
					min_items: 1
				}
				description: """
					Provides a Cloudflare DLP Profile resource. Data Loss Prevention profiles
					are a set of entries that can be matched in HTTP bodies or files.
					They are referenced in Zero Trust Gateway rules.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_email_routing_address: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					created: {
						type:             "string"
						description:      "The date and time the destination address has been created."
						description_kind: "markdown"
						computed:         true
					}
					email: {
						type:             "string"
						description:      "The contact email address of the user. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					modified: {
						type:             "string"
						description:      "The date and time the destination address was last modified."
						description_kind: "markdown"
						computed:         true
					}
					tag: {
						type:             "string"
						description:      "Destination address identifier."
						description_kind: "markdown"
						computed:         true
					}
					verified: {
						type:             "string"
						description:      "The date and time the destination address has been verified. Null means not verified yet."
						description_kind: "markdown"
						computed:         true
					}
				}
				description: """
					Provides a resource for managing Email Routing Addresses.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_email_routing_catch_all: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Routing rule status."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Routing rule name."
						description_kind: "markdown"
						required:         true
					}
					tag: {
						type:             "string"
						description:      "Routing rule identifier."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					action: {
						nesting_mode: "set"
						block: {
							attributes: {
								type: {
									type:             "string"
									description:      "Type of supported action. Available values: `drop`, `forward`, `worker`."
									description_kind: "markdown"
									required:         true
								}
								value: {
									type: ["list", "string"]
									description:      "A list with items in the following form."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "List actions patterns."
							description_kind: "markdown"
						}
						min_items: 1
					}
					matcher: {
						nesting_mode: "set"
						block: {
							attributes: type: {
								type:             "string"
								description:      "Type of matcher. Available values: `all`."
								description_kind: "markdown"
								required:         true
							}
							description:      "Matching patterns to forward to your actions."
							description_kind: "markdown"
						}
						min_items: 1
					}
				}
				description: """
					Provides a resource for managing Email Routing Addresses catch all behaviour.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_email_routing_rule: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Routing rule status."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Routing rule name."
						description_kind: "markdown"
						required:         true
					}
					priority: {
						type:             "number"
						description:      "Priority of the routing rule."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					tag: {
						type:             "string"
						description:      "Routing rule identifier."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					action: {
						nesting_mode: "set"
						block: {
							attributes: {
								type: {
									type:             "string"
									description:      "Type of supported action."
									description_kind: "markdown"
									required:         true
								}
								value: {
									type: ["list", "string"]
									description:      "An array with items in the following form."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "List actions patterns."
							description_kind: "markdown"
						}
						min_items: 1
					}
					matcher: {
						nesting_mode: "set"
						block: {
							attributes: {
								field: {
									type:             "string"
									description:      "Field for type matcher."
									description_kind: "markdown"
									optional:         true
								}
								type: {
									type:             "string"
									description:      "Type of matcher."
									description_kind: "markdown"
									required:         true
								}
								value: {
									type:             "string"
									description:      "Value for matcher."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Matching patterns to forward to your actions."
							description_kind: "markdown"
						}
						min_items: 1
					}
				}
				description: """
					Provides a resource for managing Email Routing rules.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_email_routing_settings: {
			version: 0
			block: {
				attributes: {
					created: {
						type:             "string"
						description:      "The date and time the settings have been created."
						description_kind: "markdown"
						computed:         true
					}
					enabled: {
						type:             "bool"
						description:      "State of the zone settings for Email Routing. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					modified: {
						type:             "string"
						description:      "The date and time the settings have been modified."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Domain of your zone."
						description_kind: "markdown"
						computed:         true
					}
					skip_wizard: {
						type:             "bool"
						description:      "Flag to check if the user skipped the configuration wizard."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					status: {
						type:             "string"
						description:      "Show the state of your account, and the type or configuration error."
						description_kind: "markdown"
						computed:         true
					}
					tag: {
						type:             "string"
						description:      "Email Routing settings identifier."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource for managing Email Routing settings.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_fallback_domain: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					policy_id: {
						type:             "string"
						description:      "The settings policy for which to configure this fallback domain policy."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: domains: {
					nesting_mode: "set"
					block: {
						attributes: {
							description: {
								type:             "string"
								description:      "A description of the fallback domain, displayed in the client UI."
								description_kind: "markdown"
								optional:         true
							}
							dns_server: {
								type: ["list", "string"]
								description:      "A list of IP addresses to handle domain resolution."
								description_kind: "markdown"
								optional:         true
							}
							suffix: {
								type:             "string"
								description:      "The domain suffix to match when resolving locally."
								description_kind: "markdown"
								optional:         true
							}
						}
						description_kind: "plain"
					}
					min_items: 1
				}
				description: """
					Provides a Cloudflare Fallback Domain resource. Fallback domains are
					used to ignore DNS requests to a given list of domains. These DNS
					requests will be passed back to other DNS servers configured on
					existing network interfaces on the device.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_filter: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "A note that you can use to describe the purpose of the filter."
						description_kind: "markdown"
						optional:         true
					}
					expression: {
						type:             "string"
						description:      "The filter expression to be used."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					paused: {
						type:             "bool"
						description:      "Whether this filter is currently paused."
						description_kind: "markdown"
						optional:         true
					}
					ref: {
						type:             "string"
						description:      "Short reference tag to quickly select related rules."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Filter expressions that can be referenced across multiple features,
					e.g. Firewall Rules. See [what is a filter](https://developers.cloudflare.com/firewall/api/cf-filters/what-is-a-filter/)
					for more details and available fields and operators.

					"""
				description_kind: "markdown"
				deprecated:       true
			}
		}
		cloudflare_firewall_rule: {
			version: 0
			block: {
				attributes: {
					action: {
						type:             "string"
						description:      "The action to apply to a matched request. Available values: `block`, `challenge`, `allow`, `js_challenge`, `managed_challenge`, `log`, `bypass`."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "A description of the rule to help identify it."
						description_kind: "markdown"
						optional:         true
					}
					filter_id: {
						type:             "string"
						description:      "The identifier of the Filter to use for determining if the Firewall Rule should be triggered."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					paused: {
						type:             "bool"
						description:      "Whether this filter based firewall rule is currently paused."
						description_kind: "markdown"
						optional:         true
					}
					priority: {
						type:             "number"
						description:      "The priority of the rule to allow control of processing order. A lower number indicates high priority. If not provided, any rules with a priority will be sequenced before those without."
						description_kind: "markdown"
						optional:         true
					}
					products: {
						type: ["set", "string"]
						description:      "List of products to bypass for a request when the bypass action is used. Available values: `zoneLockdown`, `uaBlock`, `bic`, `hot`, `securityLevel`, `rateLimit`, `waf`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Define Firewall rules using filter expressions for more control over
					how traffic is matched to the rule. A filter expression permits
					selecting traffic by multiple criteria allowing greater freedom in
					rule creation.

					Filter expressions needs to be created first before using Firewall
					Rule.

					"""
				description_kind: "markdown"
				deprecated:       true
			}
		}
		cloudflare_gre_tunnel: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					cloudflare_gre_endpoint: {
						type:             "string"
						description:      "The IP address assigned to the Cloudflare side of the GRE tunnel."
						description_kind: "markdown"
						required:         true
					}
					customer_gre_endpoint: {
						type:             "string"
						description:      "The IP address assigned to the customer side of the GRE tunnel."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "Description of the GRE tunnel intent."
						description_kind: "markdown"
						optional:         true
					}
					health_check_enabled: {
						type:             "bool"
						description:      "Specifies if ICMP tunnel health checks are enabled."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					health_check_target: {
						type:             "string"
						description:      "The IP address of the customer endpoint that will receive tunnel health checks."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					health_check_type: {
						type:             "string"
						description:      "Specifies the ICMP echo type for the health check. Available values: `request`, `reply`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					interface_address: {
						type:             "string"
						description:      "31-bit prefix (/31 in CIDR notation) supporting 2 hosts, one for each side of the tunnel."
						description_kind: "markdown"
						required:         true
					}
					mtu: {
						type:             "number"
						description:      "Maximum Transmission Unit (MTU) in bytes for the GRE tunnel."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the GRE tunnel."
						description_kind: "markdown"
						required:         true
					}
					ttl: {
						type:             "number"
						description:      "Time To Live (TTL) in number of hops of the GRE tunnel."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description:      "Provides a resource, that manages GRE tunnels for Magic Transit."
				description_kind: "markdown"
			}
		}
		cloudflare_healthcheck: {
			version: 0
			block: {
				attributes: {
					address: {
						type:             "string"
						description:      "The hostname or IP address of the origin server to run health checks on."
						description_kind: "markdown"
						required:         true
					}
					allow_insecure: {
						type:             "bool"
						description:      "Do not validate the certificate when the health check uses HTTPS. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					check_regions: {
						type: ["list", "string"]
						description:      "A list of regions from which to run health checks. If not set, Cloudflare will pick a default region. Available values: `WNAM`, `ENAM`, `WEU`, `EEU`, `NSAM`, `SSAM`, `OC`, `ME`, `NAF`, `SAF`, `IN`, `SEAS`, `NEAS`, `ALL_REGIONS`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					consecutive_fails: {
						type:             "number"
						description:      "The number of consecutive fails required from a health check before changing the health to unhealthy. Defaults to `1`."
						description_kind: "markdown"
						optional:         true
					}
					consecutive_successes: {
						type:             "number"
						description:      "The number of consecutive successes required from a health check before changing the health to healthy. Defaults to `1`."
						description_kind: "markdown"
						optional:         true
					}
					created_on: {
						type:             "string"
						description:      "Creation time."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "A human-readable description of the health check."
						description_kind: "markdown"
						optional:         true
					}
					expected_body: {
						type:             "string"
						description:      "A case-insensitive sub-string to look for in the response body. If this string is not found the origin will be marked as unhealthy."
						description_kind: "markdown"
						optional:         true
					}
					expected_codes: {
						type: ["list", "string"]
						description:      "The expected HTTP response codes (e.g. '200') or code ranges (e.g. '2xx' for all codes starting with 2) of the health check."
						description_kind: "markdown"
						optional:         true
					}
					follow_redirects: {
						type:             "bool"
						description:      "Follow redirects if the origin returns a 3xx status code. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					interval: {
						type:             "number"
						description:      "The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase the load on the origin as we check from multiple locations. Defaults to `60`."
						description_kind: "markdown"
						optional:         true
					}
					method: {
						type:             "string"
						description:      "The HTTP method to use for the health check. Available values: `connection_established`, `GET`, `HEAD`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "Last modified time."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "A short name to identify the health check. Only alphanumeric characters, hyphens, and underscores are allowed."
						description_kind: "markdown"
						required:         true
					}
					path: {
						type:             "string"
						description:      "The endpoint path to health check against. Defaults to `/`."
						description_kind: "markdown"
						optional:         true
					}
					port: {
						type:             "number"
						description:      "Port number to connect to for the health check. Defaults to `80`."
						description_kind: "markdown"
						optional:         true
					}
					retries: {
						type:             "number"
						description:      "The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately. Defaults to `2`."
						description_kind: "markdown"
						optional:         true
					}
					suspended: {
						type:             "bool"
						description:      "If suspended, no health checks are sent to the origin. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					timeout: {
						type:             "number"
						description:      "The timeout (in seconds) before marking the health check as failed. Defaults to `5`."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description:      "The protocol to use for the health check. Available values: `TCP`, `HTTP`, `HTTPS`."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					header: {
						nesting_mode: "set"
						block: {
							attributes: {
								header: {
									type:             "string"
									description:      "The header name."
									description_kind: "markdown"
									required:         true
								}
								values: {
									type: ["set", "string"]
									description:      "A list of string values for the header."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden."
							description_kind: "markdown"
						}
					}
					timeouts: {
						nesting_mode: "single"
						block: {
							attributes: create: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							description_kind: "plain"
						}
					}
				}
				description: """
					Standalone Health Checks provide a way to monitor origin servers
					without needing a Cloudflare Load Balancer.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_hostname_tls_setting: {
			version: 0
			block: {
				attributes: {
					created_at: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					hostname: {
						type:             "string"
						description:      "Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					setting: {
						type:             "string"
						description:      "TLS setting name. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					updated_at: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					value: {
						type:             "string"
						description:      "TLS setting value."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare per-hostname TLS setting resource. Used to set TLS settings for hostnames under the specified zone.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_hostname_tls_setting_ciphers: {
			version: 0
			block: {
				attributes: {
					created_at: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					hostname: {
						type:             "string"
						description:      "Hostname that belongs to this zone name. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ports: {
						type: ["list", "number"]
						description:      "Ports to use within the IP rule."
						description_kind: "markdown"
						optional:         true
					}
					updated_at: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					value: {
						type: ["list", "string"]
						description:      "Ciphers suites value."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare per-hostname TLS setting resource, specifically for ciphers suites. Used to set ciphers suites for hostnames under the specified zone.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_ipsec_tunnel: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					allow_null_cipher: {
						type:             "bool"
						description:      "Specifies if this tunnel may use a null cipher (ENCR_NULL) in Phase 2. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					cloudflare_endpoint: {
						type:             "string"
						description:      "IP address assigned to the Cloudflare side of the IPsec tunnel."
						description_kind: "markdown"
						required:         true
					}
					customer_endpoint: {
						type:             "string"
						description:      "IP address assigned to the customer side of the IPsec tunnel."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "An optional description of the IPsec tunnel."
						description_kind: "markdown"
						optional:         true
					}
					fqdn_id: {
						type:             "string"
						description:      "`remote_id` in the form of a fqdn. This value is generated by cloudflare."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					health_check_enabled: {
						type:             "bool"
						description:      "Specifies if ICMP tunnel health checks are enabled. Default: `true`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					health_check_target: {
						type:             "string"
						description:      "The IP address of the customer endpoint that will receive tunnel health checks. Default: `<customer_gre_endpoint>`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					health_check_type: {
						type:             "string"
						description:      "Specifies the ICMP echo type for the health check (`request` or `reply`). Available values: `request`, `reply` Default: `reply`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					hex_id: {
						type:             "string"
						description:      "`remote_id` as a hex string. This value is generated by cloudflare."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					interface_address: {
						type:             "string"
						description:      "31-bit prefix (/31 in CIDR notation) supporting 2 hosts, one for each side of the tunnel."
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "Name of the IPsec tunnel."
						description_kind: "markdown"
						required:         true
					}
					psk: {
						type:             "string"
						description:      "Pre shared key to be used with the IPsec tunnel. If left unset, it will be autogenerated."
						description_kind: "markdown"
						optional:         true
						computed:         true
						sensitive:        true
					}
					remote_id: {
						type:             "string"
						description:      "ID to be used while setting up the IPsec tunnel. This value is generated by cloudflare."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					user_id: {
						type:             "string"
						description:      "`remote_id` in the form of an email address. This value is generated by cloudflare."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description: """
					Provides a resource, that manages IPsec tunnels for Magic Transit.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_list: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "An optional description of the list."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					kind: {
						type:             "string"
						description:      "The type of items the list will contain. Available values: `ip`, `redirect`, `hostname`, `asn`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "The name of the list. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: item: {
					nesting_mode: "set"
					block: {
						attributes: comment: {
							type:             "string"
							description:      "An optional comment for the item."
							description_kind: "markdown"
							optional:         true
						}
						block_types: value: {
							nesting_mode: "list"
							block: {
								attributes: {
									asn: {
										type:             "number"
										description_kind: "plain"
										optional:         true
									}
									ip: {
										type:             "string"
										description_kind: "plain"
										optional:         true
									}
								}
								block_types: {
									hostname: {
										nesting_mode: "list"
										block: {
											attributes: url_hostname: {
												type:             "string"
												description:      "The FQDN to match on. Wildcard sub-domain matching is allowed. Eg. *.abc.com."
												description_kind: "markdown"
												required:         true
											}
											description_kind: "plain"
										}
									}
									redirect: {
										nesting_mode: "list"
										block: {
											attributes: {
												include_subdomains: {
													type:             "string"
													description:      "Whether the redirect also matches subdomains of the source url. Available values: `disabled`, `enabled`."
													description_kind: "markdown"
													optional:         true
												}
												preserve_path_suffix: {
													type:             "string"
													description:      "Whether to preserve the path suffix when doing subpath matching. Available values: `disabled`, `enabled`."
													description_kind: "markdown"
													optional:         true
												}
												preserve_query_string: {
													type:             "string"
													description:      "Whether the redirect target url should keep the query string of the request's url. Available values: `disabled`, `enabled`."
													description_kind: "markdown"
													optional:         true
												}
												source_url: {
													type:             "string"
													description:      "The source url of the redirect."
													description_kind: "markdown"
													required:         true
												}
												status_code: {
													type:             "number"
													description:      "The status code to be used when redirecting a request."
													description_kind: "markdown"
													optional:         true
												}
												subpath_matching: {
													type:             "string"
													description:      "Whether the redirect also matches subpaths of the source url. Available values: `disabled`, `enabled`."
													description_kind: "markdown"
													optional:         true
												}
												target_url: {
													type:             "string"
													description:      "The target url of the redirect."
													description_kind: "markdown"
													required:         true
												}
											}
											description_kind: "plain"
										}
									}
								}
								description_kind: "plain"
							}
							min_items: 1
							max_items: 1
						}
						description_kind: "plain"
					}
				}
				description: """
					Provides Lists (IPs, Redirects, Hostname, ASNs) to be used in Edge
					Rules Engine across all zones within the same account.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_list_item: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					asn: {
						type:             "number"
						description:      "Autonomous system number to include in the list. Must provide only one of `ip`, `redirect`, `hostname`, `asn`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					comment: {
						type:             "string"
						description:      "An optional comment for the item."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ip: {
						type:             "string"
						description:      "IP address to include in the list. Must provide only one of `ip`, `redirect`, `hostname`, `asn`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					list_id: {
						type:             "string"
						description:      "The list identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					hostname: {
						nesting_mode: "list"
						block: {
							attributes: url_hostname: {
								type:             "string"
								description:      "The FQDN to match on."
								description_kind: "markdown"
								required:         true
							}
							description:      "Redirect configuration to store in the list. Must provide only one of `ip`, `redirect`, `hostname`, `asn`. **Modifying this attribute will force creation of a new resource.**"
							description_kind: "markdown"
						}
						max_items: 1
					}
					redirect: {
						nesting_mode: "list"
						block: {
							attributes: {
								include_subdomains: {
									type:             "string"
									description:      "Whether the redirect also matches subdomains of the source url. Available values: `disabled`, `enabled`."
									description_kind: "markdown"
									optional:         true
								}
								preserve_path_suffix: {
									type:             "string"
									description:      "Whether to preserve the path suffix when doing subpath matching. Available values: `disabled`, `enabled`."
									description_kind: "markdown"
									optional:         true
								}
								preserve_query_string: {
									type:             "string"
									description:      "Whether the redirect target url should keep the query string of the request's url. Available values: `disabled`, `enabled`."
									description_kind: "markdown"
									optional:         true
								}
								source_url: {
									type:             "string"
									description:      "The source url of the redirect."
									description_kind: "markdown"
									required:         true
								}
								status_code: {
									type:             "number"
									description:      "The status code to be used when redirecting a request."
									description_kind: "markdown"
									optional:         true
								}
								subpath_matching: {
									type:             "string"
									description:      "Whether the redirect also matches subpaths of the source url. Available values: `disabled`, `enabled`."
									description_kind: "markdown"
									optional:         true
								}
								target_url: {
									type:             "string"
									description:      "The target url of the redirect."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Redirect configuration to store in the list. Must provide only one of `ip`, `redirect`, `hostname`, `asn`. **Modifying this attribute will force creation of a new resource.**"
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description: """
					Provides individual list items (IPs, Redirects) to be used in Edge Rules Engine
					across all zones within the same account.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_load_balancer: {
			version: 1
			block: {
				attributes: {
					created_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the load balancer was created."
						description_kind: "markdown"
						computed:         true
					}
					default_pool_ids: {
						type: ["list", "string"]
						description:      "A list of pool IDs ordered by their failover priority. Used whenever [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) are not defined."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "Free text description."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Enable or disable the load balancer. Defaults to `true`."
						description_kind: "markdown"
						optional:         true
					}
					fallback_pool_id: {
						type:             "string"
						description:      "The pool ID to use when all other pools are detected as unhealthy."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the load balancer was last modified."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The DNS hostname to associate with your load balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the load balancer will take precedence and the DNS record will not be used."
						description_kind: "markdown"
						required:         true
					}
					proxied: {
						type:             "bool"
						description:      "Whether the hostname gets Cloudflare's origin protection. Defaults to `false`. Conflicts with `ttl`."
						description_kind: "markdown"
						optional:         true
					}
					session_affinity: {
						type:             "string"
						description:      "Specifies the type of session affinity the load balancer should use unless specified as `none` or `\"\"` (default). With value `cookie`, on the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy then a new origin server is calculated and used. Value `ip_cookie` behaves the same as `cookie` except the initial origin selection is stable and based on the client's IP address. Available values: `\"\"`, `none`, `cookie`, `ip_cookie`, `header`. Defaults to `none`."
						description_kind: "markdown"
						optional:         true
					}
					session_affinity_ttl: {
						type:             "number"
						description:      "Time, in seconds, until this load balancer's session affinity cookie expires after being created. This parameter is ignored unless a supported session affinity policy is set. The current default of `82800` (23 hours) will be used unless [`session_affinity_ttl`](#session_affinity_ttl) is explicitly set. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. Valid values are between `1800` and `604800`."
						description_kind: "markdown"
						optional:         true
					}
					steering_policy: {
						type:             "string"
						description:      "The method the load balancer uses to determine the route to your origin. Value `off` uses [`default_pool_ids`](#default_pool_ids). Value `geo` uses [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools). For non-proxied requests, the [`country`](#country) for [`country_pools`](#country_pools) is determined by [`location_strategy`](#location_strategy). Value `random` selects a pool randomly. Value `dynamic_latency` uses round trip time to select the closest pool in [`default_pool_ids`](#default_pool_ids) (requires pool health checks). Value `proximity` uses the pools' latitude and longitude to select the closest pool using the Cloudflare PoP location for proxied requests or the location determined by [`location_strategy`](#location_strategy) for non-proxied requests. Value `least_outstanding_requests` selects a pool by taking into consideration [`random_steering`](#random_steering) weights, as well as each pool's number of outstanding requests. Pools with more pending requests are weighted proportionately less relative to others. Value `\"\"` maps to `geo` if you use [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) otherwise `off`. Available values: `off`, `geo`, `dynamic_latency`, `random`, `proximity`, `least_outstanding_requests`, `\"\"` Defaults to `\"\"`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					ttl: {
						type:             "number"
						description:      "Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This cannot be set for proxied load balancers. Defaults to `30`. Conflicts with `proxied`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone ID to add the load balancer to. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					adaptive_routing: {
						nesting_mode: "set"
						block: {
							attributes: failover_across_pools: {
								type:             "bool"
								description:      "Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set `false`, zero-downtime failover will only occur between origins within the same pool. Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							description:      "Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests."
							description_kind: "markdown"
						}
					}
					country_pools: {
						nesting_mode: "set"
						block: {
							attributes: {
								country: {
									type:             "string"
									description:      "A country code which can be determined with the Load Balancing Regions API described [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/). Multiple entries should not be specified with the same country."
									description_kind: "markdown"
									required:         true
								}
								pool_ids: {
									type: ["list", "string"]
									description:      "A list of pool IDs in failover priority to use in the given country."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "A set containing mappings of country codes to a list of pool IDs (ordered by their failover priority) for the given country."
							description_kind: "markdown"
						}
					}
					location_strategy: {
						nesting_mode: "set"
						block: {
							attributes: {
								mode: {
									type:             "string"
									description:      "Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful. Value `pop` will use the Cloudflare PoP location. Value `resolver_ip` will use the DNS resolver GeoIP location. If the GeoIP lookup is unsuccessful, it will use the Cloudflare PoP location. Available values: `pop`, `resolver_ip`. Defaults to `pop`."
									description_kind: "markdown"
									optional:         true
								}
								prefer_ecs: {
									type:             "string"
									description:      "Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location. Value `always` will always prefer ECS, `never` will never prefer ECS, `proximity` will prefer ECS only when [`steering_policy=\"proximity\"`](#steering_policy), and `geo` will prefer ECS only when [`steering_policy=\"geo\"`](#steering_policy). Available values: `always`, `never`, `proximity`, `geo`. Defaults to `proximity`."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Controls location-based steering for non-proxied requests."
							description_kind: "markdown"
						}
					}
					pop_pools: {
						nesting_mode: "set"
						block: {
							attributes: {
								pool_ids: {
									type: ["list", "string"]
									description:      "A list of pool IDs in failover priority to use for traffic reaching the given PoP."
									description_kind: "markdown"
									required:         true
								}
								pop: {
									type:             "string"
									description:      "A 3-letter code for the Point-of-Presence. Allowed values can be found in the list of datacenters on the [status page](https://www.cloudflarestatus.com/). Multiple entries should not be specified with the same PoP."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "A set containing mappings of Cloudflare Point-of-Presence (PoP) identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). This feature is only available to enterprise customers."
							description_kind: "markdown"
						}
					}
					random_steering: {
						nesting_mode: "set"
						block: {
							attributes: {
								default_weight: {
									type:             "number"
									description:      "The default weight for pools in the load balancer that are not specified in the [`pool_weights`](#pool_weights) map."
									description_kind: "markdown"
									optional:         true
								}
								pool_weights: {
									type: ["map", "number"]
									description:      "A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Configures pool weights. When [`steering_policy=\"random\"`](#steering_policy), a random pool is selected with probability proportional to pool weights. When [`steering_policy=\"least_outstanding_requests\"`](#steering_policy), pool weights are used to scale each pool's outstanding requests."
							description_kind: "markdown"
						}
					}
					region_pools: {
						nesting_mode: "set"
						block: {
							attributes: {
								pool_ids: {
									type: ["list", "string"]
									description:      "A list of pool IDs in failover priority to use in the given region."
									description_kind: "markdown"
									required:         true
								}
								region: {
									type:             "string"
									description:      "A region code which must be in the list defined [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/#list-of-load-balancer-regions). Multiple entries should not be specified with the same region."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "A set containing mappings of region codes to a list of pool IDs (ordered by their failover priority) for the given region."
							description_kind: "markdown"
						}
					}
					rules: {
						nesting_mode: "list"
						block: {
							attributes: {
								condition: {
									type:             "string"
									description:      "The statement to evaluate to determine if this rule's effects should be applied. An empty condition is always true. See [load balancing rules](https://developers.cloudflare.com/load-balancing/understand-basics/load-balancing-rules)."
									description_kind: "markdown"
									optional:         true
								}
								disabled: {
									type:             "bool"
									description:      "A disabled rule will not be executed."
									description_kind: "markdown"
									optional:         true
								}
								name: {
									type:             "string"
									description:      "Human readable name for this rule."
									description_kind: "markdown"
									required:         true
								}
								priority: {
									type:             "number"
									description:      "Priority used when determining the order of rule execution. Lower values are executed first. If not provided, the list order will be used."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
								terminates: {
									type:             "bool"
									description:      "Terminates indicates that if this rule is true no further rules should be executed. Note: setting a [`fixed_response`](#fixed_response) forces this field to `true`."
									description_kind: "markdown"
									optional:         true
									computed:         true
								}
							}
							block_types: {
								fixed_response: {
									nesting_mode: "list"
									block: {
										attributes: {
											content_type: {
												type:             "string"
												description:      "The value of the HTTP context-type header for this fixed response."
												description_kind: "markdown"
												optional:         true
											}
											location: {
												type:             "string"
												description:      "The value of the HTTP location header for this fixed response."
												description_kind: "markdown"
												optional:         true
											}
											message_body: {
												type:             "string"
												description:      "The text used as the html body for this fixed response."
												description_kind: "markdown"
												optional:         true
											}
											status_code: {
												type:             "number"
												description:      "The HTTP status code used for this fixed response."
												description_kind: "markdown"
												optional:         true
											}
										}
										description:      "Settings for a HTTP response to return directly to the eyeball if the condition is true. Note: [`overrides`](#overrides) or [`fixed_response`](#fixed_response) must be set."
										description_kind: "markdown"
									}
									max_items: 1
								}
								overrides: {
									nesting_mode: "list"
									block: {
										attributes: {
											default_pools: {
												type: ["list", "string"]
												description:      "A list of pool IDs ordered by their failover priority. Used whenever [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) are not defined."
												description_kind: "markdown"
												optional:         true
											}
											fallback_pool: {
												type:             "string"
												description:      "The pool ID to use when all other pools are detected as unhealthy."
												description_kind: "markdown"
												optional:         true
											}
											session_affinity: {
												type:             "string"
												description:      "Configure attributes for session affinity."
												description_kind: "markdown"
												optional:         true
											}
											session_affinity_ttl: {
												type:             "number"
												description:      "Time, in seconds, until this load balancer's session affinity cookie expires after being created. This parameter is ignored unless a supported session affinity policy is set. The current default of `82800` (23 hours) will be used unless [`session_affinity_ttl`](#session_affinity_ttl) is explicitly set. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. Valid values are between `1800` and `604800`."
												description_kind: "markdown"
												optional:         true
											}
											steering_policy: {
												type:             "string"
												description:      "The method the load balancer uses to determine the route to your origin. Value `off` uses [`default_pool_ids`](#default_pool_ids). Value `geo` uses [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools). For non-proxied requests, the [`country`](#country) for [`country_pools`](#country_pools) is determined by [`location_strategy`](#location_strategy). Value `random` selects a pool randomly. Value `dynamic_latency` uses round trip time to select the closest pool in [`default_pool_ids`](#default_pool_ids) (requires pool health checks). Value `proximity` uses the pools' latitude and longitude to select the closest pool using the Cloudflare PoP location for proxied requests or the location determined by [`location_strategy`](#location_strategy) for non-proxied requests. Value `least_outstanding_requests` selects a pool by taking into consideration [`random_steering`](#random_steering) weights, as well as each pool's number of outstanding requests. Pools with more pending requests are weighted proportionately less relative to others. Value `\"\"` maps to `geo` if you use [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) otherwise `off`. Available values: `off`, `geo`, `dynamic_latency`, `random`, `proximity`, `least_outstanding_requests`, `\"\"` Defaults to `\"\"`."
												description_kind: "markdown"
												optional:         true
											}
											ttl: {
												type:             "number"
												description:      "Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This cannot be set for proxied load balancers. Defaults to `30`."
												description_kind: "markdown"
												optional:         true
											}
										}
										block_types: {
											adaptive_routing: {
												nesting_mode: "set"
												block: {
													attributes: failover_across_pools: {
														type:             "bool"
														description:      "Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set `false`, zero-downtime failover will only occur between origins within the same pool."
														description_kind: "markdown"
														optional:         true
													}
													description:      "Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests."
													description_kind: "markdown"
												}
											}
											country_pools: {
												nesting_mode: "set"
												block: {
													attributes: {
														country: {
															type:             "string"
															description:      "A country code which can be determined with the Load Balancing Regions API described [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/). Multiple entries should not be specified with the same country."
															description_kind: "markdown"
															required:         true
														}
														pool_ids: {
															type: ["list", "string"]
															description:      "A list of pool IDs in failover priority to use in the given country."
															description_kind: "markdown"
															required:         true
														}
													}
													description:      "A set containing mappings of country codes to a list of pool IDs (ordered by their failover priority) for the given country."
													description_kind: "markdown"
												}
											}
											location_strategy: {
												nesting_mode: "set"
												block: {
													attributes: {
														mode: {
															type:             "string"
															description:      "Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful. Value `pop` will use the Cloudflare PoP location. Value `resolver_ip` will use the DNS resolver GeoIP location. If the GeoIP lookup is unsuccessful, it will use the Cloudflare PoP location. Available values: `pop`, `resolver_ip`."
															description_kind: "markdown"
															optional:         true
														}
														prefer_ecs: {
															type:             "string"
															description:      "Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location. Value `always` will always prefer ECS, `never` will never prefer ECS, `proximity` will prefer ECS only when [`steering_policy=\"proximity\"`](#steering_policy), and `geo` will prefer ECS only when [`steering_policy=\"geo\"`](#steering_policy). Available values: `always`, `never`, `proximity`, `geo`."
															description_kind: "markdown"
															optional:         true
														}
													}
													description:      "Controls location-based steering for non-proxied requests."
													description_kind: "markdown"
												}
											}
											pop_pools: {
												nesting_mode: "set"
												block: {
													attributes: {
														pool_ids: {
															type: ["list", "string"]
															description:      "A list of pool IDs in failover priority to use for traffic reaching the given PoP."
															description_kind: "markdown"
															required:         true
														}
														pop: {
															type:             "string"
															description:      "A 3-letter code for the Point-of-Presence. Allowed values can be found in the list of datacenters on the [status page](https://www.cloudflarestatus.com/). Multiple entries should not be specified with the same PoP."
															description_kind: "markdown"
															required:         true
														}
													}
													description:      "A set containing mappings of Cloudflare Point-of-Presence (PoP) identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). This feature is only available to enterprise customers."
													description_kind: "markdown"
												}
											}
											random_steering: {
												nesting_mode: "set"
												block: {
													attributes: {
														default_weight: {
															type:             "number"
															description:      "The default weight for pools in the load balancer that are not specified in the [`pool_weights`](#pool_weights) map."
															description_kind: "markdown"
															optional:         true
														}
														pool_weights: {
															type: ["map", "number"]
															description:      "A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer."
															description_kind: "markdown"
															optional:         true
														}
													}
													description:      "Configures pool weights. When [`steering_policy=\"random\"`](#steering_policy), a random pool is selected with probability proportional to pool weights. When [`steering_policy=\"least_outstanding_requests\"`](#steering_policy), pool weights are used to scale each pool's outstanding requests."
													description_kind: "markdown"
												}
											}
											region_pools: {
												nesting_mode: "set"
												block: {
													attributes: {
														pool_ids: {
															type: ["list", "string"]
															description:      "A list of pool IDs in failover priority to use in the given region."
															description_kind: "markdown"
															required:         true
														}
														region: {
															type:             "string"
															description:      "A region code which must be in the list defined [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/#list-of-load-balancer-regions). Multiple entries should not be specified with the same region."
															description_kind: "markdown"
															required:         true
														}
													}
													description:      "A set containing mappings of region codes to a list of pool IDs (ordered by their failover priority) for the given region."
													description_kind: "markdown"
												}
											}
											session_affinity_attributes: {
												nesting_mode: "set"
												block: {
													attributes: {
														headers: {
															type: ["list", "string"]
															description:      "Configures the HTTP header names to use when header session affinity is enabled."
															description_kind: "markdown"
															optional:         true
														}
														require_all_headers: {
															type:             "bool"
															description:      "Configures how headers are used when header session affinity is enabled. Set to true to require all headers to be present on requests in order for sessions to be created or false to require at least one header to be present. Defaults to `false`."
															description_kind: "markdown"
															optional:         true
														}
														samesite: {
															type:             "string"
															description:      "Configures the SameSite attribute on session affinity cookie. Value `Auto` will be translated to `Lax` or `None` depending if Always Use HTTPS is enabled. Note: when using value `None`, then you can not set [`secure=\"Never\"`](#secure). Available values: `Auto`, `Lax`, `None`, `Strict`."
															description_kind: "markdown"
															optional:         true
														}
														secure: {
															type:             "string"
															description:      "Configures the Secure attribute on session affinity cookie. Value `Always` indicates the Secure attribute will be set in the Set-Cookie header, `Never` indicates the Secure attribute will not be set, and `Auto` will set the Secure attribute depending if Always Use HTTPS is enabled. Available values: `Auto`, `Always`, `Never`."
															description_kind: "markdown"
															optional:         true
														}
														zero_downtime_failover: {
															type:             "string"
															description:      "Configures the zero-downtime failover between origins within a pool when session affinity is enabled. Value `none` means no failover takes place for sessions pinned to the origin. Value `temporary` means traffic will be sent to another other healthy origin until the originally pinned origin is available; note that this can potentially result in heavy origin flapping. Value `sticky` means the session affinity cookie is updated and subsequent requests are sent to the new origin. This feature is currently incompatible with Argo, Tiered Cache, and Bandwidth Alliance. Available values: `none`, `temporary`, `sticky`."
															description_kind: "markdown"
															optional:         true
														}
													}
													description:      "Configure attributes for session affinity. Note that the property [`drain_duration`](#drain_duration) is not currently supported as a rule override."
													description_kind: "markdown"
												}
											}
										}
										description:      "The load balancer settings to alter if this rule's [`condition`](#condition) is true. Note: [`overrides`](#overrides) or [`fixed_response`](#fixed_response) must be set."
										description_kind: "markdown"
									}
								}
							}
							description:      "A list of rules for this load balancer to execute."
							description_kind: "markdown"
						}
					}
					session_affinity_attributes: {
						nesting_mode: "set"
						block: {
							attributes: {
								drain_duration: {
									type:             "number"
									description:      "Configures the drain duration in seconds. This field is only used when session affinity is enabled on the load balancer. Defaults to `0`."
									description_kind: "markdown"
									optional:         true
								}
								headers: {
									type: ["list", "string"]
									description:      "Configures the HTTP header names to use when header session affinity is enabled."
									description_kind: "markdown"
									optional:         true
								}
								require_all_headers: {
									type:             "bool"
									description:      "Configures how headers are used when header session affinity is enabled. Set to true to require all headers to be present on requests in order for sessions to be created or false to require at least one header to be present. Defaults to `false`."
									description_kind: "markdown"
									optional:         true
								}
								samesite: {
									type:             "string"
									description:      "Configures the SameSite attribute on session affinity cookie. Value `Auto` will be translated to `Lax` or `None` depending if Always Use HTTPS is enabled. Note: when using value `None`, then you can not set [`secure=\"Never\"`](#secure). Available values: `Auto`, `Lax`, `None`, `Strict`. Defaults to `Auto`."
									description_kind: "markdown"
									optional:         true
								}
								secure: {
									type:             "string"
									description:      "Configures the Secure attribute on session affinity cookie. Value `Always` indicates the Secure attribute will be set in the Set-Cookie header, `Never` indicates the Secure attribute will not be set, and `Auto` will set the Secure attribute depending if Always Use HTTPS is enabled. Available values: `Auto`, `Always`, `Never`. Defaults to `Auto`."
									description_kind: "markdown"
									optional:         true
								}
								zero_downtime_failover: {
									type:             "string"
									description:      "Configures the zero-downtime failover between origins within a pool when session affinity is enabled. Value `none` means no failover takes place for sessions pinned to the origin. Value `temporary` means traffic will be sent to another other healthy origin until the originally pinned origin is available; note that this can potentially result in heavy origin flapping. Value `sticky` means the session affinity cookie is updated and subsequent requests are sent to the new origin. This feature is currently incompatible with Argo, Tiered Cache, and Bandwidth Alliance. Available values: `none`, `temporary`, `sticky`. Defaults to `none`."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Configure attributes for session affinity."
							description_kind: "markdown"
						}
					}
				}
				description: """
					Provides a Cloudflare Load Balancer resource. This sits in front of
					a number of defined pools of origins and provides various options
					for geographically-aware load balancing. Note that the load balancing
					feature must be enabled in your Cloudflare account before you can use
					this resource.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_load_balancer_monitor: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					allow_insecure: {
						type:             "bool"
						description:      "Do not validate the certificate when monitor use HTTPS.  Only valid if `type` is \"http\" or \"https\"."
						description_kind: "markdown"
						optional:         true
					}
					consecutive_down: {
						type:             "number"
						description:      "To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times. Defaults to `0`."
						description_kind: "markdown"
						optional:         true
					}
					consecutive_up: {
						type:             "number"
						description:      "To be marked healthy the monitored origin must pass this healthcheck N consecutive times. Defaults to `0`."
						description_kind: "markdown"
						optional:         true
					}
					created_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the load balancer monitor was created."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "Free text description."
						description_kind: "markdown"
						optional:         true
					}
					expected_body: {
						type:             "string"
						description:      "A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. Only valid if `type` is \"http\" or \"https\"."
						description_kind: "markdown"
						optional:         true
					}
					expected_codes: {
						type:             "string"
						description:      "The expected HTTP response code or code range of the health check. Eg `2xx`. Only valid and required if `type` is \"http\" or \"https\"."
						description_kind: "markdown"
						optional:         true
					}
					follow_redirects: {
						type:             "bool"
						description:      "Follow redirects if returned by the origin. Only valid if `type` is \"http\" or \"https\"."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					interval: {
						type:             "number"
						description:      "The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations. Defaults to `60`."
						description_kind: "markdown"
						optional:         true
					}
					method: {
						type:             "string"
						description:      "The method to use for the health check."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the load balancer monitor was last modified."
						description_kind: "markdown"
						computed:         true
					}
					path: {
						type:             "string"
						description:      "The endpoint path to health check against."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					port: {
						type:             "number"
						description:      "The port number to use for the healthcheck, required when creating a TCP monitor."
						description_kind: "markdown"
						optional:         true
					}
					probe_zone: {
						type:             "string"
						description:      "Assign this monitor to emulate the specified zone while probing. Only valid if `type` is \"http\" or \"https\"."
						description_kind: "markdown"
						optional:         true
					}
					retries: {
						type:             "number"
						description:      "The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately. Defaults to `2`."
						description_kind: "markdown"
						optional:         true
					}
					timeout: {
						type:             "number"
						description:      "The timeout (in seconds) before marking the health check as failed. Defaults to `5`."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description:      "The protocol to use for the healthcheck. Available values: `http`, `https`, `tcp`, `udp_icmp`, `icmp_ping`, `smtp`. Defaults to `http`."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: header: {
					nesting_mode: "set"
					block: {
						attributes: {
							header: {
								type:             "string"
								description:      "The header name."
								description_kind: "markdown"
								required:         true
							}
							values: {
								type: ["set", "string"]
								description:      "A list of values for the header."
								description_kind: "markdown"
								required:         true
							}
						}
						description:      "The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden."
						description_kind: "markdown"
					}
				}
				description: """
					If Cloudflare's Load Balancing to load-balance across multiple
					origin servers or data centers, you configure one of these Monitors
					to actively check the availability of those servers over HTTP(S) or
					TCP.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_load_balancer_pool: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					check_regions: {
						type: ["set", "string"]
						description:      "A list of regions (specified by region code) from which to run health checks. Empty means every Cloudflare data center (the default), but requires an Enterprise plan. Region codes can be found [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api)."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					created_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the load balancer was created."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "Free text description."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Whether to enable (the default) this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any). Defaults to `true`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					latitude: {
						type:             "number"
						description:      "The latitude this pool is physically located at; used for proximity steering."
						description_kind: "markdown"
						optional:         true
					}
					longitude: {
						type:             "number"
						description:      "The longitude this pool is physically located at; used for proximity steering."
						description_kind: "markdown"
						optional:         true
					}
					minimum_origins: {
						type:             "number"
						description:      "The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and we will failover to the next available pool. Defaults to `1`."
						description_kind: "markdown"
						optional:         true
					}
					modified_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the load balancer was last modified."
						description_kind: "markdown"
						computed:         true
					}
					monitor: {
						type:             "string"
						description:      "The ID of the Monitor to use for health checking origins within this pool."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "A short name (tag) for the pool."
						description_kind: "markdown"
						required:         true
					}
					notification_email: {
						type:             "string"
						description:      "The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					load_shedding: {
						nesting_mode: "set"
						block: {
							attributes: {
								default_percent: {
									type:             "number"
									description:      "Percent of traffic to shed 0 - 100. Defaults to `0`."
									description_kind: "markdown"
									optional:         true
								}
								default_policy: {
									type:             "string"
									description:      "Method of shedding traffic. Available values: `\"\"`, `hash`, `random`. Defaults to `\"\"`."
									description_kind: "markdown"
									optional:         true
								}
								session_percent: {
									type:             "number"
									description:      "Percent of session traffic to shed 0 - 100. Defaults to `0`."
									description_kind: "markdown"
									optional:         true
								}
								session_policy: {
									type:             "string"
									description:      "Method of shedding traffic. Available values: `\"\"`, `hash`. Defaults to `\"\"`."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Setting for controlling load shedding for this pool."
							description_kind: "markdown"
						}
					}
					origin_steering: {
						nesting_mode: "set"
						block: {
							attributes: policy: {
								type:             "string"
								description:      "Origin steering policy to be used. Value `random` selects an origin randomly. Value `hash` selects an origin by computing a hash over the CF-Connecting-IP address. Value `least_outstanding_requests` selects an origin by taking into consideration origin weights, as well as each origin's number of outstanding requests. Origins with more pending requests are weighted proportionately less relative to others. Available values: `\"\"`, `hash`, `random`, `least_outstanding_requests`. Defaults to `random`."
								description_kind: "markdown"
								optional:         true
							}
							description:      "Set an origin steering policy to control origin selection within a pool."
							description_kind: "markdown"
						}
					}
					origins: {
						nesting_mode: "set"
						block: {
							attributes: {
								address: {
									type:             "string"
									description:      "The IP address (IPv4 or IPv6) of the origin, or the publicly addressable hostname."
									description_kind: "markdown"
									required:         true
								}
								enabled: {
									type:             "bool"
									description:      "Whether this origin is enabled. Disabled origins will not receive traffic and are excluded from health checks. Defaults to `true`."
									description_kind: "markdown"
									optional:         true
								}
								name: {
									type:             "string"
									description:      "A human-identifiable name for the origin."
									description_kind: "markdown"
									required:         true
								}
								weight: {
									type:             "number"
									description:      "The weight (0.01 - 1.00) of this origin, relative to other origins in the pool. Equal values mean equal weighting. A weight of 0 means traffic will not be sent to this origin, but health is still checked. When [`origin_steering.policy=\"least_outstanding_requests\"`](#policy), weight is used to scale the origin's outstanding requests. Defaults to `1`."
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: header: {
								nesting_mode: "set"
								block: {
									attributes: {
										header: {
											type:             "string"
											description:      "HTTP Header name."
											description_kind: "markdown"
											required:         true
										}
										values: {
											type: ["set", "string"]
											description:      "Values for the HTTP headers."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "HTTP request headers."
									description_kind: "markdown"
								}
							}
							description:      "The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy."
							description_kind: "markdown"
						}
						min_items: 1
					}
				}
				description: """
					Provides a Cloudflare Load Balancer pool resource. This provides a
					pool of origins that can be used by a Cloudflare Load Balancer.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_logpull_retention: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Whether you wish to retain logs or not."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Allows management of the Logpull Retention settings used to control whether or not to retain HTTP request logs."
				description_kind: "markdown"
			}
		}
		cloudflare_logpush_job: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`."
						description_kind: "markdown"
						optional:         true
					}
					dataset: {
						type:             "string"
						description:      "The kind of the dataset to use with the logpush job. Available values: `access_requests`, `firewall_events`, `http_requests`, `spectrum_events`, `nel_reports`, `audit_logs`, `gateway_dns`, `gateway_http`, `gateway_network`, `dns_logs`, `network_analytics_logs`, `workers_trace_events`, `device_posture_results`, `zero_trust_network_sessions`."
						description_kind: "markdown"
						required:         true
					}
					destination_conf: {
						type:             "string"
						description:      "Uniquely identifies a resource (such as an s3 bucket) where data will be pushed. Additional configuration parameters supported by the destination may be included. See [Logpush destination documentation](https://developers.cloudflare.com/logs/reference/logpush-api-configuration#destination)."
						description_kind: "markdown"
						required:         true
					}
					enabled: {
						type:             "bool"
						description:      "Whether to enable the job."
						description_kind: "markdown"
						optional:         true
					}
					filter: {
						type:             "string"
						description:      "Use filters to select the events to include and/or remove from your logs. For more information, refer to [Filters](https://developers.cloudflare.com/logs/reference/logpush-api-configuration/filters/)."
						description_kind: "markdown"
						optional:         true
					}
					frequency: {
						type:             "string"
						description:      "A higher frequency will result in logs being pushed on faster with smaller files. `low` frequency will push logs less often with larger files. Available values: `high`, `low`. Defaults to `high`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					kind: {
						type:             "string"
						description:      "The kind of logpush job to create. Available values: `edge`, `instant-logs`, `\"\"`."
						description_kind: "markdown"
						optional:         true
					}
					logpull_options: {
						type:             "string"
						description:      "Configuration string for the Logshare API. It specifies things like requested fields and timestamp formats. See [Logpush options documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#options)."
						description_kind: "markdown"
						optional:         true
					}
					max_upload_bytes: {
						type:             "number"
						description:      "The maximum uncompressed file size of a batch of logs. Value must be between 5MB and 1GB."
						description_kind: "markdown"
						optional:         true
					}
					max_upload_interval_seconds: {
						type:             "number"
						description:      "The maximum interval in seconds for log batches. Value must be between 30 and 300."
						description_kind: "markdown"
						optional:         true
					}
					max_upload_records: {
						type:             "number"
						description:      "The maximum number of log lines per batch. Value must be between 1000 and 1,000,000."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The name of the logpush job to create."
						description_kind: "markdown"
						optional:         true
					}
					ownership_challenge: {
						type:             "string"
						description:      "Ownership challenge token to prove destination ownership, required when destination is Amazon S3, Google Cloud Storage, Microsoft Azure or Sumo Logic. See [Developer documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#usage)."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a resource which manages Cloudflare Logpush jobs. For
					Logpush jobs pushing to Amazon S3, Google Cloud Storage, Microsoft
					Azure or Sumo Logic, this resource cannot be automatically created.
					In order to have this automated, you must have:

					- `cloudflare_logpush_ownership_challenge`: Configured to generate the challenge
					to confirm ownership of the destination.
					- Either manual inspection or another Terraform Provider to get the contents of
					the `ownership_challenge_filename` value from the`cloudflare_logpush_ownership_challenge` resource.
					- `cloudflare_logpush_job`: Create and manage the Logpush Job itself.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_logpush_ownership_challenge: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`."
						description_kind: "markdown"
						optional:         true
					}
					destination_conf: {
						type:             "string"
						description:      "Uniquely identifies a resource (such as an s3 bucket) where data will be pushed. Additional configuration parameters supported by the destination may be included. See [Logpush destination documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#destination). **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ownership_challenge_filename: {
						type:             "string"
						description:      "The filename of the ownership challenge which\tcontains the contents required for Logpush Job creation."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a resource which manages Cloudflare Logpush ownership
					challenges to use in a Logpush Job. On it's own, doesn't do much
					however this resource should be used in conjunction to create
					Logpush jobs.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_magic_firewall_ruleset: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description_kind: "plain"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					rules: {
						type: ["list", ["map", "string"]]
						description_kind: "plain"
						optional:         true
					}
				}
				description_kind: "plain"
			}
		}
		cloudflare_managed_headers: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					managed_request_headers: {
						nesting_mode: "set"
						block: {
							attributes: {
								enabled: {
									type:             "bool"
									description:      "Whether the headers rule is active."
									description_kind: "markdown"
									required:         true
								}
								id: {
									type:             "string"
									description:      "Unique headers rule identifier."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "The list of managed request headers."
							description_kind: "markdown"
						}
					}
					managed_response_headers: {
						nesting_mode: "set"
						block: {
							attributes: {
								enabled: {
									type:             "bool"
									description:      "Whether the headers rule is active."
									description_kind: "markdown"
									required:         true
								}
								id: {
									type:             "string"
									description:      "Unique headers rule identifier."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "The list of managed response headers."
							description_kind: "markdown"
						}
					}
				}
				description: """
					The [Cloudflare Managed Headers](https://developers.cloudflare.com/rules/transform/managed-transforms/)
					allows you to add or remove some predefined headers to one's
					requests or origin responses.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_mtls_certificate: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					ca: {
						type:             "bool"
						description:      "Whether this is a CA or leaf certificate. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					certificates: {
						type:             "string"
						description:      "Certificate you intend to use with mTLS-enabled services. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					expires_on: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					issuer: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Optional unique name for the certificate. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					private_key: {
						type:             "string"
						description:      "The certificate's private key. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					serial_number: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					signature: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
					uploaded_on: {
						type:             "string"
						description:      "**Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						computed:         true
					}
				}
				description: """
					Provides a Cloudflare mTLS certificate resource. These certificates may be used with mTLS enabled Cloudflare services.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_notification_policy: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					alert_type: {
						type:             "string"
						description:      "The event type that will trigger the dispatch of a notification. See the developer documentation for descriptions of [available alert types](https://developers.cloudflare.com/fundamentals/notifications/notification-available/). Available values: `advanced_http_alert_error`, `access_custom_certificate_expiration_type`, `advanced_ddos_attack_l4_alert`, `advanced_ddos_attack_l7_alert`, `bgp_hijack_notification`, `billing_usage_alert`, `block_notification_block_removed`, `block_notification_new_block`, `block_notification_review_rejected`, `clickhouse_alert_fw_anomaly`, `clickhouse_alert_fw_ent_anomaly`, `custom_ssl_certificate_event_type`, `dedicated_ssl_certificate_event_type`, `dos_attack_l4`, `dos_attack_l7`, `expiring_service_token_alert`, `failing_logpush_job_disabled_alert`, `fbm_auto_advertisement`, `fbm_dosd_attack`, `fbm_volumetric_attack`, `health_check_status_notification`, `hostname_aop_custom_certificate_expiration_type`, `http_alert_edge_error`, `http_alert_origin_error`, `load_balancing_health_alert`, `load_balancing_pool_enablement_alert`, `real_origin_monitoring`, `scriptmonitor_alert_new_code_change_detections`, `scriptmonitor_alert_new_hosts`, `scriptmonitor_alert_new_malicious_hosts`, `scriptmonitor_alert_new_malicious_scripts`, `scriptmonitor_alert_new_malicious_url`, `scriptmonitor_alert_new_max_length_resource_url`, `scriptmonitor_alert_new_resources`, `secondary_dns_all_primaries_failing`, `secondary_dns_primaries_failing`, `secondary_dns_zone_successfully_updated`, `secondary_dns_zone_validation_warning`, `sentinel_alert`, `stream_live_notifications`, `tunnel_health_event`, `tunnel_update_event`, `universal_ssl_event_type`, `web_analytics_metrics_update`, `weekly_account_overview`, `workers_alert`, `zone_aop_custom_certificate_expiration_type`."
						description_kind: "markdown"
						required:         true
					}
					created: {
						type:             "string"
						description:      "When the notification policy was created."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "Description of the notification policy."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "The status of the notification policy."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					modified: {
						type:             "string"
						description:      "When the notification policy was last modified."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the notification policy."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					email_integration: {
						nesting_mode: "set"
						block: {
							attributes: {
								id: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "The email id to which the notification should be dispatched. One of email, webhooks, or PagerDuty mechanisms is required."
							description_kind: "markdown"
						}
					}
					filters: {
						nesting_mode: "list"
						block: {
							attributes: {
								actions: {
									type: ["set", "string"]
									description:      "Targeted actions for alert."
									description_kind: "markdown"
									optional:         true
								}
								alert_trigger_preferences: {
									type: ["set", "string"]
									description:      "Alert trigger preferences. Example: `slo`."
									description_kind: "markdown"
									optional:         true
								}
								enabled: {
									type: ["set", "string"]
									description:      "State of the pool to alert on."
									description_kind: "markdown"
									optional:         true
								}
								environment: {
									type: ["set", "string"]
									description:      "Environment of pages. Available values: `ENVIRONMENT_PREVIEW`, `ENVIRONMENT_PRODUCTION`."
									description_kind: "markdown"
									optional:         true
								}
								event: {
									type: ["set", "string"]
									description:      "Pages event to alert. Available values: `EVENT_DEPLOYMENT_STARTED`, `EVENT_DEPLOYMENT_FAILED`, `EVENT_DEPLOYMENT_SUCCESS`."
									description_kind: "markdown"
									optional:         true
								}
								event_source: {
									type: ["set", "string"]
									description:      "Source configuration to alert on for pool or origin."
									description_kind: "markdown"
									optional:         true
								}
								event_type: {
									type: ["set", "string"]
									description:      "Stream event type to alert on."
									description_kind: "markdown"
									optional:         true
								}
								group_by: {
									type: ["set", "string"]
									description:      "Alert grouping."
									description_kind: "markdown"
									optional:         true
								}
								health_check_id: {
									type: ["set", "string"]
									description:      "Identifier health check. Required when using `filters.0.status`."
									description_kind: "markdown"
									optional:         true
								}
								input_id: {
									type: ["set", "string"]
									description:      "Stream input id to alert on."
									description_kind: "markdown"
									optional:         true
								}
								limit: {
									type: ["set", "string"]
									description:      "A numerical limit. Example: `100`."
									description_kind: "markdown"
									optional:         true
								}
								megabits_per_second: {
									type: ["set", "string"]
									description:      "Megabits per second threshold for dos alert."
									description_kind: "markdown"
									optional:         true
								}
								new_health: {
									type: ["set", "string"]
									description:      "Health status to alert on for pool or origin."
									description_kind: "markdown"
									optional:         true
								}
								packets_per_second: {
									type: ["set", "string"]
									description:      "Packets per second threshold for dos alert."
									description_kind: "markdown"
									optional:         true
								}
								pool_id: {
									type: ["set", "string"]
									description:      "Load balancer pool identifier."
									description_kind: "markdown"
									optional:         true
								}
								product: {
									type: ["set", "string"]
									description:      "Product name. Available values: `worker_requests`, `worker_durable_objects_requests`, `worker_durable_objects_duration`, `worker_durable_objects_data_transfer`, `worker_durable_objects_stored_data`, `worker_durable_objects_storage_deletes`, `worker_durable_objects_storage_writes`, `worker_durable_objects_storage_reads`."
									description_kind: "markdown"
									optional:         true
								}
								project_id: {
									type: ["set", "string"]
									description:      "Identifier of pages project."
									description_kind: "markdown"
									optional:         true
								}
								protocol: {
									type: ["set", "string"]
									description:      "Protocol to alert on for dos."
									description_kind: "markdown"
									optional:         true
								}
								requests_per_second: {
									type: ["set", "string"]
									description:      "Requests per second threshold for dos alert."
									description_kind: "markdown"
									optional:         true
								}
								services: {
									type: ["set", "string"]
									description_kind: "plain"
									optional:         true
								}
								slo: {
									type: ["set", "string"]
									description:      "A numerical limit. Example: `99.9`."
									description_kind: "markdown"
									optional:         true
								}
								status: {
									type: ["set", "string"]
									description:      "Status to alert on."
									description_kind: "markdown"
									optional:         true
								}
								target_hostname: {
									type: ["set", "string"]
									description:      "Target host to alert on for dos."
									description_kind: "markdown"
									optional:         true
								}
								target_zone_name: {
									type: ["set", "string"]
									description:      "Target domain to alert on."
									description_kind: "markdown"
									optional:         true
								}
								where: {
									type: ["set", "string"]
									description:      "Filter for alert."
									description_kind: "markdown"
									optional:         true
								}
								zones: {
									type: ["set", "string"]
									description:      "A list of zone identifiers."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "An optional nested block of filters that applies to the selected `alert_type`. A key-value map that specifies the type of filter and the values to match against (refer to the alert type block for available fields)."
							description_kind: "markdown"
						}
						max_items: 1
					}
					pagerduty_integration: {
						nesting_mode: "set"
						block: {
							attributes: {
								id: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "The unique id of a configured pagerduty endpoint to which the notification should be dispatched. One of email, webhooks, or PagerDuty mechanisms is required."
							description_kind: "markdown"
						}
					}
					webhooks_integration: {
						nesting_mode: "set"
						block: {
							attributes: {
								id: {
									type:             "string"
									description_kind: "plain"
									required:         true
								}
								name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "The unique id of a configured webhooks endpoint to which the notification should be dispatched. One of email, webhooks, or PagerDuty mechanisms is required."
							description_kind: "markdown"
						}
					}
				}
				description: """
					Provides a resource, that manages a notification policy for
					Cloudflare's products. The delivery mechanisms supported are email,
					webhooks, and PagerDuty.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_notification_policy_webhooks: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					created_at: {
						type:             "string"
						description:      "Timestamp of when the notification webhook was created."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					last_failure: {
						type:             "string"
						description:      "Timestamp of when the notification webhook last faiuled."
						description_kind: "markdown"
						computed:         true
					}
					last_success: {
						type:             "string"
						description:      "Timestamp of when the notification webhook was last successful."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the webhook destination."
						description_kind: "markdown"
						required:         true
					}
					secret: {
						type:             "string"
						description:      "An optional secret can be provided that will be passed in the `cf-webhook-auth` header when dispatching a webhook notification. Secrets are not returned in any API response body. Refer to the [documentation](https://api.cloudflare.com/#notification-webhooks-create-webhook) for more details."
						description_kind: "markdown"
						optional:         true
					}
					type: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					url: {
						type:             "string"
						description:      "The URL of the webhook destinations. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Provides a resource, that manages a webhook destination. These destinations can be tied to the notification policies created for Cloudflare's products."
				description_kind: "markdown"
			}
		}
		cloudflare_observatory_scheduled_test: {
			version: 0
			block: {
				attributes: {
					frequency: {
						type:             "string"
						description:      "The frequency to run the test. Available values: `DAILY`, `WEEKLY`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					region: {
						type:             "string"
						description:      "The region to run the test in. Available values: `us-central1`, `us-east1`, `us-east4`, `us-south1`, `us-west1`, `southamerica-east1`, `europe-north1`, `europe-southwest1`, `europe-west1`, `europe-west2`, `europe-west3`, `europe-west4`, `europe-west8`, `europe-west9`, `asia-east1`, `asia-southeast1`, `me-west1`, `australia-southeast1`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					url: {
						type:             "string"
						description:      "The page to run the test on. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: timeouts: {
					nesting_mode: "single"
					block: {
						attributes: create: {
							type:             "string"
							description_kind: "plain"
							optional:         true
						}
						description_kind: "plain"
					}
				}
				description:      "Provides a Cloudflare Observatory Scheduled Test resource."
				description_kind: "markdown"
			}
		}
		cloudflare_origin_ca_certificate: {
			version: 0
			block: {
				attributes: {
					certificate: {
						type:             "string"
						description:      "The Origin CA certificate."
						description_kind: "markdown"
						computed:         true
					}
					csr: {
						type:             "string"
						description:      "The Certificate Signing Request. Must be newline-encoded. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					expires_on: {
						type:             "string"
						description:      "The datetime when the certificate will expire."
						description_kind: "markdown"
						computed:         true
					}
					hostnames: {
						type: ["set", "string"]
						description:      "A list of hostnames or wildcard names bound to the certificate. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					min_days_for_renewal: {
						type:             "number"
						description:      "Number of days prior to the expiry to trigger a renewal of the certificate if a Terraform operation is run."
						description_kind: "markdown"
						optional:         true
					}
					request_type: {
						type:             "string"
						description:      "The signature type desired on the certificate. Available values: `origin-rsa`, `origin-ecc`, `keyless-certificate`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					requested_validity: {
						type:             "number"
						description:      "The number of days for which the certificate should be valid. Available values: `7`, `30`, `90`, `365`, `730`, `1095`, `5475`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description:      "Provides a Cloudflare Origin CA certificate used to protect traffic to your origin without involving a third party Certificate Authority."
				description_kind: "markdown"
			}
		}
		cloudflare_page_rule: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					priority: {
						type:             "number"
						description:      "Defaults to `1`."
						description_kind: "markdown"
						optional:         true
					}
					status: {
						type:             "string"
						description:      "Defaults to `active`."
						description_kind: "markdown"
						optional:         true
					}
					target: {
						type:             "string"
						description_kind: "plain"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: actions: {
					nesting_mode: "list"
					block: {
						attributes: {
							always_use_https: {
								type:             "bool"
								description:      "Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							automatic_https_rewrites: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							browser_cache_ttl: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							browser_check: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							bypass_cache_on_cookie: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							cache_by_device_type: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							cache_deception_armor: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							cache_level: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							cache_on_cookie: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							disable_apps: {
								type:             "bool"
								description:      "Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							disable_performance: {
								type:             "bool"
								description:      "Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							disable_railgun: {
								type:             "bool"
								description:      "Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							disable_security: {
								type:             "bool"
								description:      "Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							disable_zaraz: {
								type:             "bool"
								description:      "Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							edge_cache_ttl: {
								type:             "number"
								description_kind: "plain"
								optional:         true
							}
							email_obfuscation: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							explicit_cache_control: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							host_header_override: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							ip_geolocation: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							mirage: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							opportunistic_encryption: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							origin_error_page_pass_thru: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							polish: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							resolve_override: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							respect_strong_etag: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							response_buffering: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							rocket_loader: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							security_level: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							server_side_exclude: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							sort_query_string_for_cache: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							ssl: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							true_client_ip_header: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							waf: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
						}
						block_types: {
							cache_key_fields: {
								nesting_mode: "list"
								block: {
									block_types: {
										cookie: {
											nesting_mode: "list"
											block: {
												attributes: {
													check_presence: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													include: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
												}
												description_kind: "plain"
											}
											max_items: 1
										}
										header: {
											nesting_mode: "list"
											block: {
												attributes: {
													check_presence: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													exclude: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													include: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
												}
												description_kind: "plain"
											}
											max_items: 1
										}
										host: {
											nesting_mode: "list"
											block: {
												attributes: resolved: {
													type:             "bool"
													description:      "Defaults to `false`."
													description_kind: "markdown"
													optional:         true
												}
												description_kind: "plain"
											}
											min_items: 1
											max_items: 1
										}
										query_string: {
											nesting_mode: "list"
											block: {
												attributes: {
													exclude: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													ignore: {
														type:             "bool"
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													include: {
														type: ["set", "string"]
														description_kind: "plain"
														optional:         true
														computed:         true
													}
												}
												description_kind: "plain"
											}
											min_items: 1
											max_items: 1
										}
										user: {
											nesting_mode: "list"
											block: {
												attributes: {
													device_type: {
														type:             "bool"
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													geo: {
														type:             "bool"
														description_kind: "plain"
														optional:         true
														computed:         true
													}
													lang: {
														type:             "bool"
														description_kind: "plain"
														optional:         true
														computed:         true
													}
												}
												description_kind: "plain"
											}
											min_items: 1
											max_items: 1
										}
									}
									description_kind: "plain"
								}
								max_items: 1
							}
							cache_ttl_by_status: {
								nesting_mode: "set"
								block: {
									attributes: {
										codes: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										ttl: {
											type:             "number"
											description_kind: "plain"
											required:         true
										}
									}
									description_kind: "plain"
								}
							}
							forwarding_url: {
								nesting_mode: "list"
								block: {
									attributes: {
										status_code: {
											type:             "number"
											description_kind: "plain"
											required:         true
										}
										url: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
									}
									description_kind: "plain"
								}
								max_items: 1
							}
							minify: {
								nesting_mode: "list"
								block: {
									attributes: {
										css: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										html: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										js: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
									}
									description_kind: "plain"
								}
							}
						}
						description_kind: "plain"
					}
					min_items: 1
					max_items: 1
				}
				description_kind: "plain"
			}
		}
		cloudflare_pages_domain: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					domain: {
						type:             "string"
						description:      "Custom domain. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					project_name: {
						type:             "string"
						description:      "Name of the Pages Project. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					status: {
						type:             "string"
						description:      "Status of the custom domain."
						description_kind: "markdown"
						computed:         true
					}
				}
				description: """
					Provides a resource for managing Cloudflare Pages domains.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_pages_project: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					created_on: {
						type:             "string"
						description:      "When the project was created."
						description_kind: "markdown"
						computed:         true
					}
					domains: {
						type: ["list", "string"]
						description:      "A list of associated custom domains for the project."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the project."
						description_kind: "markdown"
						required:         true
					}
					production_branch: {
						type:             "string"
						description:      "The name of the branch that is used for the production environment."
						description_kind: "markdown"
						required:         true
					}
					subdomain: {
						type:             "string"
						description:      "The Cloudflare subdomain associated with the project."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: {
					build_config: {
						nesting_mode: "list"
						block: {
							attributes: {
								build_command: {
									type:             "string"
									description:      "Command used to build project."
									description_kind: "markdown"
									optional:         true
								}
								destination_dir: {
									type:             "string"
									description:      "Output directory of the build."
									description_kind: "markdown"
									optional:         true
								}
								root_dir: {
									type:             "string"
									description:      "Your project's root directory, where Cloudflare runs the build command. If your site is not in a subdirectory, leave this path value empty."
									description_kind: "markdown"
									optional:         true
								}
								web_analytics_tag: {
									type:             "string"
									description:      "The classifying tag for analytics."
									description_kind: "markdown"
									optional:         true
								}
								web_analytics_token: {
									type:             "string"
									description:      "The auth token for analytics."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Configuration for the project build process. Read more about the build configuration in the [developer documentation](https://developers.cloudflare.com/pages/platform/build-configuration)."
							description_kind: "markdown"
						}
						max_items: 1
					}
					deployment_configs: {
						nesting_mode: "list"
						block: {
							block_types: {
								preview: {
									nesting_mode: "list"
									block: {
										attributes: {
											always_use_latest_compatibility_date: {
												type:             "bool"
												description:      "Use latest compatibility date for Pages Functions. Defaults to `false`."
												description_kind: "markdown"
												optional:         true
											}
											compatibility_date: {
												type:             "string"
												description:      "Compatibility date used for Pages Functions."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											compatibility_flags: {
												type: ["list", "string"]
												description:      "Compatibility flags used for Pages Functions."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											d1_databases: {
												type: ["map", "string"]
												description:      "D1 Databases used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											durable_object_namespaces: {
												type: ["map", "string"]
												description:      "Durable Object namespaces used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											environment_variables: {
												type: ["map", "string"]
												description:      "Environment variables for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											fail_open: {
												type:             "bool"
												description:      "Fail open used for Pages Functions. Defaults to `false`."
												description_kind: "markdown"
												optional:         true
											}
											kv_namespaces: {
												type: ["map", "string"]
												description:      "KV namespaces used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											r2_buckets: {
												type: ["map", "string"]
												description:      "R2 Buckets used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											secrets: {
												type: ["map", "string"]
												description:      "Encrypted environment variables for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
												sensitive:        true
											}
											usage_model: {
												type:             "string"
												description:      "Usage model used for Pages Functions. Defaults to `bundled`."
												description_kind: "markdown"
												optional:         true
											}
										}
										block_types: {
											placement: {
												nesting_mode: "list"
												block: {
													attributes: mode: {
														type:             "string"
														description:      "Placement Mode for the Pages Function."
														description_kind: "markdown"
														optional:         true
														computed:         true
													}
													description:      "Configuration for placement in the Cloudflare Pages project."
													description_kind: "markdown"
												}
												max_items: 1
											}
											service_binding: {
												nesting_mode: "set"
												block: {
													attributes: {
														environment: {
															type:             "string"
															description:      "The name of the Worker environment to bind to."
															description_kind: "markdown"
															optional:         true
														}
														name: {
															type:             "string"
															description:      "The global variable for the binding in your Worker code."
															description_kind: "markdown"
															required:         true
														}
														service: {
															type:             "string"
															description:      "The name of the Worker to bind to."
															description_kind: "markdown"
															required:         true
														}
													}
													description:      "Services used for Pages Functions."
													description_kind: "markdown"
												}
											}
										}
										description:      "Configuration for preview deploys."
										description_kind: "markdown"
									}
									max_items: 1
								}
								production: {
									nesting_mode: "list"
									block: {
										attributes: {
											always_use_latest_compatibility_date: {
												type:             "bool"
												description:      "Use latest compatibility date for Pages Functions. Defaults to `false`."
												description_kind: "markdown"
												optional:         true
											}
											compatibility_date: {
												type:             "string"
												description:      "Compatibility date used for Pages Functions."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											compatibility_flags: {
												type: ["list", "string"]
												description:      "Compatibility flags used for Pages Functions."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											d1_databases: {
												type: ["map", "string"]
												description:      "D1 Databases used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											durable_object_namespaces: {
												type: ["map", "string"]
												description:      "Durable Object namespaces used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											environment_variables: {
												type: ["map", "string"]
												description:      "Environment variables for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											fail_open: {
												type:             "bool"
												description:      "Fail open used for Pages Functions. Defaults to `false`."
												description_kind: "markdown"
												optional:         true
											}
											kv_namespaces: {
												type: ["map", "string"]
												description:      "KV namespaces used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											r2_buckets: {
												type: ["map", "string"]
												description:      "R2 Buckets used for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
											}
											secrets: {
												type: ["map", "string"]
												description:      "Encrypted environment variables for Pages Functions. Defaults to `map[]`."
												description_kind: "markdown"
												optional:         true
												sensitive:        true
											}
											usage_model: {
												type:             "string"
												description:      "Usage model used for Pages Functions. Defaults to `bundled`."
												description_kind: "markdown"
												optional:         true
											}
										}
										block_types: {
											placement: {
												nesting_mode: "list"
												block: {
													attributes: mode: {
														type:             "string"
														description:      "Placement Mode for the Pages Function."
														description_kind: "markdown"
														optional:         true
														computed:         true
													}
													description:      "Configuration for placement in the Cloudflare Pages project."
													description_kind: "markdown"
												}
												max_items: 1
											}
											service_binding: {
												nesting_mode: "set"
												block: {
													attributes: {
														environment: {
															type:             "string"
															description:      "The name of the Worker environment to bind to."
															description_kind: "markdown"
															optional:         true
														}
														name: {
															type:             "string"
															description:      "The global variable for the binding in your Worker code."
															description_kind: "markdown"
															required:         true
														}
														service: {
															type:             "string"
															description:      "The name of the Worker to bind to."
															description_kind: "markdown"
															required:         true
														}
													}
													description:      "Services used for Pages Functions."
													description_kind: "markdown"
												}
											}
										}
										description:      "Configuration for production deploys."
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "Configuration for deployments in a project."
							description_kind: "markdown"
						}
						max_items: 1
					}
					source: {
						nesting_mode: "list"
						block: {
							attributes: type: {
								type:             "string"
								description:      "Project host type."
								description_kind: "markdown"
								optional:         true
							}
							block_types: config: {
								nesting_mode: "list"
								block: {
									attributes: {
										deployments_enabled: {
											type:             "bool"
											description:      "Toggle deployments on this repo. Defaults to `true`."
											description_kind: "markdown"
											optional:         true
										}
										owner: {
											type:             "string"
											description:      "Project owner username. **Modifying this attribute will force creation of a new resource.**"
											description_kind: "markdown"
											optional:         true
										}
										pr_comments_enabled: {
											type:             "bool"
											description:      "Enable Pages to comment on Pull Requests. Defaults to `true`."
											description_kind: "markdown"
											optional:         true
										}
										preview_branch_excludes: {
											type: ["list", "string"]
											description:      "Branches will be excluded from automatic deployment."
											description_kind: "markdown"
											optional:         true
											computed:         true
										}
										preview_branch_includes: {
											type: ["list", "string"]
											description:      "Branches will be included for automatic deployment."
											description_kind: "markdown"
											optional:         true
											computed:         true
										}
										preview_deployment_setting: {
											type:             "string"
											description:      "Preview Deployment Setting. Defaults to `all`."
											description_kind: "markdown"
											optional:         true
										}
										production_branch: {
											type:             "string"
											description:      "Project production branch name."
											description_kind: "markdown"
											required:         true
										}
										production_deployment_enabled: {
											type:             "bool"
											description:      "Enable production deployments. Defaults to `true`."
											description_kind: "markdown"
											optional:         true
										}
										repo_name: {
											type:             "string"
											description:      "Project repository name. **Modifying this attribute will force creation of a new resource.**"
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "Configuration for the source of the Cloudflare Pages project."
									description_kind: "markdown"
								}
								max_items: 1
							}
							description:      "Configuration for the project source. Read more about the source configuration in the [developer documentation](https://developers.cloudflare.com/pages/platform/branch-build-controls/)."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description: """
					Provides a resource which manages Cloudflare Pages projects.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_queue: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the queue."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides the ability to manage Cloudflare Workers Queue features."
				description_kind: "markdown"
			}
		}
		cloudflare_r2_bucket: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "The identifier of this resource."
						description_kind: "markdown"
						computed:         true
					}
					location: {
						type:             "string"
						description:      "The location hint of the R2 bucket."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the R2 bucket."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					The [R2 Bucket](https://developers.cloudflare.com/r2/) resource allows you to manage Cloudflare R2 buckets.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_rate_limit: {
			version: 0
			block: {
				attributes: {
					bypass_url_patterns: {
						type: ["set", "string"]
						description_kind: "plain"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "A note that you can use to describe the reason for a rate limit. This value is sanitized and all tags are removed."
						description_kind: "markdown"
						optional:         true
					}
					disabled: {
						type:             "bool"
						description:      "Whether this ratelimit is currently disabled. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					period: {
						type:             "number"
						description:      "The time in seconds to count matching traffic. If the count exceeds threshold within this period the action will be performed."
						description_kind: "markdown"
						required:         true
					}
					threshold: {
						type:             "number"
						description:      "The threshold that triggers the rate limit mitigations, combine with period."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					action: {
						nesting_mode: "list"
						block: {
							attributes: {
								mode: {
									type:             "string"
									description:      "The type of action to perform. Available values: `simulate`, `ban`, `challenge`, `js_challenge`, `managed_challenge`."
									description_kind: "markdown"
									required:         true
								}
								timeout: {
									type:             "number"
									description:      "The time in seconds as an integer to perform the mitigation action. This field is required if the `mode` is either `simulate` or `ban`. Must be the same or greater than the period."
									description_kind: "markdown"
									optional:         true
								}
							}
							block_types: response: {
								nesting_mode: "list"
								block: {
									attributes: {
										body: {
											type:             "string"
											description:      "The body to return, the content here should conform to the `content_type`."
											description_kind: "markdown"
											required:         true
										}
										content_type: {
											type:             "string"
											description:      "The content-type of the body. Available values: `text/plain`, `text/xml`, `application/json`."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Custom content-type and body to return, this overrides the custom error for the zone. This field is not required. Omission will result in default HTML error page."
									description_kind: "markdown"
								}
								max_items: 1
							}
							description:      "The action to be performed when the threshold of matched traffic within the period defined is exceeded."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					correlate: {
						nesting_mode: "list"
						block: {
							attributes: by: {
								type:             "string"
								description:      "If set to 'nat', NAT support will be enabled for rate limiting. Available values: `nat`."
								description_kind: "markdown"
								optional:         true
							}
							description:      "Determines how rate limiting is applied. By default if not specified, rate limiting applies to the clients IP address."
							description_kind: "markdown"
						}
						max_items: 1
					}
					match: {
						nesting_mode: "list"
						block: {
							block_types: {
								request: {
									nesting_mode: "list"
									block: {
										attributes: {
											methods: {
												type: ["set", "string"]
												description:      "HTTP Methods to match traffic on. Available values: `GET`, `POST`, `PUT`, `DELETE`, `PATCH`, `HEAD`, `_ALL_`."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											schemes: {
												type: ["set", "string"]
												description:      "HTTP schemes to match traffic on. Available values: `HTTP`, `HTTPS`, `_ALL_`."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											url_pattern: {
												type:             "string"
												description:      "The URL pattern to match comprised of the host and path, i.e. example.org/path. Wildcard are expanded to match applicable traffic, query strings are not matched. Use _ for all traffic to your zone."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
										}
										description:      "Matches HTTP requests (from the client to Cloudflare)."
										description_kind: "markdown"
									}
									max_items: 1
								}
								response: {
									nesting_mode: "list"
									block: {
										attributes: {
											headers: {
												type: ["list", ["map", "string"]]
												description:      "List of HTTP headers maps to match the origin response on."
												description_kind: "markdown"
												optional:         true
											}
											origin_traffic: {
												type:             "bool"
												description:      "Only count traffic that has come from your origin servers. If true, cached items that Cloudflare serve will not count towards rate limiting."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
											statuses: {
												type: ["set", "number"]
												description:      "HTTP Status codes, can be one, many or indicate all by not providing this value."
												description_kind: "markdown"
												optional:         true
												computed:         true
											}
										}
										description:      "Matches HTTP responses before they are returned to the client from Cloudflare. If this is defined, then the entire counting of traffic occurs at this stage."
										description_kind: "markdown"
									}
									max_items: 1
								}
							}
							description:      "Determines which traffic the rate limit counts towards the threshold. By default matches all traffic in the zone."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description: """
					Provides a Cloudflare rate limit resource for a given zone. This can
					be used to limit the traffic you receive zone-wide, or matching more
					specific types of requests/responses.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_record: {
			version: 2
			block: {
				attributes: {
					allow_overwrite: {
						type:             "bool"
						description:      "Allow creation of this record in Terraform to overwrite an existing record, if any. This does not affect the ability to update the record in Terraform and does not prevent other resources within Terraform or manual changes outside Terraform from overwriting this record. **This configuration is not recommended for most environments**. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					comment: {
						type:             "string"
						description:      "Comments or notes about the DNS record. This field has no effect on DNS responses."
						description_kind: "markdown"
						optional:         true
					}
					created_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the record was created."
						description_kind: "markdown"
						computed:         true
					}
					hostname: {
						type:             "string"
						description:      "The FQDN of the record."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					metadata: {
						type: ["map", "string"]
						description:      "A key-value map of string metadata Cloudflare associates with the record."
						description_kind: "markdown"
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the record was last modified."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the record. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					priority: {
						type:             "number"
						description:      "The priority of the record."
						description_kind: "markdown"
						optional:         true
					}
					proxiable: {
						type:             "bool"
						description:      "Shows whether this record can be proxied."
						description_kind: "markdown"
						computed:         true
					}
					proxied: {
						type:             "bool"
						description:      "Whether the record gets Cloudflare's origin protection."
						description_kind: "markdown"
						optional:         true
					}
					tags: {
						type: ["set", "string"]
						description:      "Custom tags for the DNS record."
						description_kind: "markdown"
						optional:         true
					}
					ttl: {
						type:             "number"
						description:      "The TTL of the record."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					type: {
						type:             "string"
						description:      "The type of the record. Available values: `A`, `AAAA`, `CAA`, `CNAME`, `TXT`, `SRV`, `LOC`, `MX`, `NS`, `SPF`, `CERT`, `DNSKEY`, `DS`, `NAPTR`, `SMIMEA`, `SSHFP`, `TLSA`, `URI`, `PTR`, `HTTPS`, `SVCB`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					value: {
						type:             "string"
						description:      "The value of the record. Conflicts with `data`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					data: {
						nesting_mode: "list"
						block: {
							attributes: {
								algorithm: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								altitude: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								certificate: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								content: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								digest: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								digest_type: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								fingerprint: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								flags: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								key_tag: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								lat_degrees: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								lat_direction: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								lat_minutes: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								lat_seconds: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								long_degrees: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								long_direction: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								long_minutes: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								long_seconds: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								matching_type: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								name: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								order: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								port: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								precision_horz: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								precision_vert: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								preference: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								priority: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								proto: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								protocol: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								public_key: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								regex: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								replacement: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								selector: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								service: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								size: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								tag: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								target: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								type: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								usage: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
								value: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								weight: {
									type:             "number"
									description_kind: "plain"
									optional:         true
								}
							}
							description:      "Map of attributes that constitute the record value. Conflicts with `value`."
							description_kind: "markdown"
						}
						max_items: 1
					}
					timeouts: {
						nesting_mode: "single"
						block: {
							attributes: {
								create: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								update: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description_kind: "plain"
						}
					}
				}
				description:      "Provides a Cloudflare record resource."
				description_kind: "markdown"
			}
		}
		cloudflare_regional_hostname: {
			version: 1
			block: {
				attributes: {
					created_on: {
						type:             "string"
						description:      "The RFC3339 timestamp of when the hostname was created."
						description_kind: "markdown"
						computed:         true
					}
					hostname: {
						type:             "string"
						description:      "The hostname to regionalize."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					region_key: {
						type:             "string"
						description:      "The region key. See [the full region list](https://developers.cloudflare.com/data-localization/regional-services/get-started/)."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: timeouts: {
					nesting_mode: "single"
					block: {
						attributes: {
							create: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
							update: {
								type:             "string"
								description_kind: "plain"
								optional:         true
							}
						}
						description_kind: "plain"
					}
				}
				description:      "Provides a Data Localization Suite Regional Hostname."
				description_kind: "markdown"
			}
		}
		cloudflare_regional_tiered_cache: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					value: {
						type:             "string"
						description:      "Value of the Regional Tiered Cache zone setting."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Instructs Cloudflare to check a regional hub data center on the way to your upper tier.
					This can help improve performance for smart and custom tiered cache topologies.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_ruleset: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Brief summary of the ruleset and its intended use."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description:      "The identifier of this resource."
						description_kind: "markdown"
						computed:         true
					}
					kind: {
						type:             "string"
						description:      "Type of Ruleset to create. Available values: `custom`, `managed`, `root`, `zone`."
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "Name of the ruleset."
						description_kind: "markdown"
						required:         true
					}
					phase: {
						type:             "string"
						description:      "Point in the request/response lifecycle where the ruleset will be created. Available values: `ddos_l4`, `ddos_l7`, `http_config_settings`, `http_custom_errors`, `http_log_custom_fields`, `http_ratelimit`, `http_request_cache_settings`, `http_request_dynamic_redirect`, `http_request_firewall_custom`, `http_request_firewall_managed`, `http_request_late_transform`, `http_request_origin`, `http_request_redirect`, `http_request_sanitize`, `http_request_sbfm`, `http_request_transform`, `http_response_compression`, `http_response_firewall_managed`, `http_response_headers_transform`, `magic_transit`."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: rules: {
					nesting_mode: "list"
					block: {
						attributes: {
							action: {
								type:             "string"
								description:      "Action to perform in the ruleset rule. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`."
								description_kind: "markdown"
								optional:         true
							}
							description: {
								type:             "string"
								description:      "Brief summary of the ruleset rule and its intended use."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							enabled: {
								type:             "bool"
								description:      "Whether the rule is active."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							expression: {
								type:             "string"
								description:      "Criteria for an HTTP request to trigger the ruleset rule action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions."
								description_kind: "markdown"
								required:         true
							}
							id: {
								type:             "string"
								description:      "Unique rule identifier."
								description_kind: "markdown"
								computed:         true
							}
							last_updated: {
								type:             "string"
								description:      "The most recent update to this rule."
								description_kind: "markdown"
								computed:         true
							}
							ref: {
								type:             "string"
								description:      "Rule reference."
								description_kind: "markdown"
								optional:         true
								computed:         true
							}
							version: {
								type:             "string"
								description:      "Version of the ruleset to deploy."
								description_kind: "markdown"
								computed:         true
							}
						}
						block_types: {
							action_parameters: {
								nesting_mode: "list"
								block: {
									attributes: {
										additional_cacheable_ports: {
											type: ["set", "number"]
											description:      "Specifies uncommon ports to allow cacheable assets to be served from."
											description_kind: "markdown"
											optional:         true
										}
										automatic_https_rewrites: {
											type:             "bool"
											description:      "Turn on or off Cloudflare Automatic HTTPS rewrites."
											description_kind: "markdown"
											optional:         true
										}
										bic: {
											type:             "bool"
											description:      "Inspect the visitor's browser for headers commonly associated with spammers and certain bots."
											description_kind: "markdown"
											optional:         true
										}
										cache: {
											type:             "bool"
											description:      "Whether to cache if expression matches."
											description_kind: "markdown"
											optional:         true
										}
										content: {
											type:             "string"
											description:      "Content of the custom error response."
											description_kind: "markdown"
											optional:         true
										}
										content_type: {
											type:             "string"
											description:      "Content-Type of the custom error response."
											description_kind: "markdown"
											optional:         true
										}
										cookie_fields: {
											type: ["set", "string"]
											description:      "List of cookie values to include as part of custom fields logging."
											description_kind: "markdown"
											optional:         true
										}
										disable_apps: {
											type:             "bool"
											description:      "Turn off all active Cloudflare Apps."
											description_kind: "markdown"
											optional:         true
										}
										disable_railgun: {
											type:             "bool"
											description:      "Turn off railgun feature of the Cloudflare Speed app."
											description_kind: "markdown"
											optional:         true
										}
										disable_zaraz: {
											type:             "bool"
											description:      "Turn off zaraz feature."
											description_kind: "markdown"
											optional:         true
										}
										email_obfuscation: {
											type:             "bool"
											description:      "Turn on or off the Cloudflare Email Obfuscation feature of the Cloudflare Scrape Shield app."
											description_kind: "markdown"
											optional:         true
										}
										host_header: {
											type:             "string"
											description:      "Host Header that request origin receives."
											description_kind: "markdown"
											optional:         true
										}
										hotlink_protection: {
											type:             "bool"
											description:      "Turn on or off the hotlink protection feature."
											description_kind: "markdown"
											optional:         true
										}
										id: {
											type:             "string"
											description:      "Identifier of the action parameter to modify."
											description_kind: "markdown"
											optional:         true
										}
										increment: {
											type:             "number"
											description_kind: "plain"
											optional:         true
										}
										mirage: {
											type:             "bool"
											description:      "Turn on or off Cloudflare Mirage of the Cloudflare Speed app."
											description_kind: "markdown"
											optional:         true
										}
										opportunistic_encryption: {
											type:             "bool"
											description:      "Turn on or off the Cloudflare Opportunistic Encryption feature of the Edge Certificates tab in the Cloudflare SSL/TLS app."
											description_kind: "markdown"
											optional:         true
										}
										origin_cache_control: {
											type:             "bool"
											description:      "Enable or disable the use of a more compliant Cache Control parsing mechanism, enabled by default for most zones."
											description_kind: "markdown"
											optional:         true
										}
										origin_error_page_passthru: {
											type:             "bool"
											description:      "Pass-through error page for origin."
											description_kind: "markdown"
											optional:         true
										}
										phases: {
											type: ["set", "string"]
											description:      "Point in the request/response lifecycle where the ruleset will be created. Available values: `ddos_l4`, `ddos_l7`, `http_config_settings`, `http_custom_errors`, `http_log_custom_fields`, `http_ratelimit`, `http_request_cache_settings`, `http_request_dynamic_redirect`, `http_request_firewall_custom`, `http_request_firewall_managed`, `http_request_late_transform`, `http_request_origin`, `http_request_redirect`, `http_request_sanitize`, `http_request_sbfm`, `http_request_transform`, `http_response_compression`, `http_response_firewall_managed`, `http_response_headers_transform`, `magic_transit`."
											description_kind: "markdown"
											optional:         true
										}
										polish: {
											type:             "string"
											description:      "Apply options from the Polish feature of the Cloudflare Speed app."
											description_kind: "markdown"
											optional:         true
										}
										products: {
											type: ["set", "string"]
											description:      "Products to target with the actions. Available values: `bic`, `hot`, `ratelimit`, `securityLevel`, `uablock`, `waf`, `zonelockdown`."
											description_kind: "markdown"
											optional:         true
										}
										read_timeout: {
											type:             "number"
											description:      "Specifies a maximum timeout for reading content from an origin server."
											description_kind: "markdown"
											optional:         true
										}
										request_fields: {
											type: ["set", "string"]
											description:      "List of request headers to include as part of custom fields logging, in lowercase."
											description_kind: "markdown"
											optional:         true
										}
										respect_strong_etags: {
											type:             "bool"
											description:      "Respect strong ETags."
											description_kind: "markdown"
											optional:         true
										}
										response_fields: {
											type: ["set", "string"]
											description:      "List of response headers to include as part of custom fields logging, in lowercase."
											description_kind: "markdown"
											optional:         true
										}
										rocket_loader: {
											type:             "bool"
											description:      "Turn on or off Cloudflare Rocket Loader in the Cloudflare Speed app."
											description_kind: "markdown"
											optional:         true
										}
										rules: {
											type: ["map", "string"]
											description:      "Map of managed WAF rule ID to comma-delimited string of ruleset rule IDs. Example: `rules = { \"efb7b8c949ac4650a09736fc376e9aee\" = \"5de7edfa648c4d6891dc3e7f84534ffa,e3a567afc347477d9702d9047e97d760\" }`."
											description_kind: "markdown"
											optional:         true
										}
										ruleset: {
											type:             "string"
											description:      "Which ruleset ID to target."
											description_kind: "markdown"
											optional:         true
										}
										rulesets: {
											type: ["set", "string"]
											description:      "List of managed WAF rule IDs to target. Only valid when the `\"action\"` is set to skip."
											description_kind: "markdown"
											optional:         true
										}
										security_level: {
											type:             "string"
											description:      "Control options for the Security Level feature from the Security app."
											description_kind: "markdown"
											optional:         true
										}
										server_side_excludes: {
											type:             "bool"
											description:      "Turn on or off the Server Side Excludes feature of the Cloudflare Scrape Shield app."
											description_kind: "markdown"
											optional:         true
										}
										ssl: {
											type:             "string"
											description:      "Control options for the SSL feature of the Edge Certificates tab in the Cloudflare SSL/TLS app."
											description_kind: "markdown"
											optional:         true
										}
										status_code: {
											type:             "number"
											description:      "HTTP status code of the custom error response."
											description_kind: "markdown"
											optional:         true
										}
										sxg: {
											type:             "bool"
											description:      "Turn on or off the SXG feature."
											description_kind: "markdown"
											optional:         true
										}
										version: {
											type:             "string"
											description:      "Version of the ruleset to deploy."
											description_kind: "markdown"
											optional:         true
											computed:         true
										}
									}
									block_types: {
										algorithms: {
											nesting_mode: "list"
											block: {
												attributes: name: {
													type:             "string"
													description:      "Name of the compression algorithm to use. Available values: `gzip`, `brotli`, `auto`, `default`, `none`"
													description_kind: "markdown"
													required:         true
												}
												description:      "Compression algorithms to use in order of preference."
												description_kind: "markdown"
											}
										}
										autominify: {
											nesting_mode: "list"
											block: {
												attributes: {
													css: {
														type:             "bool"
														description:      "CSS minification."
														description_kind: "markdown"
														optional:         true
													}
													html: {
														type:             "bool"
														description:      "HTML minification."
														description_kind: "markdown"
														optional:         true
													}
													js: {
														type:             "bool"
														description:      "JS minification."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "Indicate which file extensions to minify automatically."
												description_kind: "markdown"
											}
										}
										browser_ttl: {
											nesting_mode: "list"
											block: {
												attributes: {
													default: {
														type:             "number"
														description:      "Default browser TTL. This value is required when override_origin is set"
														description_kind: "markdown"
														optional:         true
													}
													mode: {
														type:             "string"
														description:      "Mode of the browser TTL. Available values: `override_origin`, `respect_origin`, `bypass`"
														description_kind: "markdown"
														required:         true
													}
												}
												description:      "List of browser TTL parameters to apply to the request."
												description_kind: "markdown"
											}
										}
										cache_key: {
											nesting_mode: "list"
											block: {
												attributes: {
													cache_by_device_type: {
														type:             "bool"
														description:      "Cache by device type."
														description_kind: "markdown"
														optional:         true
													}
													cache_deception_armor: {
														type:             "bool"
														description:      "Cache deception armor."
														description_kind: "markdown"
														optional:         true
													}
													ignore_query_strings_order: {
														type:             "bool"
														description:      "Ignore query strings order."
														description_kind: "markdown"
														optional:         true
													}
												}
												block_types: custom_key: {
													nesting_mode: "list"
													block: {
														block_types: {
															cookie: {
																nesting_mode: "list"
																block: {
																	attributes: {
																		check_presence: {
																			type: ["set", "string"]
																			description:      "List of cookies to check for presence in the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																		include: {
																			type: ["set", "string"]
																			description:      "List of cookies to include in the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																	}
																	description:      "Cookie parameters for the custom key."
																	description_kind: "markdown"
																}
															}
															header: {
																nesting_mode: "list"
																block: {
																	attributes: {
																		check_presence: {
																			type: ["set", "string"]
																			description:      "List of headers to check for presence in the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																		exclude_origin: {
																			type:             "bool"
																			description:      "Exclude the origin header from the custom key."
																			description_kind: "markdown"
																			optional:         true
																			computed:         true
																		}
																		include: {
																			type: ["set", "string"]
																			description:      "List of headers to include in the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																	}
																	description:      "Header parameters for the custom key."
																	description_kind: "markdown"
																}
															}
															host: {
																nesting_mode: "list"
																block: {
																	attributes: resolved: {
																		type:             "bool"
																		description:      "Resolve hostname to IP address."
																		description_kind: "markdown"
																		optional:         true
																	}
																	description:      "Host parameters for the custom key."
																	description_kind: "markdown"
																}
															}
															query_string: {
																nesting_mode: "list"
																block: {
																	attributes: {
																		exclude: {
																			type: ["set", "string"]
																			description:      "List of query string parameters to exclude from the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																		include: {
																			type: ["set", "string"]
																			description:      "List of query string parameters to include in the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																	}
																	description:      "Query string parameters for the custom key."
																	description_kind: "markdown"
																}
															}
															user: {
																nesting_mode: "list"
																block: {
																	attributes: {
																		device_type: {
																			type:             "bool"
																			description:      "Add device type to the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																		geo: {
																			type:             "bool"
																			description:      "Add geo data to the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																		lang: {
																			type:             "bool"
																			description:      "Add language data to the custom key."
																			description_kind: "markdown"
																			optional:         true
																		}
																	}
																	description:      "User parameters for the custom key."
																	description_kind: "markdown"
																}
															}
														}
														description:      "Custom key parameters for the request."
														description_kind: "markdown"
													}
												}
												description:      "List of cache key parameters to apply to the request."
												description_kind: "markdown"
											}
										}
										edge_ttl: {
											nesting_mode: "list"
											block: {
												attributes: {
													default: {
														type:             "number"
														description:      "Default edge TTL."
														description_kind: "markdown"
														optional:         true
													}
													mode: {
														type:             "string"
														description:      "Mode of the edge TTL. Available values: `override_origin`, `respect_origin`, `bypass_by_default`"
														description_kind: "markdown"
														required:         true
													}
												}
												block_types: status_code_ttl: {
													nesting_mode: "list"
													block: {
														attributes: {
															status_code: {
																type:             "number"
																description:      "Status code for which the edge TTL is applied."
																description_kind: "markdown"
																optional:         true
															}
															value: {
																type:             "number"
																description:      "Status code edge TTL value."
																description_kind: "markdown"
																optional:         true
															}
														}
														block_types: status_code_range: {
															nesting_mode: "list"
															block: {
																attributes: {
																	from: {
																		type:             "number"
																		description:      "From status code."
																		description_kind: "markdown"
																		optional:         true
																	}
																	to: {
																		type:             "number"
																		description:      "To status code."
																		description_kind: "markdown"
																		optional:         true
																	}
																}
																description:      "Status code range for which the edge TTL is applied."
																description_kind: "markdown"
															}
														}
														description:      "Edge TTL for the status codes."
														description_kind: "markdown"
													}
												}
												description:      "List of edge TTL parameters to apply to the request."
												description_kind: "markdown"
											}
										}
										from_list: {
											nesting_mode: "list"
											block: {
												attributes: {
													key: {
														type:             "string"
														description:      "Expression to use for the list lookup."
														description_kind: "markdown"
														optional:         true
													}
													name: {
														type:             "string"
														description:      "Name of the list."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "Use a list to lookup information for the action."
												description_kind: "markdown"
											}
										}
										from_value: {
											nesting_mode: "list"
											block: {
												attributes: {
													preserve_query_string: {
														type:             "bool"
														description:      "Preserve query string for redirect URL."
														description_kind: "markdown"
														optional:         true
													}
													status_code: {
														type:             "number"
														description:      "Status code for redirect."
														description_kind: "markdown"
														optional:         true
													}
												}
												block_types: target_url: {
													nesting_mode: "list"
													block: {
														attributes: {
															expression: {
																type:             "string"
																description:      "Use a value dynamically determined by the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions."
																description_kind: "markdown"
																optional:         true
															}
															value: {
																type:             "string"
																description:      "Static value to provide as the HTTP request header value."
																description_kind: "markdown"
																optional:         true
															}
														}
														description:      "Target URL for redirect."
														description_kind: "markdown"
													}
												}
												description:      "Use a value to lookup information for the action."
												description_kind: "markdown"
											}
										}
										headers: {
											nesting_mode: "list"
											block: {
												attributes: {
													expression: {
														type:             "string"
														description:      "Use a value dynamically determined by the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions."
														description_kind: "markdown"
														optional:         true
													}
													name: {
														type:             "string"
														description:      "Name of the HTTP request header to target."
														description_kind: "markdown"
														optional:         true
													}
													operation: {
														type:             "string"
														description:      "Action to perform on the HTTP request header. Available values: `remove`, `set`, `add`."
														description_kind: "markdown"
														optional:         true
													}
													value: {
														type:             "string"
														description:      "Static value to provide as the HTTP request header value."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "List of HTTP header modifications to perform in the ruleset rule. Note: Headers are order dependent and must be provided sorted alphabetically ascending based on the `name` value."
												description_kind: "markdown"
											}
										}
										matched_data: {
											nesting_mode: "list"
											block: {
												attributes: public_key: {
													type:             "string"
													description:      "Public key to use within WAF Ruleset payload logging to view the HTTP request parameters. You can generate a public key [using the `matched-data-cli` command-line tool](https://developers.cloudflare.com/waf/managed-rulesets/payload-logging/command-line/generate-key-pair) or [in the Cloudflare dashboard](https://developers.cloudflare.com/waf/managed-rulesets/payload-logging/configure)."
													description_kind: "markdown"
													optional:         true
												}
												description:      "List of properties to configure WAF payload logging."
												description_kind: "markdown"
											}
										}
										origin: {
											nesting_mode: "list"
											block: {
												attributes: {
													host: {
														type:             "string"
														description:      "Origin Hostname where request is sent."
														description_kind: "markdown"
														optional:         true
													}
													port: {
														type:             "number"
														description:      "Origin Port where request is sent."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "List of properties to change request origin."
												description_kind: "markdown"
											}
										}
										overrides: {
											nesting_mode: "list"
											block: {
												attributes: {
													action: {
														type:             "string"
														description:      "Action to perform in the rule-level override. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`."
														description_kind: "markdown"
														optional:         true
													}
													enabled: {
														type:             "bool"
														description:      "Defines if the current ruleset-level override enables or disables the ruleset."
														description_kind: "markdown"
														optional:         true
													}
													sensitivity_level: {
														type:             "string"
														description:      "Sensitivity level to override for all ruleset rules. Available values: `default`, `medium`, `low`, `eoff`."
														description_kind: "markdown"
														optional:         true
													}
												}
												block_types: {
													categories: {
														nesting_mode: "list"
														block: {
															attributes: {
																action: {
																	type:             "string"
																	description:      "Action to perform in the tag-level override. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`."
																	description_kind: "markdown"
																	optional:         true
																}
																category: {
																	type:             "string"
																	description:      "Tag name to apply the ruleset rule override to."
																	description_kind: "markdown"
																	optional:         true
																}
																enabled: {
																	type:             "bool"
																	description:      "Defines if the current tag-level override enables or disables the ruleset rules with the specified tag."
																	description_kind: "markdown"
																	optional:         true
																}
															}
															description:      "List of tag-based overrides."
															description_kind: "markdown"
														}
													}
													rules: {
														nesting_mode: "list"
														block: {
															attributes: {
																action: {
																	type:             "string"
																	description:      "Action to perform in the rule-level override. Available values: `block`, `challenge`, `compress_response`, `ddos_dynamic`, `ddos_mitigation`, `execute`, `force_connection_close`, `js_challenge`, `log`, `log_custom_field`, `managed_challenge`, `redirect`, `rewrite`, `route`, `score`, `serve_error`, `set_cache_settings`, `set_config`, `skip`."
																	description_kind: "markdown"
																	optional:         true
																}
																enabled: {
																	type:             "bool"
																	description:      "Defines if the current rule-level override enables or disables the rule."
																	description_kind: "markdown"
																	optional:         true
																}
																id: {
																	type:             "string"
																	description:      "Rule ID to apply the override to."
																	description_kind: "markdown"
																	optional:         true
																}
																score_threshold: {
																	type:             "number"
																	description:      "Anomaly score threshold to apply in the ruleset rule override. Only applicable to modsecurity-based rulesets."
																	description_kind: "markdown"
																	optional:         true
																}
																sensitivity_level: {
																	type:             "string"
																	description:      "Sensitivity level for a ruleset rule override."
																	description_kind: "markdown"
																	optional:         true
																}
															}
															description:      "List of rule-based overrides."
															description_kind: "markdown"
														}
													}
												}
												description:      "List of override configurations to apply to the ruleset."
												description_kind: "markdown"
											}
										}
										response: {
											nesting_mode: "list"
											block: {
												attributes: {
													content: {
														type:             "string"
														description:      "Body content to include in the response."
														description_kind: "markdown"
														optional:         true
													}
													content_type: {
														type:             "string"
														description:      "HTTP content type to send in the response."
														description_kind: "markdown"
														optional:         true
													}
													status_code: {
														type:             "number"
														description:      "HTTP status code to send in the response."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "List of parameters that configure the response given to end users."
												description_kind: "markdown"
											}
										}
										serve_stale: {
											nesting_mode: "list"
											block: {
												attributes: disable_stale_while_updating: {
													type:             "bool"
													description:      "Disable stale while updating."
													description_kind: "markdown"
													optional:         true
												}
												description:      "List of serve stale parameters to apply to the request."
												description_kind: "markdown"
											}
										}
										sni: {
											nesting_mode: "list"
											block: {
												attributes: value: {
													type:             "string"
													description:      "Value to define for SNI."
													description_kind: "markdown"
													optional:         true
												}
												description:      "List of properties to manange Server Name Indication."
												description_kind: "markdown"
											}
										}
										uri: {
											nesting_mode: "list"
											block: {
												attributes: origin: {
													type:             "bool"
													description_kind: "plain"
													optional:         true
												}
												block_types: {
													path: {
														nesting_mode: "list"
														block: {
															attributes: {
																expression: {
																	type:             "string"
																	description:      "Expression that defines the updated (dynamic) value of the URI path or query string component. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions."
																	description_kind: "markdown"
																	optional:         true
																}
																value: {
																	type:             "string"
																	description:      "Static string value of the updated URI path or query string component."
																	description_kind: "markdown"
																	optional:         true
																}
															}
															description:      "URI path configuration when performing a URL rewrite."
															description_kind: "markdown"
														}
													}
													query: {
														nesting_mode: "list"
														block: {
															attributes: {
																expression: {
																	type:             "string"
																	description:      "Expression that defines the updated (dynamic) value of the URI path or query string component. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions."
																	description_kind: "markdown"
																	optional:         true
																}
																value: {
																	type:             "string"
																	description:      "Static string value of the updated URI path or query string component."
																	description_kind: "markdown"
																	optional:         true
																}
															}
															description:      "Query string configuration when performing a URL rewrite."
															description_kind: "markdown"
														}
													}
												}
												description:      "List of URI properties to configure for the ruleset rule when performing URL rewrite transformations."
												description_kind: "markdown"
											}
										}
									}
									description:      "List of parameters that configure the behavior of the ruleset rule action."
									description_kind: "markdown"
								}
							}
							exposed_credential_check: {
								nesting_mode: "list"
								block: {
									attributes: {
										password_expression: {
											type:             "string"
											description:      "Firewall Rules expression language based on Wireshark display filters for where to check for the \"password\" value. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language)."
											description_kind: "markdown"
											optional:         true
										}
										username_expression: {
											type:             "string"
											description:      "Firewall Rules expression language based on Wireshark display filters for where to check for the \"username\" value. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language)."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "List of parameters that configure exposed credential checks."
									description_kind: "markdown"
								}
							}
							logging: {
								nesting_mode: "list"
								block: {
									attributes: enabled: {
										type:             "bool"
										description:      "Override the default logging behavior when a rule is matched."
										description_kind: "markdown"
										optional:         true
									}
									description:      "List parameters to configure how the rule generates logs. Only valid for skip action."
									description_kind: "markdown"
								}
							}
							ratelimit: {
								nesting_mode: "list"
								block: {
									attributes: {
										characteristics: {
											type: ["set", "string"]
											description:      "List of parameters that define how Cloudflare tracks the request rate for this rule."
											description_kind: "markdown"
											optional:         true
										}
										counting_expression: {
											type:             "string"
											description:      "Criteria for counting HTTP requests to trigger the Rate Limiting action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Firewall Rules language](https://developers.cloudflare.com/firewall/cf-firewall-language) documentation for all available fields, operators, and functions."
											description_kind: "markdown"
											optional:         true
										}
										mitigation_timeout: {
											type:             "number"
											description:      "Once the request rate is reached, the Rate Limiting rule blocks further requests for the period of time defined in this field."
											description_kind: "markdown"
											optional:         true
										}
										period: {
											type:             "number"
											description:      "The period of time to consider (in seconds) when evaluating the request rate."
											description_kind: "markdown"
											optional:         true
										}
										requests_per_period: {
											type:             "number"
											description:      "The number of requests over the period of time that will trigger the Rate Limiting rule."
											description_kind: "markdown"
											optional:         true
										}
										requests_to_origin: {
											type:             "bool"
											description:      "Whether to include requests to origin within the Rate Limiting count."
											description_kind: "markdown"
											required:         true
										}
										score_per_period: {
											type:             "number"
											description:      "The maximum aggregate score over the period of time that will trigger Rate Limiting rule."
											description_kind: "markdown"
											optional:         true
										}
										score_response_header_name: {
											type:             "string"
											description:      "Name of HTTP header in the response, set by the origin server, with the score for the current request."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "List of parameters that configure HTTP rate limiting behaviour."
									description_kind: "markdown"
								}
							}
						}
						description:      "List of rules to apply to the ruleset."
						description_kind: "markdown"
					}
				}
				description: """
					The [Cloudflare Ruleset Engine](https://developers.cloudflare.com/firewall/cf-rulesets)
					allows you to create and deploy rules and rulesets.

					The engine syntax, inspired by the Wireshark Display Filter language, is the
					same syntax used in custom Firewall Rules. Cloudflare uses the Ruleset Engine
					in different products, allowing you to configure several products using the same
					basic syntax.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_spectrum_application: {
			version: 0
			block: {
				attributes: {
					argo_smart_routing: {
						type:             "bool"
						description:      "Enables Argo Smart Routing."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ip_firewall: {
						type:             "bool"
						description:      "Enables the IP Firewall for this application."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					origin_direct: {
						type: ["list", "string"]
						description:      "A list of destination addresses to the origin. e.g. `tcp://192.0.2.1:22`."
						description_kind: "markdown"
						optional:         true
					}
					origin_port: {
						type:             "number"
						description:      "Origin port to proxy traffice to. Conflicts with `origin_port_range`."
						description_kind: "markdown"
						optional:         true
					}
					protocol: {
						type:             "string"
						description:      "The port configuration at Cloudflare's edge. e.g. `tcp/22`."
						description_kind: "markdown"
						required:         true
					}
					proxy_protocol: {
						type:             "string"
						description:      "Enables a proxy protocol to the origin. Available values: `off`, `v1`, `v2`, `simple`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					tls: {
						type:             "string"
						description:      "TLS configuration option for Cloudflare to connect to your origin. Available values: `off`, `flexible`, `full`, `strict`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					traffic_type: {
						type:             "string"
						description:      "Sets application type. Available values: `direct`, `http`, `https`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					dns: {
						nesting_mode: "list"
						block: {
							attributes: {
								name: {
									type:             "string"
									description:      "The name of the DNS record associated with the application."
									description_kind: "markdown"
									required:         true
								}
								type: {
									type:             "string"
									description:      "The type of DNS record associated with the application."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "The name and type of DNS record for the Spectrum application."
							description_kind: "markdown"
						}
						min_items: 1
						max_items: 1
					}
					edge_ips: {
						nesting_mode: "list"
						block: {
							attributes: {
								connectivity: {
									type:             "string"
									description:      "The IP versions supported for inbound connections on Spectrum anycast IPs. Required when `type` is not `static`. Available values: `all`, `ipv4`, `ipv6`."
									description_kind: "markdown"
									optional:         true
								}
								ips: {
									type: ["set", "string"]
									description:      "The collection of customer owned IPs to broadcast via anycast for this hostname and application. Requires [Bring Your Own IP](https://developers.cloudflare.com/spectrum/getting-started/byoip/) provisioned."
									description_kind: "markdown"
									optional:         true
								}
								type: {
									type:             "string"
									description:      "The type of edge IP configuration specified. Available values: `dynamic`, `static`."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "The anycast edge IP configuration for the hostname of this application."
							description_kind: "markdown"
						}
						max_items: 1
					}
					origin_dns: {
						nesting_mode: "list"
						block: {
							attributes: name: {
								type:             "string"
								description:      "Fully qualified domain name of the origin."
								description_kind: "markdown"
								required:         true
							}
							description:      "A destination DNS addresses to the origin."
							description_kind: "markdown"
						}
						max_items: 1
					}
					origin_port_range: {
						nesting_mode: "list"
						block: {
							attributes: {
								end: {
									type:             "number"
									description:      "Upper bound of the origin port range."
									description_kind: "markdown"
									required:         true
								}
								start: {
									type:             "number"
									description:      "Lower bound of the origin port range."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Origin port range to proxy traffice to. When using a range, the protocol field must also specify a range, e.g. `tcp/22-23`. Conflicts with `origin_port`."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description: """
					Provides a Cloudflare Spectrum Application. You can extend the power
					of Cloudflare's DDoS, TLS, and IP Firewall to your other TCP-based
					services.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_split_tunnel: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					mode: {
						type:             "string"
						description:      "The mode of the split tunnel policy. Available values: `include`, `exclude`."
						description_kind: "markdown"
						required:         true
					}
					policy_id: {
						type:             "string"
						description:      "The settings policy for which to configure this split tunnel policy."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: tunnels: {
					nesting_mode: "set"
					block: {
						attributes: {
							address: {
								type:             "string"
								description:      "The address for the tunnel."
								description_kind: "markdown"
								optional:         true
							}
							description: {
								type:             "string"
								description:      "A description for the tunnel."
								description_kind: "markdown"
								optional:         true
							}
							host: {
								type:             "string"
								description:      "The domain name for the tunnel."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "The value of the tunnel attributes."
						description_kind: "markdown"
					}
					min_items: 1
				}
				description: """
					Provides a Cloudflare Split Tunnel resource. Split tunnels are used to either
					include or exclude lists of routes from the WARP client's tunnel.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_static_route: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					colo_names: {
						type: ["list", "string"]
						description:      "List of Cloudflare colocation regions for this static route."
						description_kind: "markdown"
						optional:         true
					}
					colo_regions: {
						type: ["list", "string"]
						description:      "List of Cloudflare colocation names for this static route."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "Description of the static route."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					nexthop: {
						type:             "string"
						description:      "The nexthop IP address where traffic will be routed to."
						description_kind: "markdown"
						required:         true
					}
					prefix: {
						type:             "string"
						description:      "Your network prefix using CIDR notation."
						description_kind: "markdown"
						required:         true
					}
					priority: {
						type:             "number"
						description:      "The priority for the static route."
						description_kind: "markdown"
						required:         true
					}
					weight: {
						type:             "number"
						description:      "The optional weight for ECMP routes. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a resource, that manages Cloudflare static routes for Magic
					Transit or Magic WAN. Static routes are used to route traffic
					through GRE tunnels.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_teams_account: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					activity_log_enabled: {
						type:             "bool"
						description:      "Whether to enable the activity log."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					protocol_detection_enabled: {
						type:             "bool"
						description:      "Indicator that protocol detection is enabled."
						description_kind: "markdown"
						optional:         true
					}
					tls_decrypt_enabled: {
						type:             "bool"
						description:      "Indicator that decryption of TLS traffic is enabled."
						description_kind: "markdown"
						optional:         true
					}
					url_browser_isolation_enabled: {
						type:             "bool"
						description:      "Safely browse websites in Browser Isolation through a URL."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: {
					antivirus: {
						nesting_mode: "list"
						block: {
							attributes: {
								enabled_download_phase: {
									type:             "bool"
									description:      "Scan on file download."
									description_kind: "markdown"
									required:         true
								}
								enabled_upload_phase: {
									type:             "bool"
									description:      "Scan on file upload."
									description_kind: "markdown"
									required:         true
								}
								fail_closed: {
									type:             "bool"
									description:      "Block requests for files that cannot be scanned."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Configuration block for antivirus traffic scanning."
							description_kind: "markdown"
						}
						max_items: 1
					}
					block_page: {
						nesting_mode: "list"
						block: {
							attributes: {
								background_color: {
									type:             "string"
									description:      "Hex code of block page background color."
									description_kind: "markdown"
									optional:         true
								}
								enabled: {
									type:             "bool"
									description:      "Indicator of enablement."
									description_kind: "markdown"
									optional:         true
								}
								footer_text: {
									type:             "string"
									description:      "Block page footer text."
									description_kind: "markdown"
									optional:         true
								}
								header_text: {
									type:             "string"
									description:      "Block page header text."
									description_kind: "markdown"
									optional:         true
								}
								logo_path: {
									type:             "string"
									description:      "URL of block page logo."
									description_kind: "markdown"
									optional:         true
								}
								mailto_address: {
									type:             "string"
									description:      "Admin email for users to contact."
									description_kind: "markdown"
									optional:         true
								}
								mailto_subject: {
									type:             "string"
									description:      "Subject line for emails created from block page."
									description_kind: "markdown"
									optional:         true
								}
								name: {
									type:             "string"
									description:      "Name of block page configuration."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "Configuration for a custom block page."
							description_kind: "markdown"
						}
						max_items: 1
					}
					fips: {
						nesting_mode: "list"
						block: {
							attributes: tls: {
								type:             "bool"
								description:      "Only allow FIPS-compliant TLS configuration."
								description_kind: "markdown"
								optional:         true
							}
							description:      "Configure compliance with Federal Information Processing Standards."
							description_kind: "markdown"
						}
						max_items: 1
					}
					logging: {
						nesting_mode: "list"
						block: {
							attributes: redact_pii: {
								type:             "bool"
								description:      "Redact personally identifiable information from activity logging (PII fields are: source IP, user email, user ID, device ID, URL, referrer, user agent)."
								description_kind: "markdown"
								required:         true
							}
							block_types: settings_by_rule_type: {
								nesting_mode: "list"
								block: {
									block_types: {
										dns: {
											nesting_mode: "list"
											block: {
												attributes: {
													log_all: {
														type:             "bool"
														description:      "Whether to log all activity."
														description_kind: "markdown"
														required:         true
													}
													log_blocks: {
														type:             "bool"
														description_kind: "plain"
														required:         true
													}
												}
												description:      "Logging configuration for DNS requests."
												description_kind: "markdown"
											}
											min_items: 1
											max_items: 1
										}
										http: {
											nesting_mode: "list"
											block: {
												attributes: {
													log_all: {
														type:             "bool"
														description:      "Whether to log all activity."
														description_kind: "markdown"
														required:         true
													}
													log_blocks: {
														type:             "bool"
														description_kind: "plain"
														required:         true
													}
												}
												description:      "Logging configuration for HTTP requests."
												description_kind: "markdown"
											}
											min_items: 1
											max_items: 1
										}
										l4: {
											nesting_mode: "list"
											block: {
												attributes: {
													log_all: {
														type:             "bool"
														description:      "Whether to log all activity."
														description_kind: "markdown"
														required:         true
													}
													log_blocks: {
														type:             "bool"
														description_kind: "plain"
														required:         true
													}
												}
												description:      "Logging configuration for layer 4 requests."
												description_kind: "markdown"
											}
											min_items: 1
											max_items: 1
										}
									}
									description:      "Represents whether all requests are logged or only the blocked requests are slogged in DNS, HTTP and L4 filters."
									description_kind: "markdown"
								}
								min_items: 1
								max_items: 1
							}
							description_kind: "plain"
						}
						max_items: 1
					}
					payload_log: {
						nesting_mode: "list"
						block: {
							attributes: public_key: {
								type:             "string"
								description:      "Public key used to encrypt matched payloads."
								description_kind: "markdown"
								required:         true
							}
							description:      "Configuration for DLP Payload Logging."
							description_kind: "markdown"
						}
						max_items: 1
					}
					proxy: {
						nesting_mode: "list"
						block: {
							attributes: {
								root_ca: {
									type:             "bool"
									description:      "Whether root ca is enabled account wide for ZT clients."
									description_kind: "markdown"
									required:         true
								}
								tcp: {
									type:             "bool"
									description:      "Whether gateway proxy is enabled on gateway devices for TCP traffic."
									description_kind: "markdown"
									required:         true
								}
								udp: {
									type:             "bool"
									description:      "Whether gateway proxy is enabled on gateway devices for UDP traffic."
									description_kind: "markdown"
									required:         true
								}
							}
							description:      "Configuration block for specifying which protocols are proxied."
							description_kind: "markdown"
						}
						max_items: 1
					}
					ssh_session_log: {
						nesting_mode: "list"
						block: {
							attributes: public_key: {
								type:             "string"
								description:      "Public key used to encrypt ssh session."
								description_kind: "markdown"
								required:         true
							}
							description:      "Configuration for SSH Session Logging."
							description_kind: "markdown"
						}
						max_items: 1
					}
				}
				description: """
					Provides a Cloudflare Teams Account resource. The Teams Account
					resource defines configuration for secure web gateway.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_teams_list: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "The description of the teams list."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					items: {
						type: ["set", "string"]
						description:      "The items of the teams list."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "Name of the teams list."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "The teams list type. Available values: `IP`, `SERIAL`, `URL`, `DOMAIN`, `EMAIL`."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare Teams List resource. Teams lists are
					referenced when creating secure web gateway policies or device
					posture rules.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_teams_location: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					anonymized_logs_enabled: {
						type:             "bool"
						description:      "Indicator that anonymized logs are enabled."
						description_kind: "markdown"
						computed:         true
					}
					client_default: {
						type:             "bool"
						description:      "Indicator that this is the default location."
						description_kind: "markdown"
						optional:         true
					}
					doh_subdomain: {
						type:             "string"
						description:      "The FQDN that DoH clients should be pointed at."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ip: {
						type:             "string"
						description:      "Client IP address."
						description_kind: "markdown"
						computed:         true
					}
					ipv4_destination: {
						type:             "string"
						description:      "IP to direct all IPv4 DNS queries to."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Name of the teams location."
						description_kind: "markdown"
						required:         true
					}
					policy_ids: {
						type: ["list", "string"]
						description_kind: "plain"
						computed:         true
					}
				}
				block_types: networks: {
					nesting_mode: "set"
					block: {
						attributes: {
							id: {
								type:             "string"
								description_kind: "plain"
								computed:         true
							}
							network: {
								type:             "string"
								description:      "CIDR notation representation of the network IP."
								description_kind: "markdown"
								required:         true
							}
						}
						description:      "The networks CIDRs that comprise the location."
						description_kind: "markdown"
					}
				}
				description: """
					Provides a Cloudflare Teams Location resource. Teams Locations are
					referenced when creating secure web gateway policies.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_teams_proxy_endpoint: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ips: {
						type: ["set", "string"]
						description:      "The networks CIDRs that will be allowed to initiate proxy connections."
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "Name of the teams proxy endpoint."
						description_kind: "markdown"
						required:         true
					}
					subdomain: {
						type:             "string"
						description:      "The FQDN that proxy clients should be pointed at."
						description_kind: "markdown"
						computed:         true
					}
				}
				description: """
					Provides a Cloudflare Teams Proxy Endpoint resource. Teams Proxy
					Endpoints are used for pointing proxy clients at Cloudflare Secure
					Gateway.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_teams_rule: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					action: {
						type:             "string"
						description:      "The action executed by matched teams rule. Available values: `allow`, `block`, `safesearch`, `ytrestricted`, `on`, `off`, `scan`, `noscan`, `isolate`, `noisolate`, `override`, `l4_override`, `egress`, `audit_ssh`."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "The description of the teams rule."
						description_kind: "markdown"
						required:         true
					}
					device_posture: {
						type:             "string"
						description:      "The wirefilter expression to be used for device_posture check matching."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Indicator of rule enablement."
						description_kind: "markdown"
						optional:         true
					}
					filters: {
						type: ["list", "string"]
						description:      "The protocol or layer to evaluate the traffic and identity expressions."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					identity: {
						type:             "string"
						description:      "The wirefilter expression to be used for identity matching."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The name of the teams rule."
						description_kind: "markdown"
						required:         true
					}
					precedence: {
						type:             "number"
						description:      "The evaluation precedence of the teams rule."
						description_kind: "markdown"
						required:         true
					}
					traffic: {
						type:             "string"
						description:      "The wirefilter expression to be used for traffic matching."
						description_kind: "markdown"
						optional:         true
					}
					version: {
						type:             "number"
						description_kind: "plain"
						computed:         true
					}
				}
				block_types: rule_settings: {
					nesting_mode: "list"
					block: {
						attributes: {
							add_headers: {
								type: ["map", "string"]
								description:      "Add custom headers to allowed requests in the form of key-value pairs."
								description_kind: "markdown"
								optional:         true
							}
							allow_child_bypass: {
								type:             "bool"
								description:      "Allow parent MSP accounts to enable bypass their children's rules."
								description_kind: "markdown"
								optional:         true
							}
							block_page_enabled: {
								type:             "bool"
								description:      "Indicator of block page enablement."
								description_kind: "markdown"
								optional:         true
							}
							block_page_reason: {
								type:             "string"
								description:      "The displayed reason for a user being blocked."
								description_kind: "markdown"
								optional:         true
							}
							bypass_parent_rule: {
								type:             "bool"
								description:      "Allow child MSP accounts to bypass their parent's rule."
								description_kind: "markdown"
								optional:         true
							}
							insecure_disable_dnssec_validation: {
								type:             "bool"
								description:      "Disable DNSSEC validation (must be Allow rule)."
								description_kind: "markdown"
								optional:         true
							}
							ip_categories: {
								type:             "bool"
								description:      "Turns on IP category based filter on dns if the rule contains dns category checks."
								description_kind: "markdown"
								optional:         true
							}
							override_host: {
								type:             "string"
								description:      "The host to override matching DNS queries with."
								description_kind: "markdown"
								optional:         true
							}
							override_ips: {
								type: ["list", "string"]
								description:      "The IPs to override matching DNS queries with."
								description_kind: "markdown"
								optional:         true
							}
						}
						block_types: {
							audit_ssh: {
								nesting_mode: "list"
								block: {
									attributes: command_logging: {
										type:             "bool"
										description:      "Log all SSH commands."
										description_kind: "markdown"
										required:         true
									}
									description:      "Settings for auditing SSH usage."
									description_kind: "markdown"
								}
								max_items: 1
							}
							biso_admin_controls: {
								nesting_mode: "list"
								block: {
									attributes: {
										disable_copy_paste: {
											type:             "bool"
											description:      "Disable copy-paste."
											description_kind: "markdown"
											optional:         true
										}
										disable_download: {
											type:             "bool"
											description:      "Disable download."
											description_kind: "markdown"
											optional:         true
										}
										disable_keyboard: {
											type:             "bool"
											description:      "Disable keyboard usage."
											description_kind: "markdown"
											optional:         true
										}
										disable_printing: {
											type:             "bool"
											description:      "Disable printing."
											description_kind: "markdown"
											optional:         true
										}
										disable_upload: {
											type:             "bool"
											description:      "Disable upload."
											description_kind: "markdown"
											optional:         true
										}
									}
									description:      "Configure how browser isolation behaves."
									description_kind: "markdown"
								}
								max_items: 1
							}
							check_session: {
								nesting_mode: "list"
								block: {
									attributes: {
										duration: {
											type:             "string"
											description:      "Configure how fresh the session needs to be to be considered valid."
											description_kind: "markdown"
											required:         true
										}
										enforce: {
											type:             "bool"
											description:      "Enable session enforcement for this rule."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Configure how session check behaves."
									description_kind: "markdown"
								}
								max_items: 1
							}
							egress: {
								nesting_mode: "list"
								block: {
									attributes: {
										ipv4: {
											type:             "string"
											description:      "The IPv4 address to be used for egress."
											description_kind: "markdown"
											required:         true
										}
										ipv4_fallback: {
											type:             "string"
											description:      "The IPv4 address to be used for egress in the event of an error egressing with the primary IPv4. Can be '0.0.0.0' to indicate local egreass via Warp IPs."
											description_kind: "markdown"
											optional:         true
										}
										ipv6: {
											type:             "string"
											description:      "The IPv6 range to be used for egress."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Configure how Proxy traffic egresses. Can be set for rules with Egress action and Egress filter. Can be omitted to indicate local egress via Warp IPs."
									description_kind: "markdown"
								}
								max_items: 1
							}
							l4override: {
								nesting_mode: "list"
								block: {
									attributes: {
										ip: {
											type:             "string"
											description:      "Override IP to forward traffic to."
											description_kind: "markdown"
											required:         true
										}
										port: {
											type:             "number"
											description:      "Override Port to forward traffic to."
											description_kind: "markdown"
											required:         true
										}
									}
									description:      "Settings to forward layer 4 traffic."
									description_kind: "markdown"
								}
								max_items: 1
							}
							payload_log: {
								nesting_mode: "list"
								block: {
									attributes: enabled: {
										type:             "bool"
										description:      "Enable or disable DLP Payload Logging for this rule."
										description_kind: "markdown"
										required:         true
									}
									description:      "Configure DLP Payload Logging settings for this rule."
									description_kind: "markdown"
								}
								max_items: 1
							}
							untrusted_cert: {
								nesting_mode: "list"
								block: {
									attributes: action: {
										type:             "string"
										description:      "Action to be taken when the SSL certificate of upstream is invalid. Available values: `pass_through`, `block`, `error`."
										description_kind: "markdown"
										optional:         true
									}
									description:      "Configure untrusted certificate settings for this rule."
									description_kind: "markdown"
								}
								max_items: 1
							}
						}
						description:      "Additional rule settings."
						description_kind: "markdown"
					}
					max_items: 1
				}
				description:      "Provides a Cloudflare Teams rule resource. Teams rules comprise secure web gateway policies."
				description_kind: "markdown"
			}
		}
		cloudflare_tiered_cache: {
			version: 0
			block: {
				attributes: {
					cache_type: {
						type:             "string"
						description:      "The typed of tiered cache to utilize on the zone. Available values: `generic`, `smart`, `off`."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource, that manages Cloudflare Tiered Cache settings.
					This allows you to adjust topologies for your zone.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_total_tls: {
			version: 0
			block: {
				attributes: {
					certificate_authority: {
						type:             "string"
						description:      "The Certificate Authority that Total TLS certificates will be issued through. Available values: `google`, `lets_encrypt`."
						description_kind: "markdown"
						optional:         true
					}
					enabled: {
						type:             "bool"
						description:      "Enable Total TLS for the zone."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource which manages Total TLS for a zone.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_tunnel: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					cname: {
						type:             "string"
						description:      "Usable CNAME for accessing the Tunnel."
						description_kind: "markdown"
						computed:         true
					}
					config_src: {
						type:             "string"
						description:      "Indicates if this is a locally or remotely configured tunnel. If `local`, manage the tunnel using a YAML file on the origin machine. If `cloudflare`, manage the tunnel on the Zero Trust dashboard or using tunnel_config, tunnel_route or tunnel_virtual_network resources. Available values: `local`, `cloudflare`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "A user-friendly name chosen when the tunnel is created. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					secret: {
						type:             "string"
						description:      "32 or more bytes, encoded as a base64 string. The Create Argo Tunnel endpoint sets this as the tunnel's password. Anyone wishing to run the tunnel needs this password. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
						sensitive:        true
					}
					tunnel_token: {
						type:             "string"
						description:      "Token used by a connector to authenticate and run the tunnel."
						description_kind: "markdown"
						computed:         true
						sensitive:        true
					}
				}
				description: """
					Tunnel exposes applications running on your local web server on any
					network with an internet connection without manually adding DNS
					records or configuring a firewall or router.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_tunnel_config: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					tunnel_id: {
						type:             "string"
						description:      "Identifier of the Tunnel to target for this configuration."
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: config: {
					nesting_mode: "list"
					block: {
						block_types: {
							ingress_rule: {
								nesting_mode: "list"
								block: {
									attributes: {
										hostname: {
											type:             "string"
											description:      "Hostname to match the incoming request with. If the hostname matches, the request will be sent to the service."
											description_kind: "markdown"
											optional:         true
										}
										path: {
											type:             "string"
											description:      "Path of the incoming request. If the path matches, the request will be sent to the local service."
											description_kind: "markdown"
											optional:         true
										}
										service: {
											type:             "string"
											description:      "Name of the service to which the request will be sent."
											description_kind: "markdown"
											required:         true
										}
									}
									block_types: origin_request: {
										nesting_mode: "list"
										block: {
											attributes: {
												bastion_mode: {
													type:             "bool"
													description:      "Runs as jump host."
													description_kind: "markdown"
													optional:         true
												}
												ca_pool: {
													type:             "string"
													description:      "Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare. Defaults to `\"\"`."
													description_kind: "markdown"
													optional:         true
												}
												connect_timeout: {
													type:             "string"
													description:      "Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by `tlsTimeout`. Defaults to `30s`."
													description_kind: "markdown"
													optional:         true
												}
												disable_chunked_encoding: {
													type:             "bool"
													description:      "Disables chunked transfer encoding. Useful if you are running a Web Server Gateway Interface (WSGI) server. Defaults to `false`."
													description_kind: "markdown"
													optional:         true
												}
												http2_origin: {
													type:             "bool"
													description:      "Enables HTTP/2 support for the origin connection. Defaults to `false`."
													description_kind: "markdown"
													optional:         true
												}
												http_host_header: {
													type:             "string"
													description:      "Sets the HTTP Host header on requests sent to the local service. Defaults to `\"\"`."
													description_kind: "markdown"
													optional:         true
												}
												keep_alive_connections: {
													type:             "number"
													description:      "Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections. Defaults to `100`."
													description_kind: "markdown"
													optional:         true
												}
												keep_alive_timeout: {
													type:             "string"
													description:      "Timeout after which an idle keepalive connection can be discarded. Defaults to `1m30s`."
													description_kind: "markdown"
													optional:         true
												}
												no_happy_eyeballs: {
													type:             "bool"
													description:      "Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols. Defaults to `false`."
													description_kind: "markdown"
													optional:         true
												}
												no_tls_verify: {
													type:             "bool"
													description:      "Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted. Defaults to `false`."
													description_kind: "markdown"
													optional:         true
												}
												origin_server_name: {
													type:             "string"
													description:      "Hostname that cloudflared should expect from your origin server certificate. Defaults to `\"\"`."
													description_kind: "markdown"
													optional:         true
												}
												proxy_address: {
													type:             "string"
													description:      "cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen address for that proxy. Defaults to `127.0.0.1`."
													description_kind: "markdown"
													optional:         true
												}
												proxy_port: {
													type:             "number"
													description:      "cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen port for that proxy. If set to zero, an unused port will randomly be chosen. Defaults to `0`."
													description_kind: "markdown"
													optional:         true
												}
												proxy_type: {
													type:             "string"
													description:      "cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Available values: `\"\"`, `socks`. Defaults to `\"\"`."
													description_kind: "markdown"
													optional:         true
												}
												tcp_keep_alive: {
													type:             "string"
													description:      "The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server. Defaults to `30s`."
													description_kind: "markdown"
													optional:         true
												}
												tls_timeout: {
													type:             "string"
													description:      "Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server. Defaults to `10s`."
													description_kind: "markdown"
													optional:         true
												}
											}
											block_types: {
												access: {
													nesting_mode: "list"
													block: {
														attributes: {
															aud_tag: {
																type: ["set", "string"]
																description:      "Audience tags of the access rule."
																description_kind: "markdown"
																optional:         true
															}
															required: {
																type:             "bool"
																description:      "Whether the access rule is required."
																description_kind: "markdown"
																optional:         true
															}
															team_name: {
																type:             "string"
																description:      "Name of the team to which the access rule applies."
																description_kind: "markdown"
																optional:         true
															}
														}
														description:      "Access rules for the ingress service."
														description_kind: "markdown"
													}
													max_items: 1
												}
												ip_rules: {
													nesting_mode: "set"
													block: {
														attributes: {
															allow: {
																type:             "bool"
																description:      "Whether to allow the IP prefix."
																description_kind: "markdown"
																optional:         true
															}
															ports: {
																type: ["list", "number"]
																description:      "Ports to use within the IP rule."
																description_kind: "markdown"
																optional:         true
															}
															prefix: {
																type:             "string"
																description:      "IP rule prefix."
																description_kind: "markdown"
																optional:         true
															}
														}
														description:      "IP rules for the proxy service."
														description_kind: "markdown"
													}
												}
											}
											description_kind: "plain"
										}
										max_items: 1
									}
									description:      "Each incoming request received by cloudflared causes cloudflared to send a request to a local service. This section configures the rules that determine which requests are sent to which local services. [Read more](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/tunnel-guide/local/local-management/ingress/)."
									description_kind: "markdown"
								}
								min_items: 1
							}
							origin_request: {
								nesting_mode: "list"
								block: {
									attributes: {
										bastion_mode: {
											type:             "bool"
											description:      "Runs as jump host."
											description_kind: "markdown"
											optional:         true
										}
										ca_pool: {
											type:             "string"
											description:      "Path to the certificate authority (CA) for the certificate of your origin. This option should be used only if your certificate is not signed by Cloudflare. Defaults to `\"\"`."
											description_kind: "markdown"
											optional:         true
										}
										connect_timeout: {
											type:             "string"
											description:      "Timeout for establishing a new TCP connection to your origin server. This excludes the time taken to establish TLS, which is controlled by `tlsTimeout`. Defaults to `30s`."
											description_kind: "markdown"
											optional:         true
										}
										disable_chunked_encoding: {
											type:             "bool"
											description:      "Disables chunked transfer encoding. Useful if you are running a Web Server Gateway Interface (WSGI) server. Defaults to `false`."
											description_kind: "markdown"
											optional:         true
										}
										http2_origin: {
											type:             "bool"
											description:      "Enables HTTP/2 support for the origin connection. Defaults to `false`."
											description_kind: "markdown"
											optional:         true
										}
										http_host_header: {
											type:             "string"
											description:      "Sets the HTTP Host header on requests sent to the local service. Defaults to `\"\"`."
											description_kind: "markdown"
											optional:         true
										}
										keep_alive_connections: {
											type:             "number"
											description:      "Maximum number of idle keepalive connections between Tunnel and your origin. This does not restrict the total number of concurrent connections. Defaults to `100`."
											description_kind: "markdown"
											optional:         true
										}
										keep_alive_timeout: {
											type:             "string"
											description:      "Timeout after which an idle keepalive connection can be discarded. Defaults to `1m30s`."
											description_kind: "markdown"
											optional:         true
										}
										no_happy_eyeballs: {
											type:             "bool"
											description:      "Disable the “happy eyeballs” algorithm for IPv4/IPv6 fallback if your local network has misconfigured one of the protocols. Defaults to `false`."
											description_kind: "markdown"
											optional:         true
										}
										no_tls_verify: {
											type:             "bool"
											description:      "Disables TLS verification of the certificate presented by your origin. Will allow any certificate from the origin to be accepted. Defaults to `false`."
											description_kind: "markdown"
											optional:         true
										}
										origin_server_name: {
											type:             "string"
											description:      "Hostname that cloudflared should expect from your origin server certificate. Defaults to `\"\"`."
											description_kind: "markdown"
											optional:         true
										}
										proxy_address: {
											type:             "string"
											description:      "cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen address for that proxy. Defaults to `127.0.0.1`."
											description_kind: "markdown"
											optional:         true
										}
										proxy_port: {
											type:             "number"
											description:      "cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures the listen port for that proxy. If set to zero, an unused port will randomly be chosen. Defaults to `0`."
											description_kind: "markdown"
											optional:         true
										}
										proxy_type: {
											type:             "string"
											description:      "cloudflared starts a proxy server to translate HTTP traffic into TCP when proxying, for example, SSH or RDP. This configures what type of proxy will be started. Available values: `\"\"`, `socks`. Defaults to `\"\"`."
											description_kind: "markdown"
											optional:         true
										}
										tcp_keep_alive: {
											type:             "string"
											description:      "The timeout after which a TCP keepalive packet is sent on a connection between Tunnel and the origin server. Defaults to `30s`."
											description_kind: "markdown"
											optional:         true
										}
										tls_timeout: {
											type:             "string"
											description:      "Timeout for completing a TLS handshake to your origin server, if you have chosen to connect Tunnel to an HTTPS server. Defaults to `10s`."
											description_kind: "markdown"
											optional:         true
										}
									}
									block_types: {
										access: {
											nesting_mode: "list"
											block: {
												attributes: {
													aud_tag: {
														type: ["set", "string"]
														description:      "Audience tags of the access rule."
														description_kind: "markdown"
														optional:         true
													}
													required: {
														type:             "bool"
														description:      "Whether the access rule is required."
														description_kind: "markdown"
														optional:         true
													}
													team_name: {
														type:             "string"
														description:      "Name of the team to which the access rule applies."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "Access rules for the ingress service."
												description_kind: "markdown"
											}
											max_items: 1
										}
										ip_rules: {
											nesting_mode: "set"
											block: {
												attributes: {
													allow: {
														type:             "bool"
														description:      "Whether to allow the IP prefix."
														description_kind: "markdown"
														optional:         true
													}
													ports: {
														type: ["list", "number"]
														description:      "Ports to use within the IP rule."
														description_kind: "markdown"
														optional:         true
													}
													prefix: {
														type:             "string"
														description:      "IP rule prefix."
														description_kind: "markdown"
														optional:         true
													}
												}
												description:      "IP rules for the proxy service."
												description_kind: "markdown"
											}
										}
									}
									description_kind: "plain"
								}
								max_items: 1
							}
							warp_routing: {
								nesting_mode: "list"
								block: {
									attributes: enabled: {
										type:             "bool"
										description:      "Whether WARP routing is enabled."
										description_kind: "markdown"
										optional:         true
									}
									description:      "If you're exposing a [private network](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/private-net/), you need to add the `warp-routing` key and set it to `true`."
									description_kind: "markdown"
								}
								max_items: 1
							}
						}
						description:      "Configuration block for Tunnel Configuration."
						description_kind: "markdown"
					}
					min_items: 1
					max_items: 1
				}
				description: """
					Provides a Cloudflare Tunnel configuration resource.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_tunnel_route: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					comment: {
						type:             "string"
						description:      "Description of the tunnel route."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					network: {
						type:             "string"
						description:      "The IPv4 or IPv6 network that should use this tunnel route, in CIDR notation."
						description_kind: "markdown"
						required:         true
					}
					tunnel_id: {
						type:             "string"
						description:      "The ID of the tunnel that will service the tunnel route."
						description_kind: "markdown"
						required:         true
					}
					virtual_network_id: {
						type:             "string"
						description:      "The ID of the virtual network for which this route is being added; uses the default virtual network of the account if none is provided. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				description: """
					Provides a resource, that manages Cloudflare tunnel routes for Zero
					Trust. Tunnel routes are used to direct IP traffic through
					Cloudflare Tunnels.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_tunnel_virtual_network: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					comment: {
						type:             "string"
						description:      "Description of the tunnel virtual network."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					is_default_network: {
						type:             "bool"
						description:      "Whether this virtual network is the default one for the account. This means IP Routes belong to this virtual network and Teams Clients in the account route through this virtual network, unless specified otherwise for each case."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "A user-friendly name chosen when the virtual network is created."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource, that manages Cloudflare tunnel virtual networks
					for Zero Trust. Tunnel virtual networks are used for segregation of
					Tunnel IP Routes via Virtualized Networks to handle overlapping
					private IPs in your origins.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_turnstile_widget: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					bot_fight_mode: {
						type:             "bool"
						description:      "If bot_fight_mode is set to true, Cloudflare issues computationally expensive challenges in response to malicious bots (Enterprise only)."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					domains: {
						type: ["set", "string"]
						description:      "Domains where the widget is deployed"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description:      "The identifier of this resource. This is the site key value."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					mode: {
						type:             "string"
						description:      "Widget Mode. Available values: `non-interactive`, `invisible`, `managed`"
						description_kind: "markdown"
						required:         true
					}
					name: {
						type:             "string"
						description:      "Human readable widget name."
						description_kind: "markdown"
						required:         true
					}
					offlabel: {
						type:             "bool"
						description:      "Do not show any Cloudflare branding on the widget (Enterprise only)."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					region: {
						type:             "string"
						description:      "Region where this widget can be used."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					secret: {
						type:             "string"
						description:      "Secret key for this widget."
						description_kind: "markdown"
						computed:         true
						sensitive:        true
					}
				}
				description: """
					The [Turnstile Widget](https://developers.cloudflare.com/turnstile/) resource allows you to manage Cloudflare Turnstile Widgets.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_url_normalization_settings: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					scope: {
						type:             "string"
						description:      "The scope of the URL normalization."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "The type of URL normalization performed by Cloudflare."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a resource to manage URL Normalization Settings.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_user_agent_blocking_rule: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "An informative summary of the rule."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					mode: {
						type:             "string"
						description:      "The action to apply to a matched request. Available values: `block`, `challenge`, `js_challenge`, `managed_challenge`."
						description_kind: "markdown"
						required:         true
					}
					paused: {
						type:             "bool"
						description:      "When true, indicates that the rule is currently paused."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: configuration: {
					nesting_mode: "list"
					block: {
						attributes: {
							target: {
								type:             "string"
								description:      "The configuration target for this rule. You must set the target to ua for User Agent Blocking rules."
								description_kind: "markdown"
								required:         true
							}
							value: {
								type:             "string"
								description:      "The exact user agent string to match. This value will be compared to the received User-Agent HTTP header value."
								description_kind: "markdown"
								required:         true
							}
						}
						description:      "The configuration object for the current rule."
						description_kind: "markdown"
					}
					min_items: 1
					max_items: 1
				}
				description: """
					Provides a resource to manage User Agent Blocking Rules.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_waiting_room: {
			version: 0
			block: {
				attributes: {
					cookie_suffix: {
						type:             "string"
						description:      "A cookie suffix to be appended to the Cloudflare waiting room cookie name."
						description_kind: "markdown"
						optional:         true
					}
					custom_page_html: {
						type:             "string"
						description:      "This is a templated html file that will be rendered at the edge."
						description_kind: "markdown"
						optional:         true
					}
					default_template_language: {
						type:             "string"
						description:      "The language to use for the default waiting room page. Available values: `de-DE`, `es-ES`, `en-US`, `fr-FR`, `id-ID`, `it-IT`, `ja-JP`, `ko-KR`, `nl-NL`, `pl-PL`, `pt-BR`, `tr-TR`, `zh-CN`, `zh-TW`, `ru-RU`, `fa-IR`. Defaults to `en-US`."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "A description to add more details about the waiting room."
						description_kind: "markdown"
						optional:         true
					}
					disable_session_renewal: {
						type:             "bool"
						description:      "Disables automatic renewal of session cookies."
						description_kind: "markdown"
						optional:         true
					}
					host: {
						type:             "string"
						description:      "Host name for which the waiting room will be applied (no wildcards)."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					json_response_enabled: {
						type:             "bool"
						description:      "If true, requests to the waiting room with the header `Accept: application/json` will receive a JSON response object."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "A unique name to identify the waiting room. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					new_users_per_minute: {
						type:             "number"
						description:      "The number of new users that will be let into the route every minute."
						description_kind: "markdown"
						required:         true
					}
					path: {
						type:             "string"
						description:      "The path within the host to enable the waiting room on. Defaults to `/`."
						description_kind: "markdown"
						optional:         true
					}
					queue_all: {
						type:             "bool"
						description:      "If queue_all is true, then all traffic will be sent to the waiting room."
						description_kind: "markdown"
						optional:         true
					}
					queueing_method: {
						type:             "string"
						description:      "The queueing method used by the waiting room. Available values: `fifo`, `random`, `passthrough`, `reject`. Defaults to `fifo`."
						description_kind: "markdown"
						optional:         true
					}
					queueing_status_code: {
						type:             "number"
						description:      "HTTP status code returned to a user while in the queue. Defaults to `200`."
						description_kind: "markdown"
						optional:         true
					}
					session_duration: {
						type:             "number"
						description:      "Lifetime of a cookie (in minutes) set by Cloudflare for users who get access to the origin. Defaults to `5`."
						description_kind: "markdown"
						optional:         true
					}
					suspended: {
						type:             "bool"
						description:      "Suspends the waiting room."
						description_kind: "markdown"
						optional:         true
					}
					total_active_users: {
						type:             "number"
						description:      "The total number of active user sessions on the route at a point in time."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					additional_routes: {
						nesting_mode: "list"
						block: {
							attributes: {
								host: {
									type:             "string"
									description:      "The additional host name for which the waiting room to be applied on (no wildcards)."
									description_kind: "markdown"
									required:         true
								}
								path: {
									type:             "string"
									description:      "The path within the additional host to enable the waiting room on. Defaults to `/`."
									description_kind: "markdown"
									optional:         true
								}
							}
							description:      "A list of additional hostname and paths combination to be applied on the waiting room."
							description_kind: "markdown"
						}
					}
					timeouts: {
						nesting_mode: "single"
						block: {
							attributes: {
								create: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
								update: {
									type:             "string"
									description_kind: "plain"
									optional:         true
								}
							}
							description_kind: "plain"
						}
					}
				}
				description:      "Provides a Cloudflare Waiting Room resource."
				description_kind: "markdown"
			}
		}
		cloudflare_waiting_room_event: {
			version: 0
			block: {
				attributes: {
					created_on: {
						type:             "string"
						description:      "Creation time."
						description_kind: "markdown"
						computed:         true
					}
					custom_page_html: {
						type:             "string"
						description:      "This is a templated html file that will be rendered at the edge."
						description_kind: "markdown"
						optional:         true
					}
					description: {
						type:             "string"
						description:      "A description to let users add more details about the event."
						description_kind: "markdown"
						optional:         true
					}
					disable_session_renewal: {
						type:             "bool"
						description:      "Disables automatic renewal of session cookies."
						description_kind: "markdown"
						optional:         true
					}
					event_end_time: {
						type:             "string"
						description:      "ISO 8601 timestamp that marks the end of the event. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					event_start_time: {
						type:             "string"
						description:      "ISO 8601 timestamp that marks the start of the event. Must occur at least 1 minute before `event_end_time`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "Last modified time."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "A unique name to identify the event. Only alphanumeric characters, hyphens, and underscores are allowed. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					new_users_per_minute: {
						type:             "number"
						description:      "The number of new users that will be let into the route every minute."
						description_kind: "markdown"
						optional:         true
					}
					prequeue_start_time: {
						type:             "string"
						description:      "ISO 8601 timestamp that marks when to begin queueing all users before the event starts. Must occur at least 5 minutes before `event_start_time`."
						description_kind: "markdown"
						optional:         true
					}
					queueing_method: {
						type:             "string"
						description:      "The queueing method used by the waiting room. Available values: `fifo`, `random`, `passthrough`, `reject`."
						description_kind: "markdown"
						optional:         true
					}
					session_duration: {
						type:             "number"
						description:      "Lifetime of a cookie (in minutes) set by Cloudflare for users who get access to the origin."
						description_kind: "markdown"
						optional:         true
					}
					shuffle_at_event_start: {
						type:             "bool"
						description:      "Users in the prequeue will be shuffled randomly at the `event_start_time`. Requires that `prequeue_start_time` is not null. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					suspended: {
						type:             "bool"
						description:      "If suspended, the event is ignored and traffic will be handled based on the waiting room configuration."
						description_kind: "markdown"
						optional:         true
					}
					total_active_users: {
						type:             "number"
						description:      "The total number of active user sessions on the route at a point in time."
						description_kind: "markdown"
						optional:         true
					}
					waiting_room_id: {
						type:             "string"
						description:      "The Waiting Room ID the event should apply to. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides a Cloudflare Waiting Room Event resource."
				description_kind: "markdown"
			}
		}
		cloudflare_waiting_room_rules: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					waiting_room_id: {
						type:             "string"
						description:      "The Waiting Room ID the rules should apply to. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: rules: {
					nesting_mode: "list"
					block: {
						attributes: {
							action: {
								type:             "string"
								description:      "Action to perform in the ruleset rule. Available values: `bypass_waiting_room`."
								description_kind: "markdown"
								required:         true
							}
							description: {
								type:             "string"
								description:      "Brief summary of the waiting room rule and its intended use."
								description_kind: "markdown"
								optional:         true
							}
							expression: {
								type:             "string"
								description:      "Criteria for an HTTP request to trigger the waiting room rule action. Uses the Firewall Rules expression language based on Wireshark display filters. Refer to the [Waiting Room Rules Docs](https://developers.cloudflare.com/waiting-room/additional-options/waiting-room-rules/bypass-rules/)."
								description_kind: "markdown"
								required:         true
							}
							id: {
								type:             "string"
								description:      "Unique rule identifier."
								description_kind: "markdown"
								computed:         true
							}
							status: {
								type:             "string"
								description:      "Whether the rule is enabled or disabled. Available values: `enabled`, `disabled`."
								description_kind: "markdown"
								optional:         true
							}
							version: {
								type:             "string"
								description:      "Version of the waiting room rule."
								description_kind: "markdown"
								computed:         true
							}
						}
						description:      "List of rules to apply to the ruleset."
						description_kind: "markdown"
					}
				}
				description:      "Provides a Cloudflare Waiting Room Rules resource."
				description_kind: "markdown"
			}
		}
		cloudflare_waiting_room_settings: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					search_engine_crawler_bypass: {
						type:             "bool"
						description:      "Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Configure zone-wide settings for Cloudflare waiting rooms."
				description_kind: "markdown"
			}
		}
		cloudflare_web3_hostname: {
			version: 0
			block: {
				attributes: {
					created_on: {
						type:             "string"
						description:      "Creation time."
						description_kind: "markdown"
						computed:         true
					}
					description: {
						type:             "string"
						description:      "An optional description of the hostname."
						description_kind: "markdown"
						optional:         true
					}
					dnslink: {
						type:             "string"
						description:      "DNSLink value used if the target is ipfs."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "Last modification time."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The hostname that will point to the target gateway via CNAME."
						description_kind: "markdown"
						required:         true
					}
					status: {
						type:             "string"
						description:      "Status of the hostname's activation."
						description_kind: "markdown"
						computed:         true
					}
					target: {
						type:             "string"
						description:      "Target gateway of the hostname."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Manages Web3 hostnames for IPFS and Ethereum gateways.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_web_analytics_rule: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					host: {
						type:             "string"
						description:      "The host to apply the rule to."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					inclusive: {
						type:             "bool"
						description:      "Whether the rule includes or excludes the matched traffic from being measured in Web Analytics."
						description_kind: "markdown"
						required:         true
					}
					is_paused: {
						type:             "bool"
						description:      "Whether the rule is paused or not."
						description_kind: "markdown"
						required:         true
					}
					paths: {
						type: ["list", "string"]
						description:      "A list of paths to apply the rule to."
						description_kind: "markdown"
						required:         true
					}
					ruleset_id: {
						type:             "string"
						description:      "The Web Analytics ruleset id. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: timeouts: {
					nesting_mode: "single"
					block: {
						attributes: create: {
							type:             "string"
							description_kind: "plain"
							optional:         true
						}
						description_kind: "plain"
					}
				}
				description:      "Provides a Cloudflare Web Analytics Rule resource."
				description_kind: "markdown"
			}
		}
		cloudflare_web_analytics_site: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					auto_install: {
						type:             "bool"
						description:      "Whether Cloudflare will automatically inject the JavaScript snippet for orange-clouded sites. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					host: {
						type:             "string"
						description:      "The hostname to use for gray-clouded sites. Must provide only one of `zone_tag`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ruleset_id: {
						type:             "string"
						description:      "The ID for the ruleset associated to this Web Analytics Site."
						description_kind: "markdown"
						computed:         true
					}
					site_tag: {
						type:             "string"
						description:      "The Web Analytics site tag."
						description_kind: "markdown"
						computed:         true
					}
					site_token: {
						type:             "string"
						description:      "The token for the Web Analytics site."
						description_kind: "markdown"
						computed:         true
						sensitive:        true
					}
					snippet: {
						type:             "string"
						description:      "The encoded JS snippet to add to your site's HTML page if auto_install is false."
						description_kind: "markdown"
						computed:         true
						sensitive:        true
					}
					zone_tag: {
						type:             "string"
						description:      "The zone identifier for orange-clouded sites. Must provide only one of `host`. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: timeouts: {
					nesting_mode: "single"
					block: {
						attributes: create: {
							type:             "string"
							description_kind: "plain"
							optional:         true
						}
						description_kind: "plain"
					}
				}
				description:      "Provides a Cloudflare Web Analytics Site resource."
				description_kind: "markdown"
			}
		}
		cloudflare_worker_cron_trigger: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					schedules: {
						type: ["set", "string"]
						description:      "Cron expressions to execute the Worker script."
						description_kind: "markdown"
						required:         true
					}
					script_name: {
						type:             "string"
						description:      "Worker script to target for the schedules."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Worker Cron Triggers allow users to map a cron expression to a Worker script
					using a `ScheduledEvent` listener that enables Workers to be executed on a
					schedule. Worker Cron Triggers are ideal for running periodic jobs for
					maintenance or calling third-party APIs to collect up-to-date data.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_worker_domain: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					environment: {
						type:             "string"
						description:      "The name of the Worker environment. Defaults to `production`."
						description_kind: "markdown"
						optional:         true
					}
					hostname: {
						type:             "string"
						description:      "Hostname of the Worker Domain."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					service: {
						type:             "string"
						description:      "Name of worker script to attach the domain to."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Creates a Worker Custom Domain."
				description_kind: "markdown"
			}
		}
		cloudflare_worker_route: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					pattern: {
						type:             "string"
						description:      "The [route pattern](https://developers.cloudflare.com/workers/about/routes/) to associate the Worker with."
						description_kind: "markdown"
						required:         true
					}
					script_name: {
						type:             "string"
						description:      "Worker script name to invoke for requests that match the route pattern."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides a Cloudflare worker route resource. A route will also require a `cloudflare_worker_script`."
				description_kind: "markdown"
			}
		}
		cloudflare_worker_script: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					compatibility_date: {
						type:             "string"
						description:      "The date to use for the compatibility flag."
						description_kind: "markdown"
						optional:         true
					}
					compatibility_flags: {
						type: ["set", "string"]
						description:      "Compatibility flags used for Worker Scripts."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					content: {
						type:             "string"
						description:      "The script content."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					logpush: {
						type:             "bool"
						description:      "Enabling allows Worker events to be sent to a defined Logpush destination."
						description_kind: "markdown"
						optional:         true
					}
					module: {
						type:             "bool"
						description:      "Whether to upload Worker as a module."
						description_kind: "markdown"
						optional:         true
					}
					name: {
						type:             "string"
						description:      "The name for the script. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: {
					analytics_engine_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								dataset: {
									type:             "string"
									description:      "The name of the Analytics Engine dataset to write to."
									description_kind: "markdown"
									required:         true
								}
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
					kv_namespace_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
								namespace_id: {
									type:             "string"
									description:      "ID of the KV namespace you want to use."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
					plain_text_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
								text: {
									type:             "string"
									description:      "The plain text you want to store."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
					queue_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								binding: {
									type:             "string"
									description:      "The name of the global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
								queue: {
									type:             "string"
									description:      "Name of the queue you want to use."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
					r2_bucket_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								bucket_name: {
									type:             "string"
									description:      "The name of the Bucket to bind to."
									description_kind: "markdown"
									required:         true
								}
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
					secret_text_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
								text: {
									type:             "string"
									description:      "The secret text you want to store."
									description_kind: "markdown"
									required:         true
									sensitive:        true
								}
							}
							description_kind: "plain"
						}
					}
					service_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								environment: {
									type:             "string"
									description:      "The name of the Worker environment to bind to."
									description_kind: "markdown"
									optional:         true
								}
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
								service: {
									type:             "string"
									description:      "The name of the Worker to bind to."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
					webassembly_binding: {
						nesting_mode: "set"
						block: {
							attributes: {
								module: {
									type:             "string"
									description:      "The base64 encoded wasm module you want to store."
									description_kind: "markdown"
									required:         true
								}
								name: {
									type:             "string"
									description:      "The global variable for the binding in your Worker code."
									description_kind: "markdown"
									required:         true
								}
							}
							description_kind: "plain"
						}
					}
				}
				description:      "Provides a Cloudflare worker script resource. In order for a script to be active, you'll also need to setup a `cloudflare_worker_route`."
				description_kind: "markdown"
			}
		}
		cloudflare_workers_kv: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					key: {
						type:             "string"
						description:      "Name of the KV pair. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					namespace_id: {
						type:             "string"
						description:      "The ID of the Workers KV namespace in which you want to create the KV pair. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					value: {
						type:             "string"
						description:      "Value of the KV pair."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides a resource to manage a Cloudflare Workers KV Pair."
				description_kind: "markdown"
			}
		}
		cloudflare_workers_kv_namespace: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					title: {
						type:             "string"
						description:      "Title value of the Worker KV Namespace."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides the ability to manage Cloudflare Workers KV Namespace features."
				description_kind: "markdown"
			}
		}
		cloudflare_zone: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "Account ID to manage the zone resource in."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					jump_start: {
						type:             "bool"
						description:      "Whether to scan for DNS records on creation. Ignored after zone is created."
						description_kind: "markdown"
						optional:         true
					}
					meta: {
						type: ["map", "bool"]
						description_kind: "plain"
						computed:         true
					}
					name_servers: {
						type: ["list", "string"]
						description:      "Cloudflare-assigned name servers. This is only populated for zones that use Cloudflare DNS."
						description_kind: "markdown"
						computed:         true
					}
					paused: {
						type:             "bool"
						description:      "Whether this zone is paused (traffic bypasses Cloudflare). Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					plan: {
						type:             "string"
						description:      "The name of the commercial plan to apply to the zone. Available values: `free`, `lite`, `pro`, `pro_plus`, `business`, `enterprise`, `partners_free`, `partners_pro`, `partners_business`, `partners_enterprise`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					status: {
						type:             "string"
						description:      "Status of the zone. Available values: `active`, `pending`, `initializing`, `moved`, `deleted`, `deactivated`."
						description_kind: "markdown"
						computed:         true
					}
					type: {
						type:             "string"
						description:      "A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup. Available values: `full`, `partial`. Defaults to `full`."
						description_kind: "markdown"
						optional:         true
					}
					vanity_name_servers: {
						type: ["list", "string"]
						description:      "List of Vanity Nameservers (if set)."
						description_kind: "markdown"
						computed:         true
					}
					verification_key: {
						type:             "string"
						description:      "Contains the TXT record value to validate domain ownership. This is only populated for zones of type `partial`."
						description_kind: "markdown"
						computed:         true
					}
					zone: {
						type:             "string"
						description:      "The DNS zone name which will be added. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare Zone resource. Zone is the basic resource for
					working with Cloudflare and is roughly equivalent to a domain name
					that the user purchases.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_zone_cache_reserve: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "Whether to enable or disable Cache Reserve support for a given zone."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare Cache Reserve resource. Cache Reserve can
					increase cache lifetimes by automatically storing all cacheable
					files in Cloudflare's persistent object storage buckets.

					Note: Using Cache Reserve without Tiered Cache is not recommended.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_zone_cache_variants: {
			version: 0
			block: {
				attributes: {
					avif: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for avif."
						description_kind: "markdown"
						optional:         true
					}
					bmp: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for bmp."
						description_kind: "markdown"
						optional:         true
					}
					gif: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for gif."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					jp2: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for jp2."
						description_kind: "markdown"
						optional:         true
					}
					jpeg: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for jpeg."
						description_kind: "markdown"
						optional:         true
					}
					jpg: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for jpg."
						description_kind: "markdown"
						optional:         true
					}
					jpg2: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for jpg2."
						description_kind: "markdown"
						optional:         true
					}
					png: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for png."
						description_kind: "markdown"
						optional:         true
					}
					tif: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for tif."
						description_kind: "markdown"
						optional:         true
					}
					tiff: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for tiff."
						description_kind: "markdown"
						optional:         true
					}
					webp: {
						type: ["set", "string"]
						description:      "List of strings with the MIME types of all the variants that should be served for webp."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides a resource which customizes Cloudflare zone cache variants."
				description_kind: "markdown"
			}
		}
		cloudflare_zone_dnssec: {
			version: 0
			block: {
				attributes: {
					algorithm: {
						type:             "string"
						description:      "Zone DNSSEC algorithm."
						description_kind: "markdown"
						computed:         true
					}
					digest: {
						type:             "string"
						description:      "Zone DNSSEC digest."
						description_kind: "markdown"
						computed:         true
					}
					digest_algorithm: {
						type:             "string"
						description:      "Digest algorithm use for Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					digest_type: {
						type:             "string"
						description:      "Digest Type for Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					ds: {
						type:             "string"
						description:      "DS for the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					flags: {
						type:             "number"
						description:      "Zone DNSSEC flags."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					key_tag: {
						type:             "number"
						description:      "Key Tag for the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					key_type: {
						type:             "string"
						description:      "Key type used for Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					modified_on: {
						type:             "string"
						description:      "Zone DNSSEC updated time."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					public_key: {
						type:             "string"
						description:      "Public Key for the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					status: {
						type:             "string"
						description:      "The status of the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Provides a Cloudflare resource to create and modify zone DNSSEC settings."
				description_kind: "markdown"
			}
		}
		cloudflare_zone_hold: {
			version: 0
			block: {
				attributes: {
					hold: {
						type:             "bool"
						description:      "Enablement status of the zone hold."
						description_kind: "markdown"
						required:         true
					}
					hold_after: {
						type:             "string"
						description:      "The RFC3339 compatible timestamp when to automatically re-enable the zone hold."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					include_subdomains: {
						type:             "bool"
						description:      "Whether to extend to block any subdomain of the given zone."
						description_kind: "markdown"
						optional:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare Zone Hold resource that prevents adding
					the hostname to another account for use.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_zone_lockdown: {
			version: 0
			block: {
				attributes: {
					description: {
						type:             "string"
						description:      "A description about the lockdown entry. Typically used as a reminder or explanation for the lockdown."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					paused: {
						type:             "bool"
						description:      "Boolean of whether this zone lockdown is currently paused. Defaults to `false`."
						description_kind: "markdown"
						optional:         true
					}
					priority: {
						type:             "number"
						description_kind: "plain"
						optional:         true
					}
					urls: {
						type: ["set", "string"]
						description:      "A list of simple wildcard patterns to match requests against. The order of the urls is unimportant."
						description_kind: "markdown"
						required:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
				}
				block_types: configurations: {
					nesting_mode: "set"
					block: {
						attributes: {
							target: {
								type:             "string"
								description:      "The request property to target. Available values: `ip`, `ip_range`."
								description_kind: "markdown"
								required:         true
							}
							value: {
								type:             "string"
								description:      "The value to target. Depends on target's type. IP addresses should just be standard IPv4/IPv6 notation i.e. `192.0.2.1` or `2001:db8::/32` and IP ranges in CIDR format i.e. `192.0.2.0/24`."
								description_kind: "markdown"
								required:         true
							}
						}
						description:      "A list of IP addresses or IP ranges to match the request against specified in target, value pairs."
						description_kind: "markdown"
					}
					min_items: 1
				}
				description: """
					Provides a Cloudflare Zone Lockdown resource. Zone Lockdown allows
					you to define one or more URLs (with wildcard matching on the domain
					or path) that will only permit access if the request originates
					from an IP address that matches a safelist of one or more IP
					addresses and/or IP ranges.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_zone_settings_override: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					initial_settings: {
						type: ["list", ["object", {
							always_online:            "string"
							always_use_https:         "string"
							automatic_https_rewrites: "string"
							binary_ast:               "string"
							brotli:                   "string"
							browser_cache_ttl:        "number"
							browser_check:            "string"
							cache_level:              "string"
							challenge_ttl:            "number"
							ciphers: ["list", "string"]
							cname_flattening:          "string"
							development_mode:          "string"
							early_hints:               "string"
							email_obfuscation:         "string"
							filter_logs_to_cloudflare: "string"
							fonts:                     "string"
							h2_prioritization:         "string"
							hotlink_protection:        "string"
							http2:                     "string"
							http3:                     "string"
							image_resizing:            "string"
							ip_geolocation:            "string"
							ipv6:                      "string"
							log_to_cloudflare:         "string"
							max_upload:                "number"
							min_tls_version:           "string"
							minify: ["list", ["object", {
								css:  "string"
								html: "string"
								js:   "string"
							}]]
							mirage: "string"
							mobile_redirect: ["list", ["object", {
								mobile_subdomain: "string"
								status:           "string"
								strip_uri:        "bool"
							}]]
							opportunistic_encryption:    "string"
							opportunistic_onion:         "string"
							orange_to_orange:            "string"
							origin_error_page_pass_thru: "string"
							origin_max_http_version:     "string"
							polish:                      "string"
							prefetch_preload:            "string"
							privacy_pass:                "string"
							proxy_read_timeout:          "string"
							pseudo_ipv4:                 "string"
							response_buffering:          "string"
							rocket_loader:               "string"
							security_header: ["list", ["object", {
								enabled:            "bool"
								include_subdomains: "bool"
								max_age:            "number"
								nosniff:            "bool"
								preload:            "bool"
							}]]
							security_level:              "string"
							server_side_exclude:         "string"
							sort_query_string_for_cache: "string"
							ssl:                         "string"
							tls_1_2_only:                "string"
							tls_1_3:                     "string"
							tls_client_auth:             "string"
							true_client_ip_header:       "string"
							universal_ssl:               "string"
							visitor_ip:                  "string"
							waf:                         "string"
							webp:                        "string"
							websockets:                  "string"
							zero_rtt:                    "string"
						}]]
						description_kind: "plain"
						computed:         true
					}
					initial_settings_read_at: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					readonly_settings: {
						type: ["list", "string"]
						description_kind: "plain"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.**"
						description_kind: "markdown"
						required:         true
					}
					zone_status: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
					zone_type: {
						type:             "string"
						description_kind: "plain"
						computed:         true
					}
				}
				block_types: settings: {
					nesting_mode: "list"
					block: {
						attributes: {
							always_online: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							always_use_https: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							automatic_https_rewrites: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							binary_ast: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							brotli: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							browser_cache_ttl: {
								type:             "number"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							browser_check: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							cache_level: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							challenge_ttl: {
								type:             "number"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							ciphers: {
								type: ["list", "string"]
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							cname_flattening: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							development_mode: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							early_hints: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							email_obfuscation: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							filter_logs_to_cloudflare: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							fonts: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							h2_prioritization: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							hotlink_protection: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							http2: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							http3: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							image_resizing: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							ip_geolocation: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							ipv6: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							log_to_cloudflare: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							max_upload: {
								type:             "number"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							min_tls_version: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							mirage: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							opportunistic_encryption: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							opportunistic_onion: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							orange_to_orange: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							origin_error_page_pass_thru: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							origin_max_http_version: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							polish: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							prefetch_preload: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							privacy_pass: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							proxy_read_timeout: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							pseudo_ipv4: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							response_buffering: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							rocket_loader: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							security_level: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							server_side_exclude: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							sort_query_string_for_cache: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							ssl: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							tls_1_2_only: {
								type:             "string"
								description_kind: "plain"
								deprecated:       true
								optional:         true
								computed:         true
							}
							tls_1_3: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							tls_client_auth: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							true_client_ip_header: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							universal_ssl: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							visitor_ip: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							waf: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							webp: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							websockets: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
							zero_rtt: {
								type:             "string"
								description_kind: "plain"
								optional:         true
								computed:         true
							}
						}
						block_types: {
							minify: {
								nesting_mode: "list"
								block: {
									attributes: {
										css: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										html: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										js: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
									}
									description_kind: "plain"
								}
								max_items: 1
							}
							mobile_redirect: {
								nesting_mode: "list"
								block: {
									attributes: {
										mobile_subdomain: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										status: {
											type:             "string"
											description_kind: "plain"
											required:         true
										}
										strip_uri: {
											type:             "bool"
											description_kind: "plain"
											required:         true
										}
									}
									description_kind: "plain"
								}
								max_items: 1
							}
							security_header: {
								nesting_mode: "list"
								block: {
									attributes: {
										enabled: {
											type:             "bool"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
										include_subdomains: {
											type:             "bool"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
										max_age: {
											type:             "number"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
										nosniff: {
											type:             "bool"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
										preload: {
											type:             "bool"
											description_kind: "plain"
											optional:         true
											computed:         true
										}
									}
									description_kind: "plain"
								}
								max_items: 1
							}
						}
						description_kind: "plain"
					}
					max_items: 1
				}
				description:      "Provides a resource which customizes Cloudflare zone settings."
				description_kind: "markdown"
			}
		}
	}
	data_source_schemas: {
		cloudflare_access_application: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Must provide only one of `zone_id`, `account_id`."
						description_kind: "markdown"
						optional:         true
					}
					aud: {
						type:             "string"
						description:      "Application Audience (AUD) Tag of the application."
						description_kind: "markdown"
						computed:         true
					}
					domain: {
						type:             "string"
						description:      "The primary hostname and path that Access will secure. Must provide only one of `name`, `domain`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Friendly name of the Access Application. Must provide only one of `name`, `domain`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `zone_id`, `account_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Use this data source to lookup a single [Access Application](https://developers.cloudflare.com/cloudflare-one/applications/)"
				description_kind: "markdown"
			}
		}
		cloudflare_access_identity_provider: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Must provide only one of `zone_id`, `account_id`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "Access Identity Provider name to search for."
						description_kind: "markdown"
						required:         true
					}
					type: {
						type:             "string"
						description:      "Access Identity Provider Type."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `zone_id`, `account_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Use this data source to lookup a single [Access Identity Provider](https://developers.cloudflare.com/cloudflare-one/identity/idp-integration) by name."
				description_kind: "markdown"
			}
		}
		cloudflare_account_roles: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					roles: {
						type: ["list", ["object", {
							description: "string"
							id:          "string"
							name:        "string"
						}]]
						description:      "A list of roles object."
						description_kind: "markdown"
						computed:         true
					}
				}
				description:      "Use this data source to lookup [Account Roles](https://api.cloudflare.com/#account-roles-properties)."
				description_kind: "markdown"
			}
		}
		cloudflare_accounts: {
			version: 0
			block: {
				attributes: {
					accounts: {
						type: ["list", ["object", {
							enforce_twofactor: "bool"
							id:                "string"
							name:              "string"
							type:              "string"
						}]]
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The account name to target for the resource."
						description_kind: "markdown"
						optional:         true
					}
				}
				description:      "Data source for looking up Cloudflare Accounts."
				description_kind: "markdown"
			}
		}
		cloudflare_api_token_permission_groups: {
			version: 0
			block: {
				attributes: {
					account: {
						type: ["map", "string"]
						description:      "Map of permissions for account level resources."
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "Checksum of permissions."
						description_kind: "plain"
						computed:         true
					}
					permissions: {
						type: ["map", "string"]
						description:      "Map of all permissions available. Should not be used as some permissions will overlap resource scope. Instead, use resource level specific attributes."
						description_kind: "plain"
						deprecated:       true
						computed:         true
					}
					r2: {
						type: ["map", "string"]
						description:      "Map of permissions for r2 level resources."
						description_kind: "plain"
						computed:         true
					}
					user: {
						type: ["map", "string"]
						description:      "Map of permissions for user level resources."
						description_kind: "plain"
						computed:         true
					}
					zone: {
						type: ["map", "string"]
						description:      "Map of permissions for zone level resources."
						description_kind: "plain"
						computed:         true
					}
				}
				description: """
					Use this data source to look up [API Token Permission Groups](https://developers.cloudflare.com/api/tokens/create/permissions).
					Commonly used as references within [`cloudflare_token`](/docs/providers/cloudflare/r/api_token.html) resources.

					"""
				description_kind: "plain"
			}
		}
		cloudflare_devices: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					devices: {
						type: ["list", ["object", {
							created:            "string"
							deleted:            "bool"
							device_type:        "string"
							id:                 "string"
							ip:                 "string"
							key:                "string"
							last_seen:          "string"
							mac_address:        "string"
							manufacturer:       "string"
							model:              "string"
							name:               "string"
							os_distro_name:     "string"
							os_distro_revision: "string"
							os_version:         "string"
							revoked_at:         "string"
							serial_number:      "string"
							updated:            "string"
							user_email:         "string"
							user_id:            "string"
							user_name:          "string"
							version:            "string"
						}]]
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				description:      "Use this data source to lookup [Devices](https://api.cloudflare.com/#devices-list-devices)."
				description_kind: "markdown"
			}
		}
		cloudflare_ip_ranges: {
			version: 0
			block: {
				attributes: {
					china_ipv4_cidr_blocks: {
						type: ["list", "string"]
						description:      "The lexically ordered list of only the IPv4 China CIDR blocks."
						description_kind: "markdown"
						computed:         true
					}
					china_ipv6_cidr_blocks: {
						type: ["list", "string"]
						description:      "The lexically ordered list of only the IPv6 China CIDR blocks."
						description_kind: "markdown"
						computed:         true
					}
					cidr_blocks: {
						type: ["list", "string"]
						description:      "The lexically ordered list of all non-China CIDR blocks."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					ipv4_cidr_blocks: {
						type: ["list", "string"]
						description:      "The lexically ordered list of only the IPv4 CIDR blocks."
						description_kind: "markdown"
						computed:         true
					}
					ipv6_cidr_blocks: {
						type: ["list", "string"]
						description:      "The lexically ordered list of only the IPv6 CIDR blocks."
						description_kind: "markdown"
						computed:         true
					}
				}
				description:      "Use this data source to get the [IP ranges](https://www.cloudflare.com/ips/) of Cloudflare network."
				description_kind: "markdown"
			}
		}
		cloudflare_list: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					description: {
						type:             "string"
						description:      "List description."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					kind: {
						type:             "string"
						description:      "List kind."
						description_kind: "markdown"
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The list name to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					numitems: {
						type:             "number"
						description:      "Number of items in list."
						description_kind: "markdown"
						computed:         true
					}
				}
				description:      "Use this data source to lookup a [List](https://developers.cloudflare.com/api/operations/lists-get-lists)."
				description_kind: "markdown"
			}
		}
		cloudflare_lists: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					lists: {
						type: ["list", ["object", {
							description: "string"
							id:          "string"
							kind:        "string"
							name:        "string"
							numitems:    "number"
						}]]
						description_kind: "plain"
						computed:         true
					}
				}
				description:      "Use this data source to lookup [Lists](https://developers.cloudflare.com/api/operations/lists-get-lists)."
				description_kind: "markdown"
			}
		}
		cloudflare_load_balancer_pools: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the datasource lookups."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				block_types: {
					filter: {
						nesting_mode: "list"
						block: {
							attributes: name: {
								type:             "string"
								description:      "A regular expression matching the name of the Load Balancer pool to lookup."
								description_kind: "markdown"
								optional:         true
							}
							description:      "One or more values used to look up Load Balancer pools. If more than one value is given all values must match in order to be included."
							description_kind: "markdown"
						}
						max_items: 1
					}
					pools: {
						nesting_mode: "list"
						block: {
							attributes: {
								check_regions: {
									type: ["set", "string"]
									description:      "List of regions (specified by region code) from which to run health checks. Empty means every Cloudflare data center (the default), but requires an Enterprise plan. Region codes can be found [here](https://support.cloudflare.com/hc/en-us/articles/115000540888-Load-Balancing-Geographic-Regions)."
									description_kind: "markdown"
									computed:         true
								}
								created_on: {
									type:             "string"
									description:      "The RFC3339 timestamp of when the load balancer was created."
									description_kind: "markdown"
									computed:         true
								}
								description: {
									type:             "string"
									description:      "Brief description of the Load Balancer Pool intention."
									description_kind: "markdown"
									computed:         true
								}
								enabled: {
									type:             "bool"
									description:      "Whether this pool is enabled. Disabled pools will not receive traffic and are excluded from health checks."
									description_kind: "markdown"
									computed:         true
								}
								id: {
									type:             "string"
									description:      "ID for this load balancer pool."
									description_kind: "markdown"
									computed:         true
								}
								latitude: {
									type:             "number"
									description:      "Latitude this pool is physically located at; used for proximity steering."
									description_kind: "markdown"
									computed:         true
								}
								load_shedding: {
									type: ["set", ["object", {
										default_percent: "number"
										default_policy:  "string"
										session_percent: "number"
										session_policy:  "string"
									}]]
									description:      "Setting for controlling load shedding for this pool."
									description_kind: "markdown"
									computed:         true
								}
								longitude: {
									type:             "number"
									description:      "Longitude this pool is physically located at; used for proximity steering."
									description_kind: "markdown"
									computed:         true
								}
								minimum_origins: {
									type:             "number"
									description:      "Minimum number of origins that must be healthy for this pool to serve traffic."
									description_kind: "markdown"
									computed:         true
								}
								modified_on: {
									type:             "string"
									description:      "The RFC3339 timestamp of when the load balancer was last modified."
									description_kind: "markdown"
									computed:         true
								}
								monitor: {
									type:             "string"
									description:      "ID of the Monitor to use for health checking origins within this pool."
									description_kind: "markdown"
									computed:         true
								}
								name: {
									type:             "string"
									description:      "Short name (tag) for the pool."
									description_kind: "markdown"
									computed:         true
								}
								notification_email: {
									type:             "string"
									description:      "Email address to send health status notifications to. Multiple emails are set as a comma delimited list."
									description_kind: "markdown"
									computed:         true
								}
								origins: {
									type: ["set", ["object", {
										address: "string"
										enabled: "bool"
										header: ["set", ["object", {
											header: "string"
											values: ["set", "string"]
										}]]
										name:   "string"
										weight: "number"
									}]]
									description:      "The list of origins within this pool."
									description_kind: "markdown"
									computed:         true
								}
							}
							description:      "A list of Load Balancer Pools details."
							description_kind: "markdown"
						}
					}
				}
				description:      "A datasource to find Load Balancer Pools."
				description_kind: "markdown"
			}
		}
		cloudflare_origin_ca_root_certificate: {
			version: 0
			block: {
				attributes: {
					algorithm: {
						type:             "string"
						description:      "The name of the algorithm used when creating an Origin CA certificate. Available values: `rsa`, `ecc`."
						description_kind: "markdown"
						required:         true
					}
					cert_pem: {
						type:             "string"
						description:      "The Origin CA root certificate in PEM format."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
				}
				description: """
					Use this data source to get the
					[Origin CA root certificate](https://developers.cloudflare.com/ssl/origin-configuration/origin-ca#4-required-for-some-add-cloudflare-origin-ca-root-certificates)
					for a given algorithm."

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_record: {
			version: 2
			block: {
				attributes: {
					hostname: {
						type:             "string"
						description:      "Hostname to filter DNS record results on."
						description_kind: "markdown"
						required:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					locked: {
						type:             "bool"
						description:      "Locked status of the found DNS record."
						description_kind: "markdown"
						computed:         true
					}
					priority: {
						type:             "number"
						description:      "DNS priority to filter record results on."
						description_kind: "markdown"
						optional:         true
					}
					proxiable: {
						type:             "bool"
						description:      "Proxiable status of the found DNS record."
						description_kind: "markdown"
						computed:         true
					}
					proxied: {
						type:             "bool"
						description:      "Proxied status of the found DNS record."
						description_kind: "markdown"
						computed:         true
					}
					ttl: {
						type:             "number"
						description:      "TTL of the found DNS record."
						description_kind: "markdown"
						computed:         true
					}
					type: {
						type:             "string"
						description:      "DNS record type to filter record results on. Defaults to `A`."
						description_kind: "markdown"
						optional:         true
					}
					value: {
						type:             "string"
						description:      "Value of the found DNS record."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
					zone_name: {
						type:             "string"
						description:      "Zone name of the found DNS record."
						description_kind: "markdown"
						computed:         true
					}
				}
				description: """
					Use this data source to lookup a single [DNS Record](https://api.cloudflare.com/#dns-records-for-a-zone-properties).

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_rulesets: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource. Must provide only one of `zone_id`, `account_id`."
						description_kind: "markdown"
						optional:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					include_rules: {
						type:             "bool"
						description:      "Include rule data in response."
						description_kind: "markdown"
						optional:         true
					}
					rulesets: {
						type: ["list", ["object", {
							description: "string"
							id:          "string"
							kind:        "string"
							name:        "string"
							phase:       "string"
							rules: ["list", ["object", {
								action: "string"
								action_parameters: ["list", ["object", {
									additional_cacheable_ports: ["set", "number"]
									automatic_https_rewrites: "bool"
									autominify: ["list", ["object", {
										css:  "bool"
										html: "bool"
										js:   "bool"
									}]]
									bic: "bool"
									browser_ttl: ["list", ["object", {
										default: "number"
										mode:    "string"
									}]]
									cache: "bool"
									cache_key: ["list", ["object", {
										cache_by_device_type:  "bool"
										cache_deception_armor: "bool"
										custom_key: ["list", ["object", {
											cookie: ["list", ["object", {
												check_presence: ["list", "string"]
												include: ["list", "string"]
											}]]
											header: ["list", ["object", {
												check_presence: ["list", "string"]
												exclude_origin: "bool"
												include: ["list", "string"]
											}]]
											host: ["list", ["object", {
												resolved: "bool"
											}]]
											query_string: ["list", ["object", {
												exclude: ["list", "string"]
												include: ["list", "string"]
											}]]
											user: ["list", ["object", {
												device_type: "bool"
												geo:         "bool"
												lang:        "bool"
											}]]
										}]]
										ignore_query_strings_order: "bool"
									}]]
									content:      "string"
									content_type: "string"
									cookie_fields: ["set", "string"]
									disable_apps:    "bool"
									disable_railgun: "bool"
									disable_zaraz:   "bool"
									edge_ttl: ["list", ["object", {
										default: "number"
										mode:    "string"
										status_code_ttl: ["list", ["object", {
											status_code: "number"
											status_code_range: ["list", ["object", {
												from: "number"
												to:   "number"
											}]]
											value: "number"
										}]]
									}]]
									email_obfuscation: "bool"
									from_list: ["list", ["object", {
										key:  "string"
										name: "string"
									}]]
									from_value: ["list", ["object", {
										preserve_query_string: "bool"
										status_code:           "number"
										target_url: ["list", ["object", {
											expression: "string"
											value:      "string"
										}]]
									}]]
									headers: ["list", ["object", {
										expression: "string"
										name:       "string"
										operation:  "string"
										value:      "string"
									}]]
									host_header:        "string"
									hotlink_protection: "bool"
									id:                 "string"
									increment:          "number"
									matched_data: ["list", ["object", {
										public_key: "string"
									}]]
									mirage:                   "bool"
									opportunistic_encryption: "bool"
									origin: ["list", ["object", {
										host: "string"
										port: "number"
									}]]
									origin_cache_control:       "bool"
									origin_error_page_passthru: "bool"
									overrides: ["list", ["object", {
										action: "string"
										categories: ["list", ["object", {
											action:   "string"
											category: "string"
											enabled:  "bool"
											status:   "string"
										}]]
										enabled: "bool"
										rules: ["list", ["object", {
											action:            "string"
											enabled:           "bool"
											id:                "string"
											score_threshold:   "number"
											sensitivity_level: "string"
											status:            "string"
										}]]
										sensitivity_level: "string"
										status:            "string"
									}]]
									phases: ["set", "string"]
									polish: "string"
									products: ["set", "string"]
									read_timeout: "number"
									request_fields: ["set", "string"]
									respect_strong_etags: "bool"
									response: ["list", ["object", {
										content:      "string"
										content_type: "string"
										status_code:  "number"
									}]]
									response_fields: ["set", "string"]
									rocket_loader: "bool"
									rules: ["map", "string"]
									ruleset: "string"
									rulesets: ["set", "string"]
									security_level: "string"
									serve_stale: ["list", ["object", {
										disable_stale_while_updating: "bool"
									}]]
									server_side_excludes: "bool"
									sni: ["list", ["object", {
										value: "string"
									}]]
									ssl:         "string"
									status_code: "number"
									sxg:         "bool"
									uri: ["list", ["object", {
										origin: "bool"
										path: ["list", ["object", {
											expression: "string"
											value:      "string"
										}]]
										query: ["list", ["object", {
											expression: "string"
											value:      "string"
										}]]
									}]]
									version: "string"
								}]]
								description: "string"
								enabled:     "bool"
								exposed_credential_check: ["list", ["object", {
									password_expression: "string"
									username_expression: "string"
								}]]
								expression:   "string"
								id:           "string"
								last_updated: "string"
								logging: ["list", ["object", {
									enabled: "bool"
									status:  "string"
								}]]
								ratelimit: ["list", ["object", {
									characteristics: ["set", "string"]
									counting_expression:        "string"
									mitigation_timeout:         "number"
									period:                     "number"
									requests_per_period:        "number"
									requests_to_origin:         "bool"
									score_per_period:           "number"
									score_response_header_name: "string"
								}]]
								ref:     "string"
								version: "string"
							}]]
							version: "string"
						}]]
						description_kind: "plain"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `zone_id`, `account_id`."
						description_kind: "markdown"
						optional:         true
					}
				}
				block_types: filter: {
					nesting_mode: "list"
					block: {
						attributes: {
							id: {
								type:             "string"
								description:      "The ID of the Ruleset to target."
								description_kind: "markdown"
								optional:         true
							}
							kind: {
								type:             "string"
								description:      "Type of Ruleset to create. Available values: `custom`, `managed`, `root`, `zone`."
								description_kind: "markdown"
								optional:         true
							}
							name: {
								type:             "string"
								description:      "Name of the ruleset."
								description_kind: "markdown"
								optional:         true
							}
							phase: {
								type:             "string"
								description:      "Point in the request/response lifecycle where the ruleset will be created. Available values: `ddos_l4`, `ddos_l7`, `http_config_settings`, `http_custom_errors`, `http_log_custom_fields`, `http_ratelimit`, `http_request_cache_settings`, `http_request_dynamic_redirect`, `http_request_firewall_custom`, `http_request_firewall_managed`, `http_request_late_transform`, `http_request_origin`, `http_request_redirect`, `http_request_sanitize`, `http_request_sbfm`, `http_request_transform`, `http_response_compression`, `http_response_firewall_managed`, `http_response_headers_transform`, `magic_transit`."
								description_kind: "markdown"
								optional:         true
							}
							version: {
								type:             "string"
								description:      "Version of the ruleset to filter on."
								description_kind: "markdown"
								optional:         true
							}
						}
						description_kind: "plain"
					}
					max_items: 1
				}
				description: """
					Use this datasource to lookup Rulesets in an account or zone.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_user: {
			version: 0
			block: {
				attributes: {
					email: {
						type:             "string"
						description:      "The user's email address."
						description_kind: "plain"
						computed:         true
					}
					id: {
						type:             "string"
						description:      "The user's unique identifier."
						description_kind: "plain"
						computed:         true
					}
					username: {
						type:             "string"
						description:      "The user's username."
						description_kind: "plain"
						computed:         true
					}
				}
				description:      "Use this data source to retrieve information about the currently authenticated user."
				description_kind: "markdown"
			}
		}
		cloudflare_zone: {
			version: 0
			block: {
				attributes: {
					account_id: {
						type:             "string"
						description:      "The account identifier to target for the resource."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					name: {
						type:             "string"
						description:      "The name of the zone. Must provide only one of `zone_id`, `name`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
					name_servers: {
						type: ["list", "string"]
						description:      "Cloudflare assigned name servers. This is only populated for zones that use Cloudflare DNS."
						description_kind: "markdown"
						computed:         true
					}
					paused: {
						type:             "bool"
						description:      "Whether the zone is paused on Cloudflare."
						description_kind: "markdown"
						computed:         true
					}
					plan: {
						type:             "string"
						description:      "The name of the plan associated with the zone."
						description_kind: "markdown"
						computed:         true
					}
					status: {
						type:             "string"
						description:      "Status of the zone."
						description_kind: "markdown"
						computed:         true
					}
					vanity_name_servers: {
						type: ["list", "string"]
						description:      "List of Vanity Nameservers (if set)."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource. Must provide only one of `zone_id`, `name`."
						description_kind: "markdown"
						optional:         true
						computed:         true
					}
				}
				description: """
					Use this data source to look up [zone](https://api.cloudflare.com/#zone-properties)
					info. This is the singular alternative to `cloudflare_zones`.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_zone_cache_reserve: {
			version: 0
			block: {
				attributes: {
					enabled: {
						type:             "bool"
						description:      "The status of Cache Reserve support."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description: """
					Provides a Cloudflare data source to look up Cache Reserve
					status for a given zone.

					"""
				description_kind: "markdown"
			}
		}
		cloudflare_zone_dnssec: {
			version: 0
			block: {
				attributes: {
					algorithm: {
						type:             "string"
						description:      "Zone DNSSEC algorithm."
						description_kind: "markdown"
						computed:         true
					}
					digest: {
						type:             "string"
						description:      "Zone DNSSEC digest."
						description_kind: "markdown"
						computed:         true
					}
					digest_algorithm: {
						type:             "string"
						description:      "Digest algorithm use for Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					digest_type: {
						type:             "string"
						description:      "Digest Type for Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					ds: {
						type:             "string"
						description:      "DS for the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					flags: {
						type:             "number"
						description:      "Zone DNSSEC flags."
						description_kind: "markdown"
						computed:         true
					}
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					key_tag: {
						type:             "number"
						description:      "Key Tag for the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					key_type: {
						type:             "string"
						description:      "Key type used for Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					public_key: {
						type:             "string"
						description:      "Public Key for the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					status: {
						type:             "string"
						description:      "The status of the Zone DNSSEC."
						description_kind: "markdown"
						computed:         true
					}
					zone_id: {
						type:             "string"
						description:      "The zone identifier to target for the resource."
						description_kind: "markdown"
						required:         true
					}
				}
				description:      "Use this data source to look up Zone DNSSEC settings."
				description_kind: "markdown"
			}
		}
		cloudflare_zones: {
			version: 0
			block: {
				attributes: {
					id: {
						type:             "string"
						description_kind: "plain"
						optional:         true
						computed:         true
					}
					zones: {
						type: ["list", ["object", {
							id:   "string"
							name: "string"
						}]]
						description:      "A list of zone objects."
						description_kind: "markdown"
						computed:         true
					}
				}
				block_types: filter: {
					nesting_mode: "list"
					block: {
						attributes: {
							account_id: {
								type:             "string"
								description:      "The account identifier to target for the resource."
								description_kind: "markdown"
								optional:         true
							}
							lookup_type: {
								type:             "string"
								description:      "The type of search to perform for the `name` value when querying the zone API. Available values: `contains`, `exact`. Defaults to `exact`."
								description_kind: "markdown"
								optional:         true
							}
							match: {
								type:             "string"
								description:      "A RE2 compatible regular expression to filter the\tresults. This is performed client side whereas the `name` and `lookup_type`\tare performed on the Cloudflare server side."
								description_kind: "markdown"
								optional:         true
							}
							name: {
								type:             "string"
								description:      "A string value to search for."
								description_kind: "markdown"
								optional:         true
							}
							paused: {
								type:             "bool"
								description:      "Paused status of the zone to lookup. Defaults to `false`."
								description_kind: "markdown"
								optional:         true
							}
							status: {
								type:             "string"
								description:      "Status of the zone to lookup."
								description_kind: "markdown"
								optional:         true
							}
						}
						description:      "One or more values used to look up zone records. If more than one value is given all values must match in order to be included."
						description_kind: "markdown"
					}
					min_items: 1
					max_items: 1
				}
				description:      "Use this data source to look up Zone results for use in other resources."
				description_kind: "markdown"
			}
		}
	}
}