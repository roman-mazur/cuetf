package data

#aws_cloudfront_response_headers_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_response_headers_policy")
	close({
		arn?:     string
		comment?: string
		cors_config?: [...close({
			access_control_allow_credentials?: bool
			access_control_allow_headers?: [...close({
				items?: [...string]
			})]
			access_control_allow_methods?: [...close({
				items?: [...string]
			})]
			access_control_allow_origins?: [...close({
				items?: [...string]
			})]
			access_control_expose_headers?: [...close({
				items?: [...string]
			})]
			access_control_max_age_sec?: number
			origin_override?:            bool
		})]
		custom_headers_config?: [...close({
			items?: [...close({
				header?:   string
				override?: bool
				value?:    string
			})]
		})]
		etag?: string
		id?:   string
		name?: string
		remove_headers_config?: [...close({
			items?: [...close({
				header?: string
			})]
		})]
		security_headers_config?: [...close({
			content_security_policy?: [...close({
				content_security_policy?: string
				override?:                bool
			})]
			content_type_options?: [...close({
				override?: bool
			})]
			frame_options?: [...close({
				frame_option?: string
				override?:     bool
			})]
			referrer_policy?: [...close({
				override?:        bool
				referrer_policy?: string
			})]
			strict_transport_security?: [...close({
				access_control_max_age_sec?: number
				include_subdomains?:         bool
				override?:                   bool
				preload?:                    bool
			})]
			xss_protection?: [...close({
				mode_block?: bool
				override?:   bool
				protection?: bool
				report_uri?: string
			})]
		})]
		server_timing_headers_config?: [...close({
			enabled?:       bool
			sampling_rate?: number
		})]
	})
}
