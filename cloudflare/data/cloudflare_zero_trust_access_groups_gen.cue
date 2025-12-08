package data

#cloudflare_zero_trust_access_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_groups")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// Rules evaluated with a NOT logical operator. To match a policy,
			// a user cannot meet any of the Exclude rules.
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

			// UUID.
			id?: string

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

			// Rules evaluated with an AND logical operator. To match a
			// policy, a user must meet all of the Require rules.
			is_default?: matchN(1, [close({
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

			// The name of the Access group.
			name?: string

			// Rules evaluated with an AND logical operator. To match a
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
			// Rules evaluated with a NOT logical operator. To match a policy,
			// a user cannot meet any of the Exclude rules.
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

			// UUID.
			id?: string

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

			// Rules evaluated with an AND logical operator. To match a
			// policy, a user must meet all of the Require rules.
			is_default?: matchN(1, [close({
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

			// The name of the Access group.
			name?: string

			// Rules evaluated with an AND logical operator. To match a
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

		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The name of the group.
		name?: string

		// Search for groups by other listed query parameters.
		search?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
