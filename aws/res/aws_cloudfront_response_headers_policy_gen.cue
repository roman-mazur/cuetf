package res

import "list"

#aws_cloudfront_response_headers_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudfront_response_headers_policy")
	comment?: string
	etag?:    string
	id?:      string
	name!:    string
	cors_config?: #cors_config | list.MaxItems(1) & [...#cors_config]
	custom_headers_config?: #custom_headers_config | list.MaxItems(1) & [...#custom_headers_config]
	remove_headers_config?: #remove_headers_config | list.MaxItems(1) & [...#remove_headers_config]
	security_headers_config?: #security_headers_config | list.MaxItems(1) & [...#security_headers_config]
	server_timing_headers_config?: #server_timing_headers_config | list.MaxItems(1) & [...#server_timing_headers_config]

	#cors_config: {
		access_control_allow_credentials!: bool
		access_control_max_age_sec?:       number
		origin_override!:                  bool
		access_control_allow_headers?: #cors_config.#access_control_allow_headers | list.MaxItems(1) & [_, ...] & [...#cors_config.#access_control_allow_headers]
		access_control_allow_methods?: #cors_config.#access_control_allow_methods | list.MaxItems(1) & [_, ...] & [...#cors_config.#access_control_allow_methods]
		access_control_allow_origins?: #cors_config.#access_control_allow_origins | list.MaxItems(1) & [_, ...] & [...#cors_config.#access_control_allow_origins]
		access_control_expose_headers?: #cors_config.#access_control_expose_headers | list.MaxItems(1) & [...#cors_config.#access_control_expose_headers]

		#access_control_allow_headers: items?: [...string]

		#access_control_allow_methods: items?: [...string]

		#access_control_allow_origins: items?: [...string]

		#access_control_expose_headers: items?: [...string]
	}

	#custom_headers_config: {
		items?: #custom_headers_config.#items | [...#custom_headers_config.#items]

		#items: {
			header!:   string
			override!: bool
			value!:    string
		}
	}

	#remove_headers_config: {
		items?: #remove_headers_config.#items | [...#remove_headers_config.#items]

		#items: header!: string
	}

	#security_headers_config: {
		content_security_policy?: #security_headers_config.#content_security_policy | list.MaxItems(1) & [...#security_headers_config.#content_security_policy]
		content_type_options?: #security_headers_config.#content_type_options | list.MaxItems(1) & [...#security_headers_config.#content_type_options]
		frame_options?: #security_headers_config.#frame_options | list.MaxItems(1) & [...#security_headers_config.#frame_options]
		referrer_policy?: #security_headers_config.#referrer_policy | list.MaxItems(1) & [...#security_headers_config.#referrer_policy]
		strict_transport_security?: #security_headers_config.#strict_transport_security | list.MaxItems(1) & [...#security_headers_config.#strict_transport_security]
		xss_protection?: #security_headers_config.#xss_protection | list.MaxItems(1) & [...#security_headers_config.#xss_protection]

		#content_security_policy: {
			content_security_policy!: string
			override!:                bool
		}

		#content_type_options: override!: bool

		#frame_options: {
			frame_option!: string
			override!:     bool
		}

		#referrer_policy: {
			override!:        bool
			referrer_policy!: string
		}

		#strict_transport_security: {
			access_control_max_age_sec!: number
			include_subdomains?:         bool
			override!:                   bool
			preload?:                    bool
		}

		#xss_protection: {
			mode_block?: bool
			override!:   bool
			protection!: bool
			report_uri?: string
		}
	}

	#server_timing_headers_config: {
		enabled!:       bool
		sampling_rate!: number
	}
}
