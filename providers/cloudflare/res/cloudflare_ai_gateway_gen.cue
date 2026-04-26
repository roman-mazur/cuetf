package res

#cloudflare_ai_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_ai_gateway")
	close({
		account_id?:                 string
		authentication?:             bool
		cache_invalidate_on_update!: bool
		cache_ttl!:                  number
		collect_logs!:               bool
		created_at?:                 string

		// gateway id
		id!:             string
		is_default?:     bool
		log_management?: number

		// Available values: "STOP_INSERTING", "DELETE_OLDEST".
		log_management_strategy?: string
		logpush?:                 bool
		logpush_public_key?:      string
		modified_at?:             string
		rate_limiting_interval!:  number
		rate_limiting_limit!:     number

		// Available values: "fixed", "sliding".
		rate_limiting_technique?: string

		// Backoff strategy for retry delays
		// Available values: "constant", "linear", "exponential".
		retry_backoff?: string

		// Delay between retry attempts in milliseconds (0-5000)
		retry_delay?: number

		// Maximum number of retry attempts for failed requests (1-5)
		retry_max_attempts?: number
		store_id?:           string

		// Controls how Workers AI inference calls routed through this
		// gateway are billed. Only 'postpaid' is currently supported.
		// Available values: "postpaid".
		workers_ai_billing_mode?: string
		zdr?:                     bool
		dlp?: close({
			// Available values: "BLOCK", "FLAG".
			action?:  string
			enabled!: bool
			profiles?: [...string]
			policies?: matchN(1, [close({
				// Available values: "FLAG", "BLOCK".
				action!: string
				check!: [...string]
				enabled!: bool
				id!:      string
				profiles!: [...string]
			}), [...close({
				// Available values: "FLAG", "BLOCK".
				action!: string
				check!: [...string]
				enabled!: bool
				id!:      string
				profiles!: [...string]
			})]])
		})
		otel?: matchN(1, [close({
			authorization!: string

			// Available values: "json", "protobuf".
			content_type?: string
			headers!: [string]: string
			url!: string
		}), [...close({
			authorization!: string

			// Available values: "json", "protobuf".
			content_type?: string
			headers!: [string]: string
			url!: string
		})]])
		stripe?: close({
			authorization!: string
			usage_events!: matchN(1, [close({
				payload!: string
			}), [...close({
				payload!: string
			})]])
		})
	})
}
