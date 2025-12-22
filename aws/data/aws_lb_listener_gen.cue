package data

#aws_lb_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lb_listener")
	close({
		alpn_policy?:     string
		arn?:             string
		certificate_arn?: string
		default_action?: [...close({
			authenticate_cognito?: [...close({
				authentication_request_extra_params?: [string]: string
				on_unauthenticated_request?: string
				scope?:                      string
				session_cookie_name?:        string
				session_timeout?:            number
				user_pool_arn?:              string
				user_pool_client_id?:        string
				user_pool_domain?:           string
			})]
			authenticate_oidc?: [...close({
				authentication_request_extra_params?: [string]: string
				authorization_endpoint?:     string
				client_id?:                  string
				client_secret?:              string
				issuer?:                     string
				on_unauthenticated_request?: string
				scope?:                      string
				session_cookie_name?:        string
				session_timeout?:            number
				token_endpoint?:             string
				user_info_endpoint?:         string
			})]
			fixed_response?: [...close({
				content_type?: string
				message_body?: string
				status_code?:  string
			})]
			forward?: [...close({
				stickiness?: [...close({
					duration?: number
					enabled?:  bool
				})]
				target_group?: [...close({
					arn?:    string
					weight?: number
				})]
			})]
			jwt_validation?: [...close({
				additional_claim?: [...close({
					format?: string
					name?:   string
					values?: [...string]
				})]
				issuer?:        string
				jwks_endpoint?: string
			})]
			order?: number
			redirect?: [...close({
				host?:        string
				path?:        string
				port?:        string
				protocol?:    string
				query?:       string
				status_code?: string
			})]
			target_group_arn?: string
			type?:             string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		id?:                string
		timeouts?:          #timeouts
		load_balancer_arn?: string
		mutual_authentication?: [...close({
			advertise_trust_store_ca_names?:   string
			ignore_client_certificate_expiry?: bool
			mode?:                             string
			trust_store_arn?:                  string
		})]
		port?:       number
		protocol?:   string
		ssl_policy?: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
