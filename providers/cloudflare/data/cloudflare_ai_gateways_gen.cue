package data

cloudflare_ai_gateways: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_ai_gateways")
	close({
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			authentication?: bool
			dlp?: close({
				// Available values: "BLOCK", "FLAG".
				action?: string
				policies?: matchN(1, [close({
					// Available values: "FLAG", "BLOCK".
					action?: string
					check?: [...string]
					enabled?: bool
					id?:      string
					profiles?: [...string]
				}), [...close({
					// Available values: "FLAG", "BLOCK".
					action?: string
					check?: [...string]
					enabled?: bool
					id?:      string
					profiles?: [...string]
				})]])
				enabled?: bool
				profiles?: [...string]
			})

			// gateway id
			id?:                         string
			cache_invalidate_on_update?: bool
			guardrails?: close({
				prompt?: close({
					// Available values: "FLAG", "BLOCK".
					p1?: string

					// Available values: "FLAG", "BLOCK".
					s1?: string

					// Available values: "FLAG", "BLOCK".
					s10?: string

					// Available values: "FLAG", "BLOCK".
					s11?: string

					// Available values: "FLAG", "BLOCK".
					s12?: string

					// Available values: "FLAG", "BLOCK".
					s13?: string

					// Available values: "FLAG", "BLOCK".
					s2?: string

					// Available values: "FLAG", "BLOCK".
					s3?: string

					// Available values: "FLAG", "BLOCK".
					s4?: string

					// Available values: "FLAG", "BLOCK".
					s5?: string

					// Available values: "FLAG", "BLOCK".
					s6?: string

					// Available values: "FLAG", "BLOCK".
					s7?: string

					// Available values: "FLAG", "BLOCK".
					s8?: string

					// Available values: "FLAG", "BLOCK".
					s9?: string
				})
				response?: close({
					// Available values: "FLAG", "BLOCK".
					p1?: string

					// Available values: "FLAG", "BLOCK".
					s1?: string

					// Available values: "FLAG", "BLOCK".
					s10?: string

					// Available values: "FLAG", "BLOCK".
					s11?: string

					// Available values: "FLAG", "BLOCK".
					s12?: string

					// Available values: "FLAG", "BLOCK".
					s13?: string

					// Available values: "FLAG", "BLOCK".
					s2?: string

					// Available values: "FLAG", "BLOCK".
					s3?: string

					// Available values: "FLAG", "BLOCK".
					s4?: string

					// Available values: "FLAG", "BLOCK".
					s5?: string

					// Available values: "FLAG", "BLOCK".
					s6?: string

					// Available values: "FLAG", "BLOCK".
					s7?: string

					// Available values: "FLAG", "BLOCK".
					s8?: string

					// Available values: "FLAG", "BLOCK".
					s9?: string
				})
			})

			// Available values: "STOP_INSERTING", "DELETE_OLDEST".
			log_management_strategy?: string
			cache_ttl?:               number
			otel?: matchN(1, [close({
				authorization?: string

				// Available values: "json", "protobuf".
				content_type?: string
				headers?: [string]: string
				url?: string
			}), [...close({
				authorization?: string

				// Available values: "json", "protobuf".
				content_type?: string
				headers?: [string]: string
				url?: string
			})]])

			// Available values: "fixed", "sliding".
			rate_limiting_technique?: string
			collect_logs?:            bool
			spend_limits?: close({
				enabled?: bool
				rules?: matchN(1, [close({
					ai_gateway_provider?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					enabled?: bool

					// Available values: "cost".
					limit_type?: string
					metadata?: [string]: close({
						// Available values: "partition", "filter".
						mode?: string
						values?: [...string]
					})
					id?: string

					// Available values: "fixed", "sliding".
					technique?: string
					model?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					limit?:  number
					window?: number
				}), [...close({
					ai_gateway_provider?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					enabled?: bool

					// Available values: "cost".
					limit_type?: string
					metadata?: [string]: close({
						// Available values: "partition", "filter".
						mode?: string
						values?: [...string]
					})
					id?: string

					// Available values: "fixed", "sliding".
					technique?: string
					model?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					limit?:  number
					window?: number
				})]])
			})

			// Backoff strategy for retry delays
			// Available values: "constant", "linear", "exponential".
			retry_backoff?: string
			created_at?:    string
			stripe?: close({
				authorization?: string
				usage_events?: matchN(1, [close({
					payload?: string
				}), [...close({
					payload?: string
				})]])
			})

			// Delay between retry attempts in milliseconds (0-5000)
			retry_delay?: number

			// Maximum number of retry attempts for failed requests (1-5)
			retry_max_attempts?: number
			is_default?:         bool

			// Controls how Workers AI inference calls routed through this gateway are
			// billed. Only 'postpaid' is currently supported.
			// Available values: "postpaid".
			workers_ai_billing_mode?: string
			log_management?:          number
			logpush?:                 bool
			logpush_public_key?:      string
			modified_at?:             string
			rate_limiting_interval?:  number
			rate_limiting_limit?:     number
			store_id?:                string
			zdr?:                     bool
		}), [...close({
			authentication?: bool
			dlp?: close({
				// Available values: "BLOCK", "FLAG".
				action?: string
				policies?: matchN(1, [close({
					// Available values: "FLAG", "BLOCK".
					action?: string
					check?: [...string]
					enabled?: bool
					id?:      string
					profiles?: [...string]
				}), [...close({
					// Available values: "FLAG", "BLOCK".
					action?: string
					check?: [...string]
					enabled?: bool
					id?:      string
					profiles?: [...string]
				})]])
				enabled?: bool
				profiles?: [...string]
			})

			// gateway id
			id?:                         string
			cache_invalidate_on_update?: bool
			guardrails?: close({
				prompt?: close({
					// Available values: "FLAG", "BLOCK".
					p1?: string

					// Available values: "FLAG", "BLOCK".
					s1?: string

					// Available values: "FLAG", "BLOCK".
					s10?: string

					// Available values: "FLAG", "BLOCK".
					s11?: string

					// Available values: "FLAG", "BLOCK".
					s12?: string

					// Available values: "FLAG", "BLOCK".
					s13?: string

					// Available values: "FLAG", "BLOCK".
					s2?: string

					// Available values: "FLAG", "BLOCK".
					s3?: string

					// Available values: "FLAG", "BLOCK".
					s4?: string

					// Available values: "FLAG", "BLOCK".
					s5?: string

					// Available values: "FLAG", "BLOCK".
					s6?: string

					// Available values: "FLAG", "BLOCK".
					s7?: string

					// Available values: "FLAG", "BLOCK".
					s8?: string

					// Available values: "FLAG", "BLOCK".
					s9?: string
				})
				response?: close({
					// Available values: "FLAG", "BLOCK".
					p1?: string

					// Available values: "FLAG", "BLOCK".
					s1?: string

					// Available values: "FLAG", "BLOCK".
					s10?: string

					// Available values: "FLAG", "BLOCK".
					s11?: string

					// Available values: "FLAG", "BLOCK".
					s12?: string

					// Available values: "FLAG", "BLOCK".
					s13?: string

					// Available values: "FLAG", "BLOCK".
					s2?: string

					// Available values: "FLAG", "BLOCK".
					s3?: string

					// Available values: "FLAG", "BLOCK".
					s4?: string

					// Available values: "FLAG", "BLOCK".
					s5?: string

					// Available values: "FLAG", "BLOCK".
					s6?: string

					// Available values: "FLAG", "BLOCK".
					s7?: string

					// Available values: "FLAG", "BLOCK".
					s8?: string

					// Available values: "FLAG", "BLOCK".
					s9?: string
				})
			})

			// Available values: "STOP_INSERTING", "DELETE_OLDEST".
			log_management_strategy?: string
			cache_ttl?:               number
			otel?: matchN(1, [close({
				authorization?: string

				// Available values: "json", "protobuf".
				content_type?: string
				headers?: [string]: string
				url?: string
			}), [...close({
				authorization?: string

				// Available values: "json", "protobuf".
				content_type?: string
				headers?: [string]: string
				url?: string
			})]])

			// Available values: "fixed", "sliding".
			rate_limiting_technique?: string
			collect_logs?:            bool
			spend_limits?: close({
				enabled?: bool
				rules?: matchN(1, [close({
					ai_gateway_provider?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					enabled?: bool

					// Available values: "cost".
					limit_type?: string
					metadata?: [string]: close({
						// Available values: "partition", "filter".
						mode?: string
						values?: [...string]
					})
					id?: string

					// Available values: "fixed", "sliding".
					technique?: string
					model?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					limit?:  number
					window?: number
				}), [...close({
					ai_gateway_provider?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					enabled?: bool

					// Available values: "cost".
					limit_type?: string
					metadata?: [string]: close({
						// Available values: "partition", "filter".
						mode?: string
						values?: [...string]
					})
					id?: string

					// Available values: "fixed", "sliding".
					technique?: string
					model?: close({
						// Available values: "filter".
						mode?: string
						values?: [...string]
					})
					limit?:  number
					window?: number
				})]])
			})

			// Backoff strategy for retry delays
			// Available values: "constant", "linear", "exponential".
			retry_backoff?: string
			created_at?:    string
			stripe?: close({
				authorization?: string
				usage_events?: matchN(1, [close({
					payload?: string
				}), [...close({
					payload?: string
				})]])
			})

			// Delay between retry attempts in milliseconds (0-5000)
			retry_delay?: number

			// Maximum number of retry attempts for failed requests (1-5)
			retry_max_attempts?: number
			is_default?:         bool

			// Controls how Workers AI inference calls routed through this gateway are
			// billed. Only 'postpaid' is currently supported.
			// Available values: "postpaid".
			workers_ai_billing_mode?: string
			log_management?:          number
			logpush?:                 bool
			logpush_public_key?:      string
			modified_at?:             string
			rate_limiting_interval?:  number
			rate_limiting_limit?:     number
			store_id?:                string
			zdr?:                     bool
		})]])

		// Search by id
		search?: string
	})
}
