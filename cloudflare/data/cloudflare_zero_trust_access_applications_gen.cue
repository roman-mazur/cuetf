package data

#cloudflare_zero_trust_access_applications: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_applications")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The aud of the app.
		aud?: string

		// The domain of the app.
		domain?: string

		// True for only exact string matches against passed name/domain
		// query parameters.
		exact?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			cors_headers?: close({
				// Allows all HTTP request headers.
				allow_all_headers?: bool

				// Allows all HTTP request methods.
				allow_all_methods?: bool

				// Allows all origins.
				allow_all_origins?: bool

				// When set to `true`, includes credentials (cookies,
				// authorization headers, or TLS client certificates) with
				// requests.
				allow_credentials?: bool

				// Allowed HTTP request headers.
				allowed_headers?: [...string]

				// Allowed HTTP request methods.
				allowed_methods?: [...string]

				// Allowed origins.
				allowed_origins?: [...string]

				// The maximum number of seconds the results of a preflight
				// request can be cached.
				max_age?: number
			})

			// When set to true, users can authenticate to this application
			// using their WARP session. When set to false this application
			// will always require direct IdP authentication. This setting
			// always overrides the organization setting for WARP
			// authentication.
			allow_authenticate_via_warp?: bool

			// Enables loading application content in an iFrame.
			allow_iframe?: bool

			// List of destinations secured by Access. This supersedes
			// `self_hosted_domains` to allow for more flexibility in
			// defining different types of domains. If `destinations` are
			// provided, then `self_hosted_domains` will be ignored.
			destinations?: matchN(1, [close({
				// The CIDR range of the destination. Single IPs will be computed
				// as /32.
				cidr?: string

				// The hostname of the destination. Matches a valid SNI served by
				// an HTTPS origin.
				hostname?: string

				// The L4 protocol of the destination. When omitted, both UDP and
				// TCP traffic will match.
				// Available values: "tcp", "udp".
				l4_protocol?: string

				// The port range of the destination. Can be a single port or a
				// range of ports. When omitted, all ports will match.
				port_range?: string

				// Available values: "public", "private".
				type?: string

				// The URI of the destination. Public destinations' URIs can
				// include a domain and path with
				// [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
				uri?: string

				// The VNET ID to match the destination. When omitted, all VNETs
				// will match.
				vnet_id?: string
			}), [...close({
				// The CIDR range of the destination. Single IPs will be computed
				// as /32.
				cidr?: string

				// The hostname of the destination. Matches a valid SNI served by
				// an HTTPS origin.
				hostname?: string

				// The L4 protocol of the destination. When omitted, both UDP and
				// TCP traffic will match.
				// Available values: "tcp", "udp".
				l4_protocol?: string

				// The port range of the destination. Can be a single port or a
				// range of ports. When omitted, all ports will match.
				port_range?: string

				// Available values: "public", "private".
				type?: string

				// The URI of the destination. Public destinations' URIs can
				// include a domain and path with
				// [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
				uri?: string

				// The VNET ID to match the destination. When omitted, all VNETs
				// will match.
				vnet_id?: string
			})]])

			// The identity providers your users can select when connecting to
			// this application. Defaults to all IdPs configured in your
			// account.
			allowed_idps?: [...string]

			// The image URL of the logo shown in the App Launcher header.
			app_launcher_logo_url?: string

			// Displays the application in the App Launcher.
			app_launcher_visible?: bool

			// Audience tag.
			aud?: string

			// When set to `true`, users skip the identity provider selection
			// step during login. You must specify only one identity provider
			// in allowed_idps.
			auto_redirect_to_identity?: bool

			// The background color of the App Launcher page.
			bg_color?: string

			// The custom error message shown to a user when they are denied
			// access to the application.
			custom_deny_message?: string

			// The links in the App Launcher footer.
			footer_links?: matchN(1, [close({
				// The hypertext in the footer link.
				name?: string

				// the hyperlink in the footer link.
				url?: string
			}), [...close({
				// The hypertext in the footer link.
				name?: string

				// the hyperlink in the footer link.
				url?: string
			})]])

			// The custom URL a user is redirected to when they are denied
			// access to the application when failing identity-based rules.
			custom_deny_url?: string

			// The design of the App Launcher landing page shown to users when
			// they log in.
			landing_page_design?: close({
				// The background color of the log in button on the landing page.
				button_color?: string

				// The color of the text in the log in button on the landing page.
				button_text_color?: string

				// The URL of the image shown on the landing page.
				image_url?: string

				// The message shown on the landing page.
				message?: string

				// The title shown on the landing page.
				title?: string
			})

			// The custom URL a user is redirected to when they are denied
			// access to the application when failing non-identity rules.
			custom_non_identity_deny_url?: string
			created_at?:                   string
			policies?: matchN(1, [close({
				// Requires the user to request access from an administrator at
				// the start of each session.
				approval_required?: bool

				// Administrators who can approve a temporary authentication
				// request.
				approval_groups?: matchN(1, [close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				}), [...close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				})]])
				created_at?: string

				// The action Access will take if a user matches this policy.
				// Infrastructure application policies can only use the Allow
				// action.
				// Available values: "allow", "deny", "non_identity", "bypass".
				decision?: string

				// The rules that define how users may connect to the targets
				// secured by your application.
				connection_rules?: close({
					// The SSH-specific rules that define how users may connect to the
					// targets secured by your application.
					ssh?: close({
						// Enables using Identity Provider email alias as SSH username.
						allow_email_alias?: bool

						// Contains the Unix usernames that may be used when connecting
						// over SSH.
						usernames?: [...string]
					})
				})

				// The UUID of the policy
				id?: string

				// Require this application to be served in an isolated browser
				// for users matching this policy. 'Client Web Isolation' must be
				// on for the account in order to use this feature.
				isolation_required?: bool

				// The name of the Access policy.
				name?: string

				// Rules evaluated with a NOT logical operator. To match the
				// policy, a user cannot meet any of the Exclude rules.
				exclude?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The order of execution for this policy. Must be unique for each
				// policy within an app.
				precedence?: number

				// A custom message that will appear on the purpose justification
				// screen.
				purpose_justification_prompt?: string

				// Require users to enter a justification when they log in to the
				// application.
				purpose_justification_required?: bool

				// Rules evaluated with an OR logical operator. A user needs to
				// meet only one of the Include rules.
				include?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The amount of time that tokens issued for the application will
				// be valid. Must be in the format `300ms` or `2h45m`. Valid time
				// units are: ns, us (or µs), ms, s, m, h.
				session_duration?: string
				updated_at?:       string

				// Rules evaluated with an AND logical operator. To match the
				// policy, a user must meet all of the Require rules.
				require?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])
			}), [...close({
				// Requires the user to request access from an administrator at
				// the start of each session.
				approval_required?: bool

				// Administrators who can approve a temporary authentication
				// request.
				approval_groups?: matchN(1, [close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				}), [...close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				})]])
				created_at?: string

				// The action Access will take if a user matches this policy.
				// Infrastructure application policies can only use the Allow
				// action.
				// Available values: "allow", "deny", "non_identity", "bypass".
				decision?: string

				// The rules that define how users may connect to the targets
				// secured by your application.
				connection_rules?: close({
					// The SSH-specific rules that define how users may connect to the
					// targets secured by your application.
					ssh?: close({
						// Enables using Identity Provider email alias as SSH username.
						allow_email_alias?: bool

						// Contains the Unix usernames that may be used when connecting
						// over SSH.
						usernames?: [...string]
					})
				})

				// The UUID of the policy
				id?: string

				// Require this application to be served in an isolated browser
				// for users matching this policy. 'Client Web Isolation' must be
				// on for the account in order to use this feature.
				isolation_required?: bool

				// The name of the Access policy.
				name?: string

				// Rules evaluated with a NOT logical operator. To match the
				// policy, a user cannot meet any of the Exclude rules.
				exclude?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The order of execution for this policy. Must be unique for each
				// policy within an app.
				precedence?: number

				// A custom message that will appear on the purpose justification
				// screen.
				purpose_justification_prompt?: string

				// Require users to enter a justification when they log in to the
				// application.
				purpose_justification_required?: bool

				// Rules evaluated with an OR logical operator. A user needs to
				// meet only one of the Include rules.
				include?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The amount of time that tokens issued for the application will
				// be valid. Must be in the format `300ms` or `2h45m`. Valid time
				// units are: ns, us (or µs), ms, s, m, h.
				session_duration?: string
				updated_at?:       string

				// Rules evaluated with an AND logical operator. To match the
				// policy, a user must meet all of the Require rules.
				require?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])
			})]])

			// The custom pages that will be displayed when applicable for
			// this application
			custom_pages?: [...string]
			saas_app?: close({
				// The lifetime of the OIDC Access Token after creation. Valid
				// units are m,h. Must be greater than or equal to 1m and less
				// than or equal to 24h.
				access_token_lifetime?: string

				// If client secret should be required on the token endpoint when
				// authorization_code_with_pkce grant is used.
				allow_pkce_without_client_secret?: bool

				// The URL where this applications tile redirects users
				app_launcher_url?: string

				// Optional identifier indicating the authentication protocol used
				// for the saas app. Required for OIDC. Default if unset is
				// "saml"
				// Available values: "saml", "oidc".
				auth_type?: string

				// The application client id
				client_id?: string

				// The application client secret, only returned on POST request.
				client_secret?: string

				// The service provider's endpoint that is responsible for
				// receiving and parsing a SAML assertion.
				consumer_service_url?: string
				custom_attributes?: matchN(1, [close({
					// The SAML FriendlyName of the attribute.
					friendly_name?: string

					// The name of the attribute.
					name?: string
					source?: close({
						// The name of the IdP attribute.
						name?: string

						// A mapping from IdP ID to attribute name.
						name_by_idp?: matchN(1, [close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						}), [...close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						})]])
					})

					// A globally unique name for an identity or service provider.
					// Available values:
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:basic",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:uri".
					name_format?: string

					// If the attribute is required when building a SAML assertion.
					required?: bool
				}), [...close({
					// The SAML FriendlyName of the attribute.
					friendly_name?: string

					// The name of the attribute.
					name?: string
					source?: close({
						// The name of the IdP attribute.
						name?: string

						// A mapping from IdP ID to attribute name.
						name_by_idp?: matchN(1, [close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						}), [...close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						})]])
					})

					// A globally unique name for an identity or service provider.
					// Available values:
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:basic",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:uri".
					name_format?: string

					// If the attribute is required when building a SAML assertion.
					required?: bool
				})]])
				created_at?: string

				// The URL that the user will be redirected to after a successful
				// login for IDP initiated logins.
				default_relay_state?: string

				// The OIDC flows supported by this application
				grant_types?: [...string]

				// A regex to filter Cloudflare groups returned in ID token and
				// userinfo endpoint
				group_filter_regex?: string

				// The unique identifier for your SaaS application.
				idp_entity_id?: string
				custom_claims?: matchN(1, [close({
					// The name of the claim.
					name?: string
					source?: close({
						// The name of the IdP claim.
						name?: string

						// A mapping from IdP ID to claim name.
						name_by_idp?: [string]: string
					})

					// If the claim is required when building an OIDC token.
					required?: bool

					// The scope of the claim.
					// Available values: "groups", "profile", "email", "openid".
					scope?: string
				}), [...close({
					// The name of the claim.
					name?: string
					source?: close({
						// The name of the IdP claim.
						name?: string

						// A mapping from IdP ID to claim name.
						name_by_idp?: [string]: string
					})

					// If the claim is required when building an OIDC token.
					required?: bool

					// The scope of the claim.
					// Available values: "groups", "profile", "email", "openid".
					scope?: string
				})]])
				hybrid_and_implicit_options?: close({
					// If an Access Token should be returned from the OIDC
					// Authorization endpoint
					return_access_token_from_authorization_endpoint?: bool

					// If an ID Token should be returned from the OIDC Authorization
					// endpoint
					return_id_token_from_authorization_endpoint?: bool
				})

				// The format of the name identifier sent to the SaaS application.
				// Available values: "id", "email".
				name_id_format?: string

				// A [JSONata](https://jsonata.org/) expression that transforms an
				// application's user identities into a NameID value for its SAML
				// assertion. This expression should evaluate to a singular
				// string. The output of this expression can override the
				// `name_id_format` setting.
				name_id_transform_jsonata?: string

				// The Access public certificate that will be used to verify your
				// identity.
				public_key?: string

				// The permitted URL's for Cloudflare to return Authorization
				// codes and Access/ID tokens
				redirect_uris?: [...string]

				// A [JSONata] (https://jsonata.org/) expression that transforms
				// an application's user identities into attribute assertions in
				// the SAML response. The expression can transform id, email,
				// name, and groups values. It can also transform fields listed
				// in the saml_attributes or oidc_fields of the identity provider
				// used to authenticate. The output of this expression must be a
				// JSON object.
				saml_attribute_transform_jsonata?: string

				// Define the user information shared with access,
				// "offline_access" scope will be automatically enabled if
				// refresh tokens are enabled
				scopes?: [...string]

				// A globally unique name for an identity or service provider.
				sp_entity_id?: string

				// The endpoint where your SaaS application will send login
				// requests.
				sso_endpoint?: string
				updated_at?:   string
				refresh_token_options?: close({
					// How long a refresh token will be valid for after creation.
					// Valid units are m,h,d. Must be longer than 1m.
					lifetime?: string
				})
			})

			// The primary hostname and path secured by Access. This domain
			// will be displayed if the app is visible in the App Launcher.
			domain?: string

			// Enables the binding cookie, which increases security against
			// compromised authorization tokens and CSRF attacks.
			enable_binding_cookie?: bool

			// The background color of the App Launcher header.
			header_bg_color?: string

			// Enables the HttpOnly cookie attribute, which increases security
			// against XSS attacks.
			http_only_cookie_attribute?: bool

			// UUID.
			id?: string

			// Configuration for provisioning to this application via SCIM.
			// This is currently in closed beta.
			scim_config?: close({
				// Attributes for configuring HTTP Basic authentication scheme for
				// SCIM provisioning to an application.
				authentication?: close({
					// URL used to generate the auth code used during token
					// generation.
					authorization_url?: string

					// Client ID used to authenticate when generating a token for
					// authenticating with the remote SCIM service.
					client_id?: string

					// Secret used to authenticate when generating a token for
					// authenticating with the remove SCIM service.
					client_secret?: string

					// Password used to authenticate with the remote SCIM service.
					password?: string

					// The authentication scheme to use when making SCIM requests to
					// this application.
					// Available values: "httpbasic", "oauthbearertoken", "oauth2",
					// "access_service_token".
					scheme?: string

					// The authorization scopes to request when generating the token
					// used to authenticate with the remove SCIM service.
					scopes?: [...string]

					// Token used to authenticate with the remote SCIM service.
					token?: string

					// URL used to generate the token used to authenticate with the
					// remote SCIM service.
					token_url?: string

					// User name used to authenticate with the remote SCIM service.
					user?: string
				})

				// If false, propagates DELETE requests to the target application
				// for SCIM resources. If true, sets 'active' to false on the
				// SCIM resource. Note: Some targets do not support DELETE
				// operations.
				deactivate_on_delete?: bool

				// Whether SCIM provisioning is turned on for this application.
				enabled?: bool

				// The UID of the IdP to use as the source for SCIM resources to
				// provision to this application.
				idp_uid?: string

				// A list of mappings to apply to SCIM resources before
				// provisioning them in this application. These can transform or
				// filter the resources to be provisioned.
				mappings?: matchN(1, [close({
					// Whether or not this mapping is enabled.
					enabled?: bool

					// A [SCIM filter
					// expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2)
					// that matches resources that should be provisioned to this
					// application.
					filter?: string

					// Whether or not this mapping applies to creates, updates, or
					// deletes.
					operations?: close({
						// Whether or not this mapping applies to create (POST)
						// operations.
						create?: bool

						// Whether or not this mapping applies to DELETE operations.
						delete?: bool

						// Whether or not this mapping applies to update (PATCH/PUT)
						// operations.
						update?: bool
					})

					// Which SCIM resource type this mapping applies to.
					schema?: string

					// The level of adherence to outbound resource schemas when
					// provisioning to this mapping. ‘Strict’ removes unknown values,
					// while ‘passthrough’ passes unknown values to the target.
					// Available values: "strict", "passthrough".
					strictness?: string

					// A [JSONata](https://jsonata.org/) expression that transforms
					// the resource before provisioning it in the application.
					transform_jsonata?: string
				}), [...close({
					// Whether or not this mapping is enabled.
					enabled?: bool

					// A [SCIM filter
					// expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2)
					// that matches resources that should be provisioned to this
					// application.
					filter?: string

					// Whether or not this mapping applies to creates, updates, or
					// deletes.
					operations?: close({
						// Whether or not this mapping applies to create (POST)
						// operations.
						create?: bool

						// Whether or not this mapping applies to DELETE operations.
						delete?: bool

						// Whether or not this mapping applies to update (PATCH/PUT)
						// operations.
						update?: bool
					})

					// Which SCIM resource type this mapping applies to.
					schema?: string

					// The level of adherence to outbound resource schemas when
					// provisioning to this mapping. ‘Strict’ removes unknown values,
					// while ‘passthrough’ passes unknown values to the target.
					// Available values: "strict", "passthrough".
					strictness?: string

					// A [JSONata](https://jsonata.org/) expression that transforms
					// the resource before provisioning it in the application.
					transform_jsonata?: string
				})]])

				// The base URI for the application's SCIM-compatible API.
				remote_uri?: string
			})

			// The image URL for the logo shown in the App Launcher dashboard.
			logo_url?: string

			// The name of the application.
			name?: string

			// Allows options preflight requests to bypass Access
			// authentication and go directly to the origin. Cannot turn on
			// if cors_headers is set.
			options_preflight_bypass?: bool

			// Enables cookie paths to scope an application's JWT to the
			// application path. If disabled, the JWT will scope to the
			// hostname by default
			path_cookie_attribute?: bool

			// Allows matching Access Service Tokens passed HTTP in a single
			// header with this name.
			// This works as an alternative to the (CF-Access-Client-Id,
			// CF-Access-Client-Secret) pair of headers.
			// The header value will be interpreted as a json object similar
			// to:
			// {
			// "cf-access-client-id":
			// "88bf3b6d86161464f6509f7219099e57.access.example.com",
			// "cf-access-client-secret":
			// "bdd31cbc4dec990953e39163fbbb194c93313ca9f0a6e420346af9d326b1d2a5"
			// }
			read_service_tokens_from_header?: string

			// Sets the SameSite cookie setting, which provides increased
			// security against CSRF attacks.
			same_site_cookie_attribute?: string

			// Returns a 401 status code when the request is blocked by a
			// Service Auth policy.
			service_auth_401_redirect?: bool

			// The amount of time that tokens issued for this application will
			// be valid. Must be in the format `300ms` or `2h45m`. Valid time
			// units are: ns, us (or µs), ms, s, m, h. Note: unsupported for
			// infrastructure type applications.
			session_duration?: string

			// Determines when to skip the App Launcher landing page.
			skip_app_launcher_login_page?: bool

			// Enables automatic authentication through cloudflared.
			skip_interstitial?: bool

			// The tags you want assigned to an application. Tags are used to
			// filter applications in the App Launcher dashboard.
			tags?: [...string]

			// The application type.
			// Available values: "self_hosted", "saas", "ssh", "vnc",
			// "app_launcher", "warp", "biso", "bookmark", "dash_sso",
			// "infrastructure", "rdp".
			type?: string
			target_criteria?: matchN(1, [close({
				// The port that the targets use for the chosen communication
				// protocol. A port cannot be assigned to multiple protocols.
				port?: number

				// The communication protocol your application secures.
				// Available values: "SSH", "RDP".
				protocol?: string

				// Contains a map of target attribute keys to target attribute
				// values.
				target_attributes?: [string]: [...string]
			}), [...close({
				// The port that the targets use for the chosen communication
				// protocol. A port cannot be assigned to multiple protocols.
				port?: number

				// The communication protocol your application secures.
				// Available values: "SSH", "RDP".
				protocol?: string

				// Contains a map of target attribute keys to target attribute
				// values.
				target_attributes?: [string]: [...string]
			})]])
			updated_at?: string
		}), [...close({
			cors_headers?: close({
				// Allows all HTTP request headers.
				allow_all_headers?: bool

				// Allows all HTTP request methods.
				allow_all_methods?: bool

				// Allows all origins.
				allow_all_origins?: bool

				// When set to `true`, includes credentials (cookies,
				// authorization headers, or TLS client certificates) with
				// requests.
				allow_credentials?: bool

				// Allowed HTTP request headers.
				allowed_headers?: [...string]

				// Allowed HTTP request methods.
				allowed_methods?: [...string]

				// Allowed origins.
				allowed_origins?: [...string]

				// The maximum number of seconds the results of a preflight
				// request can be cached.
				max_age?: number
			})

			// When set to true, users can authenticate to this application
			// using their WARP session. When set to false this application
			// will always require direct IdP authentication. This setting
			// always overrides the organization setting for WARP
			// authentication.
			allow_authenticate_via_warp?: bool

			// Enables loading application content in an iFrame.
			allow_iframe?: bool

			// List of destinations secured by Access. This supersedes
			// `self_hosted_domains` to allow for more flexibility in
			// defining different types of domains. If `destinations` are
			// provided, then `self_hosted_domains` will be ignored.
			destinations?: matchN(1, [close({
				// The CIDR range of the destination. Single IPs will be computed
				// as /32.
				cidr?: string

				// The hostname of the destination. Matches a valid SNI served by
				// an HTTPS origin.
				hostname?: string

				// The L4 protocol of the destination. When omitted, both UDP and
				// TCP traffic will match.
				// Available values: "tcp", "udp".
				l4_protocol?: string

				// The port range of the destination. Can be a single port or a
				// range of ports. When omitted, all ports will match.
				port_range?: string

				// Available values: "public", "private".
				type?: string

				// The URI of the destination. Public destinations' URIs can
				// include a domain and path with
				// [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
				uri?: string

				// The VNET ID to match the destination. When omitted, all VNETs
				// will match.
				vnet_id?: string
			}), [...close({
				// The CIDR range of the destination. Single IPs will be computed
				// as /32.
				cidr?: string

				// The hostname of the destination. Matches a valid SNI served by
				// an HTTPS origin.
				hostname?: string

				// The L4 protocol of the destination. When omitted, both UDP and
				// TCP traffic will match.
				// Available values: "tcp", "udp".
				l4_protocol?: string

				// The port range of the destination. Can be a single port or a
				// range of ports. When omitted, all ports will match.
				port_range?: string

				// Available values: "public", "private".
				type?: string

				// The URI of the destination. Public destinations' URIs can
				// include a domain and path with
				// [wildcards](https://developers.cloudflare.com/cloudflare-one/policies/access/app-paths/).
				uri?: string

				// The VNET ID to match the destination. When omitted, all VNETs
				// will match.
				vnet_id?: string
			})]])

			// The identity providers your users can select when connecting to
			// this application. Defaults to all IdPs configured in your
			// account.
			allowed_idps?: [...string]

			// The image URL of the logo shown in the App Launcher header.
			app_launcher_logo_url?: string

			// Displays the application in the App Launcher.
			app_launcher_visible?: bool

			// Audience tag.
			aud?: string

			// When set to `true`, users skip the identity provider selection
			// step during login. You must specify only one identity provider
			// in allowed_idps.
			auto_redirect_to_identity?: bool

			// The background color of the App Launcher page.
			bg_color?: string

			// The custom error message shown to a user when they are denied
			// access to the application.
			custom_deny_message?: string

			// The links in the App Launcher footer.
			footer_links?: matchN(1, [close({
				// The hypertext in the footer link.
				name?: string

				// the hyperlink in the footer link.
				url?: string
			}), [...close({
				// The hypertext in the footer link.
				name?: string

				// the hyperlink in the footer link.
				url?: string
			})]])

			// The custom URL a user is redirected to when they are denied
			// access to the application when failing identity-based rules.
			custom_deny_url?: string

			// The design of the App Launcher landing page shown to users when
			// they log in.
			landing_page_design?: close({
				// The background color of the log in button on the landing page.
				button_color?: string

				// The color of the text in the log in button on the landing page.
				button_text_color?: string

				// The URL of the image shown on the landing page.
				image_url?: string

				// The message shown on the landing page.
				message?: string

				// The title shown on the landing page.
				title?: string
			})

			// The custom URL a user is redirected to when they are denied
			// access to the application when failing non-identity rules.
			custom_non_identity_deny_url?: string
			created_at?:                   string
			policies?: matchN(1, [close({
				// Requires the user to request access from an administrator at
				// the start of each session.
				approval_required?: bool

				// Administrators who can approve a temporary authentication
				// request.
				approval_groups?: matchN(1, [close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				}), [...close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				})]])
				created_at?: string

				// The action Access will take if a user matches this policy.
				// Infrastructure application policies can only use the Allow
				// action.
				// Available values: "allow", "deny", "non_identity", "bypass".
				decision?: string

				// The rules that define how users may connect to the targets
				// secured by your application.
				connection_rules?: close({
					// The SSH-specific rules that define how users may connect to the
					// targets secured by your application.
					ssh?: close({
						// Enables using Identity Provider email alias as SSH username.
						allow_email_alias?: bool

						// Contains the Unix usernames that may be used when connecting
						// over SSH.
						usernames?: [...string]
					})
				})

				// The UUID of the policy
				id?: string

				// Require this application to be served in an isolated browser
				// for users matching this policy. 'Client Web Isolation' must be
				// on for the account in order to use this feature.
				isolation_required?: bool

				// The name of the Access policy.
				name?: string

				// Rules evaluated with a NOT logical operator. To match the
				// policy, a user cannot meet any of the Exclude rules.
				exclude?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The order of execution for this policy. Must be unique for each
				// policy within an app.
				precedence?: number

				// A custom message that will appear on the purpose justification
				// screen.
				purpose_justification_prompt?: string

				// Require users to enter a justification when they log in to the
				// application.
				purpose_justification_required?: bool

				// Rules evaluated with an OR logical operator. A user needs to
				// meet only one of the Include rules.
				include?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The amount of time that tokens issued for the application will
				// be valid. Must be in the format `300ms` or `2h45m`. Valid time
				// units are: ns, us (or µs), ms, s, m, h.
				session_duration?: string
				updated_at?:       string

				// Rules evaluated with an AND logical operator. To match the
				// policy, a user must meet all of the Require rules.
				require?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])
			}), [...close({
				// Requires the user to request access from an administrator at
				// the start of each session.
				approval_required?: bool

				// Administrators who can approve a temporary authentication
				// request.
				approval_groups?: matchN(1, [close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				}), [...close({
					// The number of approvals needed to obtain access.
					approvals_needed?: number

					// A list of emails that can approve the access request.
					email_addresses?: [...string]

					// The UUID of an re-usable email list.
					email_list_uuid?: string
				})]])
				created_at?: string

				// The action Access will take if a user matches this policy.
				// Infrastructure application policies can only use the Allow
				// action.
				// Available values: "allow", "deny", "non_identity", "bypass".
				decision?: string

				// The rules that define how users may connect to the targets
				// secured by your application.
				connection_rules?: close({
					// The SSH-specific rules that define how users may connect to the
					// targets secured by your application.
					ssh?: close({
						// Enables using Identity Provider email alias as SSH username.
						allow_email_alias?: bool

						// Contains the Unix usernames that may be used when connecting
						// over SSH.
						usernames?: [...string]
					})
				})

				// The UUID of the policy
				id?: string

				// Require this application to be served in an isolated browser
				// for users matching this policy. 'Client Web Isolation' must be
				// on for the account in order to use this feature.
				isolation_required?: bool

				// The name of the Access policy.
				name?: string

				// Rules evaluated with a NOT logical operator. To match the
				// policy, a user cannot meet any of the Exclude rules.
				exclude?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The order of execution for this policy. Must be unique for each
				// policy within an app.
				precedence?: number

				// A custom message that will appear on the purpose justification
				// screen.
				purpose_justification_prompt?: string

				// Require users to enter a justification when they log in to the
				// application.
				purpose_justification_required?: bool

				// Rules evaluated with an OR logical operator. A user needs to
				// meet only one of the Include rules.
				include?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])

				// The amount of time that tokens issued for the application will
				// be valid. Must be in the format `300ms` or `2h45m`. Valid time
				// units are: ns, us (or µs), ms, s, m, h.
				session_duration?: string
				updated_at?:       string

				// Rules evaluated with an AND logical operator. To match the
				// policy, a user must meet all of the Require rules.
				require?: matchN(1, [close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				}), [...close({
					// An empty object which matches on all service tokens.
					any_valid_service_token?: close({})
					auth_context?: close({
						// The ACID of an Authentication context.
						ac_id?: string

						// The ID of an Authentication context.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					auth_method?: close({
						// The type of authentication method
						// https://datatracker.ietf.org/doc/html/rfc8176#section-2.
						auth_method?: string
					})
					azure_ad?: close({
						// The ID of an Azure group.
						id?: string

						// The ID of your Azure identity provider.
						identity_provider_id?: string
					})
					certificate?: close({})
					common_name?: close({
						// The common name to match.
						common_name?: string
					})
					device_posture?: close({
						// The ID of a device posture integration.
						integration_uid?: string
					})
					email?: close({
						// The email of the user.
						email?: string
					})
					email_domain?: close({
						// The email domain to match.
						domain?: string
					})
					email_list?: close({
						// The ID of a previously created email list.
						id?: string
					})

					// An empty object which matches on all users.
					everyone?: close({})
					external_evaluation?: close({
						// The API endpoint containing your business logic.
						evaluate_url?: string

						// The API endpoint containing the key that Access uses to verify
						// that the response came from your API.
						keys_url?: string
					})
					geo?: close({
						// The country code that should be matched.
						country_code?: string
					})
					github_organization?: close({
						// The ID of your Github identity provider.
						identity_provider_id?: string

						// The name of the organization.
						name?: string

						// The name of the team
						team?: string
					})
					group?: close({
						// The ID of a previously created Access group.
						id?: string
					})
					gsuite?: close({
						// The email of the Google Workspace group.
						email?: string

						// The ID of your Google Workspace identity provider.
						identity_provider_id?: string
					})
					ip?: close({
						// An IPv4 or IPv6 CIDR block.
						ip?: string
					})
					ip_list?: close({
						// The ID of a previously created IP list.
						id?: string
					})
					linked_app_token?: close({
						// The ID of an Access OIDC SaaS application
						app_uid?: string
					})
					login_method?: close({
						// The ID of an identity provider.
						id?: string
					})
					oidc?: close({
						// The name of the OIDC claim.
						claim_name?: string

						// The OIDC claim value to look for.
						claim_value?: string

						// The ID of your OIDC identity provider.
						identity_provider_id?: string
					})
					okta?: close({
						// The ID of your Okta identity provider.
						identity_provider_id?: string

						// The name of the Okta group.
						name?: string
					})
					saml?: close({
						// The name of the SAML attribute.
						attribute_name?: string

						// The SAML attribute value to look for.
						attribute_value?: string

						// The ID of your SAML identity provider.
						identity_provider_id?: string
					})
					service_token?: close({
						// The ID of a Service Token.
						token_id?: string
					})
				})]])
			})]])

			// The custom pages that will be displayed when applicable for
			// this application
			custom_pages?: [...string]
			saas_app?: close({
				// The lifetime of the OIDC Access Token after creation. Valid
				// units are m,h. Must be greater than or equal to 1m and less
				// than or equal to 24h.
				access_token_lifetime?: string

				// If client secret should be required on the token endpoint when
				// authorization_code_with_pkce grant is used.
				allow_pkce_without_client_secret?: bool

				// The URL where this applications tile redirects users
				app_launcher_url?: string

				// Optional identifier indicating the authentication protocol used
				// for the saas app. Required for OIDC. Default if unset is
				// "saml"
				// Available values: "saml", "oidc".
				auth_type?: string

				// The application client id
				client_id?: string

				// The application client secret, only returned on POST request.
				client_secret?: string

				// The service provider's endpoint that is responsible for
				// receiving and parsing a SAML assertion.
				consumer_service_url?: string
				custom_attributes?: matchN(1, [close({
					// The SAML FriendlyName of the attribute.
					friendly_name?: string

					// The name of the attribute.
					name?: string
					source?: close({
						// The name of the IdP attribute.
						name?: string

						// A mapping from IdP ID to attribute name.
						name_by_idp?: matchN(1, [close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						}), [...close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						})]])
					})

					// A globally unique name for an identity or service provider.
					// Available values:
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:basic",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:uri".
					name_format?: string

					// If the attribute is required when building a SAML assertion.
					required?: bool
				}), [...close({
					// The SAML FriendlyName of the attribute.
					friendly_name?: string

					// The name of the attribute.
					name?: string
					source?: close({
						// The name of the IdP attribute.
						name?: string

						// A mapping from IdP ID to attribute name.
						name_by_idp?: matchN(1, [close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						}), [...close({
							// The UID of the IdP.
							idp_id?: string

							// The name of the IdP provided attribute.
							source_name?: string
						})]])
					})

					// A globally unique name for an identity or service provider.
					// Available values:
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:basic",
					// "urn:oasis:names:tc:SAML:2.0:attrname-format:uri".
					name_format?: string

					// If the attribute is required when building a SAML assertion.
					required?: bool
				})]])
				created_at?: string

				// The URL that the user will be redirected to after a successful
				// login for IDP initiated logins.
				default_relay_state?: string

				// The OIDC flows supported by this application
				grant_types?: [...string]

				// A regex to filter Cloudflare groups returned in ID token and
				// userinfo endpoint
				group_filter_regex?: string

				// The unique identifier for your SaaS application.
				idp_entity_id?: string
				custom_claims?: matchN(1, [close({
					// The name of the claim.
					name?: string
					source?: close({
						// The name of the IdP claim.
						name?: string

						// A mapping from IdP ID to claim name.
						name_by_idp?: [string]: string
					})

					// If the claim is required when building an OIDC token.
					required?: bool

					// The scope of the claim.
					// Available values: "groups", "profile", "email", "openid".
					scope?: string
				}), [...close({
					// The name of the claim.
					name?: string
					source?: close({
						// The name of the IdP claim.
						name?: string

						// A mapping from IdP ID to claim name.
						name_by_idp?: [string]: string
					})

					// If the claim is required when building an OIDC token.
					required?: bool

					// The scope of the claim.
					// Available values: "groups", "profile", "email", "openid".
					scope?: string
				})]])
				hybrid_and_implicit_options?: close({
					// If an Access Token should be returned from the OIDC
					// Authorization endpoint
					return_access_token_from_authorization_endpoint?: bool

					// If an ID Token should be returned from the OIDC Authorization
					// endpoint
					return_id_token_from_authorization_endpoint?: bool
				})

				// The format of the name identifier sent to the SaaS application.
				// Available values: "id", "email".
				name_id_format?: string

				// A [JSONata](https://jsonata.org/) expression that transforms an
				// application's user identities into a NameID value for its SAML
				// assertion. This expression should evaluate to a singular
				// string. The output of this expression can override the
				// `name_id_format` setting.
				name_id_transform_jsonata?: string

				// The Access public certificate that will be used to verify your
				// identity.
				public_key?: string

				// The permitted URL's for Cloudflare to return Authorization
				// codes and Access/ID tokens
				redirect_uris?: [...string]

				// A [JSONata] (https://jsonata.org/) expression that transforms
				// an application's user identities into attribute assertions in
				// the SAML response. The expression can transform id, email,
				// name, and groups values. It can also transform fields listed
				// in the saml_attributes or oidc_fields of the identity provider
				// used to authenticate. The output of this expression must be a
				// JSON object.
				saml_attribute_transform_jsonata?: string

				// Define the user information shared with access,
				// "offline_access" scope will be automatically enabled if
				// refresh tokens are enabled
				scopes?: [...string]

				// A globally unique name for an identity or service provider.
				sp_entity_id?: string

				// The endpoint where your SaaS application will send login
				// requests.
				sso_endpoint?: string
				updated_at?:   string
				refresh_token_options?: close({
					// How long a refresh token will be valid for after creation.
					// Valid units are m,h,d. Must be longer than 1m.
					lifetime?: string
				})
			})

			// The primary hostname and path secured by Access. This domain
			// will be displayed if the app is visible in the App Launcher.
			domain?: string

			// Enables the binding cookie, which increases security against
			// compromised authorization tokens and CSRF attacks.
			enable_binding_cookie?: bool

			// The background color of the App Launcher header.
			header_bg_color?: string

			// Enables the HttpOnly cookie attribute, which increases security
			// against XSS attacks.
			http_only_cookie_attribute?: bool

			// UUID.
			id?: string

			// Configuration for provisioning to this application via SCIM.
			// This is currently in closed beta.
			scim_config?: close({
				// Attributes for configuring HTTP Basic authentication scheme for
				// SCIM provisioning to an application.
				authentication?: close({
					// URL used to generate the auth code used during token
					// generation.
					authorization_url?: string

					// Client ID used to authenticate when generating a token for
					// authenticating with the remote SCIM service.
					client_id?: string

					// Secret used to authenticate when generating a token for
					// authenticating with the remove SCIM service.
					client_secret?: string

					// Password used to authenticate with the remote SCIM service.
					password?: string

					// The authentication scheme to use when making SCIM requests to
					// this application.
					// Available values: "httpbasic", "oauthbearertoken", "oauth2",
					// "access_service_token".
					scheme?: string

					// The authorization scopes to request when generating the token
					// used to authenticate with the remove SCIM service.
					scopes?: [...string]

					// Token used to authenticate with the remote SCIM service.
					token?: string

					// URL used to generate the token used to authenticate with the
					// remote SCIM service.
					token_url?: string

					// User name used to authenticate with the remote SCIM service.
					user?: string
				})

				// If false, propagates DELETE requests to the target application
				// for SCIM resources. If true, sets 'active' to false on the
				// SCIM resource. Note: Some targets do not support DELETE
				// operations.
				deactivate_on_delete?: bool

				// Whether SCIM provisioning is turned on for this application.
				enabled?: bool

				// The UID of the IdP to use as the source for SCIM resources to
				// provision to this application.
				idp_uid?: string

				// A list of mappings to apply to SCIM resources before
				// provisioning them in this application. These can transform or
				// filter the resources to be provisioned.
				mappings?: matchN(1, [close({
					// Whether or not this mapping is enabled.
					enabled?: bool

					// A [SCIM filter
					// expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2)
					// that matches resources that should be provisioned to this
					// application.
					filter?: string

					// Whether or not this mapping applies to creates, updates, or
					// deletes.
					operations?: close({
						// Whether or not this mapping applies to create (POST)
						// operations.
						create?: bool

						// Whether or not this mapping applies to DELETE operations.
						delete?: bool

						// Whether or not this mapping applies to update (PATCH/PUT)
						// operations.
						update?: bool
					})

					// Which SCIM resource type this mapping applies to.
					schema?: string

					// The level of adherence to outbound resource schemas when
					// provisioning to this mapping. ‘Strict’ removes unknown values,
					// while ‘passthrough’ passes unknown values to the target.
					// Available values: "strict", "passthrough".
					strictness?: string

					// A [JSONata](https://jsonata.org/) expression that transforms
					// the resource before provisioning it in the application.
					transform_jsonata?: string
				}), [...close({
					// Whether or not this mapping is enabled.
					enabled?: bool

					// A [SCIM filter
					// expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2)
					// that matches resources that should be provisioned to this
					// application.
					filter?: string

					// Whether or not this mapping applies to creates, updates, or
					// deletes.
					operations?: close({
						// Whether or not this mapping applies to create (POST)
						// operations.
						create?: bool

						// Whether or not this mapping applies to DELETE operations.
						delete?: bool

						// Whether or not this mapping applies to update (PATCH/PUT)
						// operations.
						update?: bool
					})

					// Which SCIM resource type this mapping applies to.
					schema?: string

					// The level of adherence to outbound resource schemas when
					// provisioning to this mapping. ‘Strict’ removes unknown values,
					// while ‘passthrough’ passes unknown values to the target.
					// Available values: "strict", "passthrough".
					strictness?: string

					// A [JSONata](https://jsonata.org/) expression that transforms
					// the resource before provisioning it in the application.
					transform_jsonata?: string
				})]])

				// The base URI for the application's SCIM-compatible API.
				remote_uri?: string
			})

			// The image URL for the logo shown in the App Launcher dashboard.
			logo_url?: string

			// The name of the application.
			name?: string

			// Allows options preflight requests to bypass Access
			// authentication and go directly to the origin. Cannot turn on
			// if cors_headers is set.
			options_preflight_bypass?: bool

			// Enables cookie paths to scope an application's JWT to the
			// application path. If disabled, the JWT will scope to the
			// hostname by default
			path_cookie_attribute?: bool

			// Allows matching Access Service Tokens passed HTTP in a single
			// header with this name.
			// This works as an alternative to the (CF-Access-Client-Id,
			// CF-Access-Client-Secret) pair of headers.
			// The header value will be interpreted as a json object similar
			// to:
			// {
			// "cf-access-client-id":
			// "88bf3b6d86161464f6509f7219099e57.access.example.com",
			// "cf-access-client-secret":
			// "bdd31cbc4dec990953e39163fbbb194c93313ca9f0a6e420346af9d326b1d2a5"
			// }
			read_service_tokens_from_header?: string

			// Sets the SameSite cookie setting, which provides increased
			// security against CSRF attacks.
			same_site_cookie_attribute?: string

			// Returns a 401 status code when the request is blocked by a
			// Service Auth policy.
			service_auth_401_redirect?: bool

			// The amount of time that tokens issued for this application will
			// be valid. Must be in the format `300ms` or `2h45m`. Valid time
			// units are: ns, us (or µs), ms, s, m, h. Note: unsupported for
			// infrastructure type applications.
			session_duration?: string

			// Determines when to skip the App Launcher landing page.
			skip_app_launcher_login_page?: bool

			// Enables automatic authentication through cloudflared.
			skip_interstitial?: bool

			// The tags you want assigned to an application. Tags are used to
			// filter applications in the App Launcher dashboard.
			tags?: [...string]

			// The application type.
			// Available values: "self_hosted", "saas", "ssh", "vnc",
			// "app_launcher", "warp", "biso", "bookmark", "dash_sso",
			// "infrastructure", "rdp".
			type?: string
			target_criteria?: matchN(1, [close({
				// The port that the targets use for the chosen communication
				// protocol. A port cannot be assigned to multiple protocols.
				port?: number

				// The communication protocol your application secures.
				// Available values: "SSH", "RDP".
				protocol?: string

				// Contains a map of target attribute keys to target attribute
				// values.
				target_attributes?: [string]: [...string]
			}), [...close({
				// The port that the targets use for the chosen communication
				// protocol. A port cannot be assigned to multiple protocols.
				port?: number

				// The communication protocol your application secures.
				// Available values: "SSH", "RDP".
				protocol?: string

				// Contains a map of target attribute keys to target attribute
				// values.
				target_attributes?: [string]: [...string]
			})]])
			updated_at?: string
		})]])

		// The name of the app.
		name?: string

		// Search for apps by other listed query parameters.
		search?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
