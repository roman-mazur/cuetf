package data

#google_compute_region_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_region_security_policy")
	close({
		// Advanced Options Config of this security policy.
		advanced_options_config?: [...close({
			json_custom_config?: [...close({
				content_types?: [...string]
			})]
			json_parsing?: string
			log_level?:    string
			user_ip_request_headers?: [...string]
		})]

		// Configuration for Google Cloud Armor DDOS Proctection Config.
		ddos_protection_config?: [...close({
			ddos_protection?: string
		})]

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string

		// Fingerprint of this resource. This field is used internally
		// during
		// updates of this resource.
		fingerprint?: string
		id?:          string

		// Name of the resource. Provided by the client when the resource
		// is created. The name must be 1-63 characters long, and comply
		// with RFC1035.
		// Specifically, the name must be 1-63 characters long and match
		// the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means
		// the first character must be a lowercase letter, and all
		// following characters must be a dash, lowercase letter, or
		// digit, except the last character, which cannot be a dash.
		name!: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		policy_id?: string
		project?:   string

		// The Region in which the created Region Security Policy should
		// reside.
		// If it is not provided, the provider region is used.
		region?: string

		// The set of rules that belong to this policy. There must always
		// be a default rule (rule with priority 2147483647 and match
		// "*"). If no rules are provided when creating a security
		// policy, a default rule with action "allow" will be added.
		rules?: [...close({
			action?:      string
			description?: string
			match?: [...close({
				config?: [...close({
					src_ip_ranges?: [...string]
				})]
				expr?: [...close({
					expression?: string
				})]
				versioned_expr?: string
			})]
			network_match?: [...close({
				dest_ip_ranges?: [...string]
				dest_ports?: [...string]
				ip_protocols?: [...string]
				src_asns?: [...number]
				src_ip_ranges?: [...string]
				src_ports?: [...string]
				src_region_codes?: [...string]
				user_defined_fields?: [...close({
					name?: string
					values?: [...string]
				})]
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
				rate_limit_threshold?: [...close({
					count?:        number
					interval_sec?: number
				})]
			})]
		})]

		// Server-defined URL for the resource.
		self_link?: string

		// Server-defined URL for this resource with the resource id.
		self_link_with_policy_id?: string

		// The type indicates the intended use of the security policy.
		// - CLOUD_ARMOR: Cloud Armor backend security policies can be
		// configured to filter incoming HTTP requests targeting backend
		// services. They filter requests before they hit the origin
		// servers.
		// - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be
		// configured to filter incoming HTTP requests targeting backend
		// services (including Cloud CDN-enabled) as well as backend
		// buckets (Cloud Storage). They filter requests before the
		// request is served from Google's cache.
		// - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be
		// configured to filter packets targeting network load balancing
		// resources such as backend services, target pools, target
		// instances, and instances with external IPs. They filter
		// requests before the request is served from the application.
		// This field can be set only at resource creation time. Possible
		// values: ["CLOUD_ARMOR", "CLOUD_ARMOR_EDGE",
		// "CLOUD_ARMOR_NETWORK"]
		type?: string

		// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK
		// policies.
		// A user-defined field consists of up to 4 bytes extracted from a
		// fixed offset in the packet, relative to the IPv4, IPv6, TCP,
		// or UDP header, with an optional mask to select certain bits.
		// Rules may then specify matching values for these fields.
		user_defined_fields?: [...close({
			base?:   string
			mask?:   string
			name?:   string
			offset?: number
			size?:   number
		})]
	})
}
