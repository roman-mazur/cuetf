package data

#google_compute_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_security_policy")
	close({
		// Adaptive Protection Config of this security policy.
		adaptive_protection_config?: [...close({
			layer_7_ddos_defense_config?: [...close({
				enable?:          bool
				rule_visibility?: string
				threshold_configs?: [...close({
					auto_deploy_confidence_threshold?:        number
					auto_deploy_expiration_sec?:              number
					auto_deploy_impacted_baseline_threshold?: number
					auto_deploy_load_threshold?:              number
					detection_absolute_qps?:                  number
					detection_load_threshold?:                number
					detection_relative_to_baseline_qps?:      number
					name?:                                    string
					traffic_granularity_configs?: [...close({
						enable_each_unique_value?: bool
						type?:                     string
						value?:                    string
					})]
				})]
			})]
		})]

		// Advanced Options Config of this security policy.
		advanced_options_config?: [...close({
			json_custom_config?: [...close({
				content_types?: [...string]
			})]
			json_parsing?: string
			log_level?:    string
			user_ip_request_headers?: [...string]
		})]

		// An optional description of this security policy. Max size is
		// 2048.
		description?: string

		// Fingerprint of this resource.
		fingerprint?: string

		// The name of the security policy.
		name?: string
		id?:   string

		// The project in which the resource belongs. If it is not
		// provided, the provider project is used.
		project?: string

		// reCAPTCHA configuration options to be applied for the security
		// policy.
		recaptcha_options_config?: [...close({
			redirect_site_key?: string
		})]

		// The set of rules that belong to this policy. There must always
		// be a default rule (rule with priority 2147483647 and match
		// "*"). If no rules are provided when creating a security
		// policy, a default rule with action "allow" will be added.
		rule?: [...close({
			action?:      string
			description?: string
			header_action?: [...close({
				request_headers_to_adds?: [...close({
					header_name?:  string
					header_value?: string
				})]
			})]
			match?: [...close({
				config?: [...close({
					src_ip_ranges?: [...string]
				})]
				expr?: [...close({
					expression?: string
				})]
				expr_options?: [...close({
					recaptcha_options?: [...close({
						action_token_site_keys?: [...string]
						session_token_site_keys?: [...string]
					})]
				})]
				versioned_expr?: string
			})]
			preconfigured_waf_config?: [...close({
				exclusion?: [...close({
					request_cookie?: [...close({
						operator?: string
						value?:    string
					})]
					request_header?: [...close({
						operator?: string
						value?:    string
					})]
					request_query_param?: [...close({
						operator?: string
						value?:    string
					})]
					request_uri?: [...close({
						operator?: string
						value?:    string
					})]
					target_rule_ids?: [...string]
					target_rule_set?: string
				})]
			})]
			preview?:  bool
			priority?: number
			rate_limit_options?: [...close({
				ban_duration_sec?: number
				ban_threshold?: [...close({
					count?:        number
					interval_sec?: number
				})]
				conform_action?: string
				enforce_on_key?: string
				enforce_on_key_configs?: [...close({
					enforce_on_key_name?: string
					enforce_on_key_type?: string
				})]
				enforce_on_key_name?: string
				exceed_action?:       string
				exceed_redirect_options?: [...close({
					target?: string
					type?:   string
				})]
				rate_limit_threshold?: [...close({
					count?:        number
					interval_sec?: number
				})]
			})]
			redirect_options?: [...close({
				target?: string
				type?:   string
			})]
		})]

		// The URI of the created resource.
		self_link?: string

		// The type indicates the intended use of the security policy.
		// CLOUD_ARMOR - Cloud Armor backend security policies can be
		// configured to filter incoming HTTP requests targeting backend
		// services. They filter requests before they hit the origin
		// servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies
		// can be configured to filter incoming HTTP requests targeting
		// backend services (including Cloud CDN-enabled) as well as
		// backend buckets (Cloud Storage). They filter requests before
		// the request is served from Google's cache.
		type?: string
	})
}
