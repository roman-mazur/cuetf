package res

#cloudflare_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_ruleset")
	close({
		// The unique ID of the account.
		account_id?: string

		// An informative description of the ruleset.
		description?: string

		// The unique ID of the ruleset.
		id?: string

		// The kind of the ruleset.
		// Available values: "managed", "custom", "root", "zone".
		kind!: string

		// The timestamp of when the ruleset was last modified.
		last_updated?: string

		// The list of rules in the ruleset.
		rules?: matchN(1, [close({
			// The action to perform when the rule matches.
			// Available values: "block", "challenge", "compress_response",
			// "ddos_dynamic", "execute", "force_connection_close",
			// "js_challenge", "log", "log_custom_field",
			// "managed_challenge", "redirect", "rewrite", "route", "score",
			// "serve_error", "set_cache_settings", "set_config", "skip".
			action!: string

			// The parameters configuring the rule's action.
			action_parameters?: close({
				// A list of additional ports that caching should be enabled on.
				additional_cacheable_ports?: [...number]

				// The name of a custom asset to serve as the response.
				asset_name?: string

				// Custom order for compression algorithms.
				algorithms?: matchN(1, [close({
					// Name of the compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				}), [...close({
					// Name of the compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				})]])

				// Which file extensions to minify automatically.
				autominify?: close({
					// Whether to minify CSS files.
					css?: bool

					// Whether to minify HTML files.
					html?: bool

					// Whether to minify JavaScript files.
					js?: bool
				})

				// Whether to enable Automatic HTTPS Rewrites.
				automatic_https_rewrites?: bool

				// Whether to enable Browser Integrity Check (BIC).
				bic?: bool

				// Whether the request's response from the origin is eligible for
				// caching. Caching itself will still depend on the cache control
				// header and your other caching configurations.
				cache?: bool

				// How long client browsers should cache the response. Cloudflare
				// cache purge will not purge content cached on client browsers,
				// so high browser TTLs may lead to stale content.
				browser_ttl?: close({
					// The browser TTL (in seconds) if you choose the
					// "override_origin" mode.
					default?: number

					// The browser TTL mode.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin", "bypass".
					mode!: string
				})

				// The response content.
				content?: string

				// The content type header to set with the error response.
				// Available values: "application/json", "text/html",
				// "text/plain", "text/xml".
				content_type?: string

				// Which components of the request are included in or excluded
				// from the cache key Cloudflare uses to store the response in
				// cache.
				cache_key?: close({
					// Which components of the request are included or excluded from
					// the cache key.
					custom_key?: close({
						// Which cookies to include in the cache key.
						cookie?: close({
							// A list of cookies to check for the presence of. The presence of
							// these cookies is included in the cache key.
							check_presence?: [...string]

							// A list of cookies to include in the cache key.
							include?: [...string]
						})

						// Which headers to include in the cache key.
						header?: close({
							// A list of headers to check for the presence of. The presence of
							// these headers is included in the cache key.
							check_presence?: [...string]

							// A mapping of header names to a list of values. If a header is
							// present in the request and contains any of the values
							// provided, its value is included in the cache key.
							contains?: [string]: [...string]

							// Whether to exclude the origin header in the cache key.
							exclude_origin?: bool

							// A list of headers to include in the cache key.
							include?: [...string]
						})

						// How to use the host in the cache key.
						host?: close({
							// Whether to use the resolved host in the cache key.
							resolved?: bool
						})

						// Which query string parameters to include in or exclude from the
						// cache key.
						query_string?: close({
							// Which query string parameters to exclude from the cache key.
							exclude?: close({
								// Whether to exclude all query string parameters from the cache
								// key.
								all?: bool

								// A list of query string parameters to exclude from the cache
								// key.
								list?: [...string]
							})

							// Which query string parameters to include in the cache key.
							include?: close({
								// Whether to include all query string parameters in the cache
								// key.
								all?: bool

								// A list of query string parameters to include in the cache key.
								list?: [...string]
							})
						})

						// How to use characteristics of the request user agent in the
						// cache key.
						user?: close({
							// Whether to use the user agent's device type in the cache key.
							device_type?: bool

							// Whether to use the user agents's country in the cache key.
							geo?: bool

							// Whether to use the user agent's language in the cache key.
							lang?: bool
						})
					})

					// Whether to separate cached content based on the visitor's
					// device type.
					cache_by_device_type?: bool

					// Whether to protect from web cache deception attacks, while
					// allowing static assets to be cached.
					cache_deception_armor?: bool

					// Whether to treat requests with the same query parameters the
					// same, regardless of the order those query parameters are in.
					ignore_query_strings_order?: bool
				})

				// Whether to disable Cloudflare Apps.
				disable_apps?: bool

				// Settings to determine whether the request's response from
				// origin is eligible for Cache Reserve (requires a Cache Reserve
				// add-on plan).
				cache_reserve?: close({
					// Whether Cache Reserve is enabled. If this is true and a request
					// meets eligibility criteria, Cloudflare will write the resource
					// to Cache Reserve.
					eligible!: bool

					// The minimum file size eligible for storage in Cache Reserve.
					minimum_file_size?: number
				})

				// Whether to disable Real User Monitoring (RUM).
				disable_rum?: bool

				// Whether to disable Zaraz.
				disable_zaraz?: bool

				// Whether to enable Email Obfuscation.
				email_obfuscation?: bool

				// The cookie fields to log.
				cookie_fields?: matchN(1, [close({
					// The name of the cookie.
					name!: string
				}), [...close({
					// The name of the cookie.
					name!: string
				})]])

				// Whether to enable Cloudflare Fonts.
				fonts?: bool

				// A value to rewrite the HTTP host header to.
				host_header?: string

				// How long the Cloudflare edge network should cache the response.
				edge_ttl?: close({
					// The edge TTL (in seconds) if you choose the "override_origin"
					// mode.
					default?: number

					// The edge TTL mode.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin".
					mode!: string

					// A list of TTLs to apply to specific status codes or status code
					// ranges.
					status_code_ttl?: matchN(1, [close({
						// A range of status codes to apply the TTL to.
						status_code_range?: close({
							// The lower bound of the range.
							from?: number

							// The upper bound of the range.
							to?: number
						})

						// A single status code to apply the TTL to.
						status_code?: number

						// The time to cache the response for (in seconds). A value of 0
						// is equivalent to setting the cache control header with the
						// value "no-cache". A value of -1 is equivalent to setting the
						// cache control header with the value of "no-store".
						value!: number
					}), [...close({
						// A range of status codes to apply the TTL to.
						status_code_range?: close({
							// The lower bound of the range.
							from?: number

							// The upper bound of the range.
							to?: number
						})

						// A single status code to apply the TTL to.
						status_code?: number

						// The time to cache the response for (in seconds). A value of 0
						// is equivalent to setting the cache control header with the
						// value "no-cache". A value of -1 is equivalent to setting the
						// cache control header with the value of "no-store".
						value!: number
					})]])
				})

				// Whether to enable Hotlink Protection.
				hotlink_protection?: bool

				// A redirect based on a bulk list lookup.
				from_list?: close({
					// An expression that evaluates to the list lookup key.
					key!: string

					// The name of the list to match against.
					name!: string
				})

				// The ID of the ruleset to execute.
				id?: string

				// A redirect based on the request properties.
				from_value?: close({
					// Whether to keep the query string of the original request.
					preserve_query_string?: bool

					// The status code to use for the redirect.
					status_code?: number

					// A URL to redirect the request to.
					target_url!: close({
						// An expression that evaluates to a URL to redirect the request
						// to.
						expression?: string

						// A URL to redirect the request to.
						value?: string
					})
				})

				// A delta to change the score by, which can be either positive or
				// negative.
				increment?: number

				// A map of headers to rewrite.
				headers?: _

				// Whether to enable Mirage.
				mirage?: bool

				// The configuration to use for matched data logging.
				matched_data?: close({
					// The public key to encrypt matched data logs with.
					public_key!: string
				})

				// Whether to enable Opportunistic Encryption.
				opportunistic_encryption?: bool

				// Whether Cloudflare will aim to strictly adhere to RFC 7234.
				origin_cache_control?: bool

				// Whether to generate Cloudflare error pages for issues from the
				// origin server.
				origin_error_page_passthru?: bool

				// An origin to route to.
				origin?: close({
					// A resolved host to route to.
					host?: string

					// A destination port to route to.
					port?: number
				})

				// A list of phases to skip the execution of. This option is
				// incompatible with the rulesets option.
				// Available values: "ddos_l4", "ddos_l7", "http_config_settings",
				// "http_custom_errors", "http_log_custom_fields",
				// "http_ratelimit", "http_request_cache_settings",
				// "http_request_dynamic_redirect",
				// "http_request_firewall_custom",
				// "http_request_firewall_managed",
				// "http_request_late_transform", "http_request_origin",
				// "http_request_redirect", "http_request_sanitize",
				// "http_request_sbfm", "http_request_transform",
				// "http_response_compression", "http_response_firewall_managed",
				// "http_response_headers_transform", "magic_transit",
				// "magic_transit_ids_managed", "magic_transit_managed",
				// "magic_transit_ratelimit".
				phases?: [...string]

				// The Polish level to configure.
				// Available values: "off", "lossless", "lossy", "webp".
				polish?: string

				// A set of overrides to apply to the target ruleset.
				overrides?: close({
					// An action to override all rules with. This option has lower
					// precedence than rule and category overrides.
					action?: string

					// A list of category-level overrides. This option has the
					// second-highest precedence after rule-level overrides.
					categories?: matchN(1, [close({
						// The action to override rules in the category with.
						action?: string

						// The name of the category to override.
						category!: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category. This
						// option is only applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override rules in the category with.
						action?: string

						// The name of the category to override.
						category!: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category. This
						// option is only applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					})]])

					// Whether to enable execution of all rules. This option has lower
					// precedence than rule and category overrides.
					enabled?: bool

					// A sensitivity level to set for all rules. This option has lower
					// precedence than rule and category overrides and is only
					// applicable for DDoS phases.
					// Available values: "default", "medium", "low", "eoff".
					sensitivity_level?: string

					// A list of rule-level overrides. This option has the highest
					// precedence.
					rules?: matchN(1, [close({
						// The action to override the rule with.
						action?: string

						// Whether to enable execution of the rule.
						enabled?: bool

						// The ID of the rule to override.
						id!: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule. This option is only
						// applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override the rule with.
						action?: string

						// Whether to enable execution of the rule.
						enabled?: bool

						// The ID of the rule to override.
						id!: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule. This option is only
						// applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					})]])
				})

				// A list of legacy security products to skip the execution of.
				// Available values: "bic", "hot", "rateLimit", "securityLevel",
				// "uaBlock", "waf", "zoneLockdown".
				products?: [...string]

				// A timeout value between two successive read operations to use
				// for your origin server. Historically, the timeout value
				// between two read options from Cloudflare to an origin server
				// is 100 seconds. If you are attempting to reduce HTTP 524
				// errors because of timeouts from an origin server, try
				// increasing this timeout value.
				read_timeout?: number

				// The raw response fields to log.
				raw_response_fields?: matchN(1, [close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// The raw request fields to log.
				request_fields?: matchN(1, [close({
					// The name of the header.
					name!: string
				}), [...close({
					// The name of the header.
					name!: string
				})]])

				// Whether Cloudflare should respect strong ETag (entity tag)
				// headers. If false, Cloudflare converts strong ETag headers to
				// weak ETag headers.
				respect_strong_etags?: bool

				// Whether to enable Rocket Loader.
				rocket_loader?: bool

				// The response to show when the block is applied.
				response?: close({
					// The content to return.
					content!: string

					// The type of the content to return.
					content_type!: string

					// The status code to return.
					status_code!: number
				})

				// The transformed response fields to log.
				response_fields?: matchN(1, [close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// A mapping of ruleset IDs to a list of rule IDs in that ruleset
				// to skip the execution of. This option is incompatible with the
				// ruleset option.
				rules?: [string]: [...string]

				// A ruleset to skip the execution of. This option is incompatible
				// with the rulesets option.
				// Available values: "current".
				ruleset?: string

				// A list of ruleset IDs to skip the execution of. This option is
				// incompatible with the ruleset and phases options.
				rulesets?: [...string]

				// The Security Level to configure.
				// Available values: "off", "essentially_off", "low", "medium",
				// "high", "under_attack".
				security_level?: string

				// When to serve stale content from cache.
				serve_stale?: close({
					// Whether Cloudflare should disable serving stale content while
					// getting the latest content from the origin.
					disable_stale_while_updating?: bool
				})

				// Whether to enable Server-Side Excludes.
				server_side_excludes?: bool

				// A Server Name Indication (SNI) override.
				sni?: close({
					// A value to override the SNI to.
					value!: string
				})

				// The SSL level to configure.
				// Available values: "off", "flexible", "full", "strict",
				// "origin_pull".
				ssl?: string

				// The transformed request fields to log.
				transformed_request_fields?: matchN(1, [close({
					// The name of the header.
					name!: string
				}), [...close({
					// The name of the header.
					name!: string
				})]])

				// The status code to use for the error.
				status_code?: number

				// A URI rewrite.
				uri?: close({
					// A URI path rewrite.
					path?: close({
						// An expression that evaluates to a value to rewrite the URI path
						// to.
						expression?: string

						// A value to rewrite the URI path to.
						value?: string
					})

					// A URI query rewrite.
					query?: close({
						// An expression that evaluates to a value to rewrite the URI
						// query to.
						expression?: string

						// A value to rewrite the URI query to.
						value?: string
					})
				})

				// Whether to enable Signed Exchanges (SXG).
				sxg?: bool
			})

			// An informative description of the rule.
			description?: string

			// Whether the rule should be executed.
			enabled?: bool

			// Configuration for exposed credential checking.
			exposed_credential_check?: close({
				// An expression that selects the password used in the credentials
				// check.
				password_expression!: string

				// An expression that selects the user ID used in the credentials
				// check.
				username_expression!: string
			})

			// The expression defining which traffic will match the rule.
			expression!: string

			// The unique ID of the rule.
			id?: string

			// An object configuring the rule's logging behavior.
			logging?: close({
				// Whether to generate a log when the rule matches.
				enabled?: bool
			})

			// An object configuring the rule's rate limit behavior.
			ratelimit?: close({
				// Characteristics of the request on which the rate limit counter
				// will be incremented.
				characteristics!: [...string]

				// An expression that defines when the rate limit counter should
				// be incremented. It defaults to the same as the rule's
				// expression.
				counting_expression?: string

				// Period of time in seconds after which the action will be
				// disabled following its first execution.
				mitigation_timeout?: number

				// Period in seconds over which the counter is being incremented.
				period!: number

				// The threshold of requests per period after which the action
				// will be executed for the first time.
				requests_per_period?: number

				// Whether counting is only performed when an origin is reached.
				requests_to_origin?: bool

				// The score threshold per period for which the action will be
				// executed the first time.
				score_per_period?: number

				// A response header name provided by the origin, which contains
				// the score to increment rate limit counter with.
				score_response_header_name?: string
			})

			// The reference of the rule (the rule's ID by default).
			ref?: string
		}), [...close({
			// The action to perform when the rule matches.
			// Available values: "block", "challenge", "compress_response",
			// "ddos_dynamic", "execute", "force_connection_close",
			// "js_challenge", "log", "log_custom_field",
			// "managed_challenge", "redirect", "rewrite", "route", "score",
			// "serve_error", "set_cache_settings", "set_config", "skip".
			action!: string

			// The parameters configuring the rule's action.
			action_parameters?: close({
				// A list of additional ports that caching should be enabled on.
				additional_cacheable_ports?: [...number]

				// The name of a custom asset to serve as the response.
				asset_name?: string

				// Custom order for compression algorithms.
				algorithms?: matchN(1, [close({
					// Name of the compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				}), [...close({
					// Name of the compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				})]])

				// Which file extensions to minify automatically.
				autominify?: close({
					// Whether to minify CSS files.
					css?: bool

					// Whether to minify HTML files.
					html?: bool

					// Whether to minify JavaScript files.
					js?: bool
				})

				// Whether to enable Automatic HTTPS Rewrites.
				automatic_https_rewrites?: bool

				// Whether to enable Browser Integrity Check (BIC).
				bic?: bool

				// Whether the request's response from the origin is eligible for
				// caching. Caching itself will still depend on the cache control
				// header and your other caching configurations.
				cache?: bool

				// How long client browsers should cache the response. Cloudflare
				// cache purge will not purge content cached on client browsers,
				// so high browser TTLs may lead to stale content.
				browser_ttl?: close({
					// The browser TTL (in seconds) if you choose the
					// "override_origin" mode.
					default?: number

					// The browser TTL mode.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin", "bypass".
					mode!: string
				})

				// The response content.
				content?: string

				// The content type header to set with the error response.
				// Available values: "application/json", "text/html",
				// "text/plain", "text/xml".
				content_type?: string

				// Which components of the request are included in or excluded
				// from the cache key Cloudflare uses to store the response in
				// cache.
				cache_key?: close({
					// Which components of the request are included or excluded from
					// the cache key.
					custom_key?: close({
						// Which cookies to include in the cache key.
						cookie?: close({
							// A list of cookies to check for the presence of. The presence of
							// these cookies is included in the cache key.
							check_presence?: [...string]

							// A list of cookies to include in the cache key.
							include?: [...string]
						})

						// Which headers to include in the cache key.
						header?: close({
							// A list of headers to check for the presence of. The presence of
							// these headers is included in the cache key.
							check_presence?: [...string]

							// A mapping of header names to a list of values. If a header is
							// present in the request and contains any of the values
							// provided, its value is included in the cache key.
							contains?: [string]: [...string]

							// Whether to exclude the origin header in the cache key.
							exclude_origin?: bool

							// A list of headers to include in the cache key.
							include?: [...string]
						})

						// How to use the host in the cache key.
						host?: close({
							// Whether to use the resolved host in the cache key.
							resolved?: bool
						})

						// Which query string parameters to include in or exclude from the
						// cache key.
						query_string?: close({
							// Which query string parameters to exclude from the cache key.
							exclude?: close({
								// Whether to exclude all query string parameters from the cache
								// key.
								all?: bool

								// A list of query string parameters to exclude from the cache
								// key.
								list?: [...string]
							})

							// Which query string parameters to include in the cache key.
							include?: close({
								// Whether to include all query string parameters in the cache
								// key.
								all?: bool

								// A list of query string parameters to include in the cache key.
								list?: [...string]
							})
						})

						// How to use characteristics of the request user agent in the
						// cache key.
						user?: close({
							// Whether to use the user agent's device type in the cache key.
							device_type?: bool

							// Whether to use the user agents's country in the cache key.
							geo?: bool

							// Whether to use the user agent's language in the cache key.
							lang?: bool
						})
					})

					// Whether to separate cached content based on the visitor's
					// device type.
					cache_by_device_type?: bool

					// Whether to protect from web cache deception attacks, while
					// allowing static assets to be cached.
					cache_deception_armor?: bool

					// Whether to treat requests with the same query parameters the
					// same, regardless of the order those query parameters are in.
					ignore_query_strings_order?: bool
				})

				// Whether to disable Cloudflare Apps.
				disable_apps?: bool

				// Settings to determine whether the request's response from
				// origin is eligible for Cache Reserve (requires a Cache Reserve
				// add-on plan).
				cache_reserve?: close({
					// Whether Cache Reserve is enabled. If this is true and a request
					// meets eligibility criteria, Cloudflare will write the resource
					// to Cache Reserve.
					eligible!: bool

					// The minimum file size eligible for storage in Cache Reserve.
					minimum_file_size?: number
				})

				// Whether to disable Real User Monitoring (RUM).
				disable_rum?: bool

				// Whether to disable Zaraz.
				disable_zaraz?: bool

				// Whether to enable Email Obfuscation.
				email_obfuscation?: bool

				// The cookie fields to log.
				cookie_fields?: matchN(1, [close({
					// The name of the cookie.
					name!: string
				}), [...close({
					// The name of the cookie.
					name!: string
				})]])

				// Whether to enable Cloudflare Fonts.
				fonts?: bool

				// A value to rewrite the HTTP host header to.
				host_header?: string

				// How long the Cloudflare edge network should cache the response.
				edge_ttl?: close({
					// The edge TTL (in seconds) if you choose the "override_origin"
					// mode.
					default?: number

					// The edge TTL mode.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin".
					mode!: string

					// A list of TTLs to apply to specific status codes or status code
					// ranges.
					status_code_ttl?: matchN(1, [close({
						// A range of status codes to apply the TTL to.
						status_code_range?: close({
							// The lower bound of the range.
							from?: number

							// The upper bound of the range.
							to?: number
						})

						// A single status code to apply the TTL to.
						status_code?: number

						// The time to cache the response for (in seconds). A value of 0
						// is equivalent to setting the cache control header with the
						// value "no-cache". A value of -1 is equivalent to setting the
						// cache control header with the value of "no-store".
						value!: number
					}), [...close({
						// A range of status codes to apply the TTL to.
						status_code_range?: close({
							// The lower bound of the range.
							from?: number

							// The upper bound of the range.
							to?: number
						})

						// A single status code to apply the TTL to.
						status_code?: number

						// The time to cache the response for (in seconds). A value of 0
						// is equivalent to setting the cache control header with the
						// value "no-cache". A value of -1 is equivalent to setting the
						// cache control header with the value of "no-store".
						value!: number
					})]])
				})

				// Whether to enable Hotlink Protection.
				hotlink_protection?: bool

				// A redirect based on a bulk list lookup.
				from_list?: close({
					// An expression that evaluates to the list lookup key.
					key!: string

					// The name of the list to match against.
					name!: string
				})

				// The ID of the ruleset to execute.
				id?: string

				// A redirect based on the request properties.
				from_value?: close({
					// Whether to keep the query string of the original request.
					preserve_query_string?: bool

					// The status code to use for the redirect.
					status_code?: number

					// A URL to redirect the request to.
					target_url!: close({
						// An expression that evaluates to a URL to redirect the request
						// to.
						expression?: string

						// A URL to redirect the request to.
						value?: string
					})
				})

				// A delta to change the score by, which can be either positive or
				// negative.
				increment?: number

				// A map of headers to rewrite.
				headers?: _

				// Whether to enable Mirage.
				mirage?: bool

				// The configuration to use for matched data logging.
				matched_data?: close({
					// The public key to encrypt matched data logs with.
					public_key!: string
				})

				// Whether to enable Opportunistic Encryption.
				opportunistic_encryption?: bool

				// Whether Cloudflare will aim to strictly adhere to RFC 7234.
				origin_cache_control?: bool

				// Whether to generate Cloudflare error pages for issues from the
				// origin server.
				origin_error_page_passthru?: bool

				// An origin to route to.
				origin?: close({
					// A resolved host to route to.
					host?: string

					// A destination port to route to.
					port?: number
				})

				// A list of phases to skip the execution of. This option is
				// incompatible with the rulesets option.
				// Available values: "ddos_l4", "ddos_l7", "http_config_settings",
				// "http_custom_errors", "http_log_custom_fields",
				// "http_ratelimit", "http_request_cache_settings",
				// "http_request_dynamic_redirect",
				// "http_request_firewall_custom",
				// "http_request_firewall_managed",
				// "http_request_late_transform", "http_request_origin",
				// "http_request_redirect", "http_request_sanitize",
				// "http_request_sbfm", "http_request_transform",
				// "http_response_compression", "http_response_firewall_managed",
				// "http_response_headers_transform", "magic_transit",
				// "magic_transit_ids_managed", "magic_transit_managed",
				// "magic_transit_ratelimit".
				phases?: [...string]

				// The Polish level to configure.
				// Available values: "off", "lossless", "lossy", "webp".
				polish?: string

				// A set of overrides to apply to the target ruleset.
				overrides?: close({
					// An action to override all rules with. This option has lower
					// precedence than rule and category overrides.
					action?: string

					// A list of category-level overrides. This option has the
					// second-highest precedence after rule-level overrides.
					categories?: matchN(1, [close({
						// The action to override rules in the category with.
						action?: string

						// The name of the category to override.
						category!: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category. This
						// option is only applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override rules in the category with.
						action?: string

						// The name of the category to override.
						category!: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category. This
						// option is only applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					})]])

					// Whether to enable execution of all rules. This option has lower
					// precedence than rule and category overrides.
					enabled?: bool

					// A sensitivity level to set for all rules. This option has lower
					// precedence than rule and category overrides and is only
					// applicable for DDoS phases.
					// Available values: "default", "medium", "low", "eoff".
					sensitivity_level?: string

					// A list of rule-level overrides. This option has the highest
					// precedence.
					rules?: matchN(1, [close({
						// The action to override the rule with.
						action?: string

						// Whether to enable execution of the rule.
						enabled?: bool

						// The ID of the rule to override.
						id!: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule. This option is only
						// applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override the rule with.
						action?: string

						// Whether to enable execution of the rule.
						enabled?: bool

						// The ID of the rule to override.
						id!: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule. This option is only
						// applicable for DDoS phases.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					})]])
				})

				// A list of legacy security products to skip the execution of.
				// Available values: "bic", "hot", "rateLimit", "securityLevel",
				// "uaBlock", "waf", "zoneLockdown".
				products?: [...string]

				// A timeout value between two successive read operations to use
				// for your origin server. Historically, the timeout value
				// between two read options from Cloudflare to an origin server
				// is 100 seconds. If you are attempting to reduce HTTP 524
				// errors because of timeouts from an origin server, try
				// increasing this timeout value.
				read_timeout?: number

				// The raw response fields to log.
				raw_response_fields?: matchN(1, [close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// The raw request fields to log.
				request_fields?: matchN(1, [close({
					// The name of the header.
					name!: string
				}), [...close({
					// The name of the header.
					name!: string
				})]])

				// Whether Cloudflare should respect strong ETag (entity tag)
				// headers. If false, Cloudflare converts strong ETag headers to
				// weak ETag headers.
				respect_strong_etags?: bool

				// Whether to enable Rocket Loader.
				rocket_loader?: bool

				// The response to show when the block is applied.
				response?: close({
					// The content to return.
					content!: string

					// The type of the content to return.
					content_type!: string

					// The status code to return.
					status_code!: number
				})

				// The transformed response fields to log.
				response_fields?: matchN(1, [close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the response header.
					name!: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// A mapping of ruleset IDs to a list of rule IDs in that ruleset
				// to skip the execution of. This option is incompatible with the
				// ruleset option.
				rules?: [string]: [...string]

				// A ruleset to skip the execution of. This option is incompatible
				// with the rulesets option.
				// Available values: "current".
				ruleset?: string

				// A list of ruleset IDs to skip the execution of. This option is
				// incompatible with the ruleset and phases options.
				rulesets?: [...string]

				// The Security Level to configure.
				// Available values: "off", "essentially_off", "low", "medium",
				// "high", "under_attack".
				security_level?: string

				// When to serve stale content from cache.
				serve_stale?: close({
					// Whether Cloudflare should disable serving stale content while
					// getting the latest content from the origin.
					disable_stale_while_updating?: bool
				})

				// Whether to enable Server-Side Excludes.
				server_side_excludes?: bool

				// A Server Name Indication (SNI) override.
				sni?: close({
					// A value to override the SNI to.
					value!: string
				})

				// The SSL level to configure.
				// Available values: "off", "flexible", "full", "strict",
				// "origin_pull".
				ssl?: string

				// The transformed request fields to log.
				transformed_request_fields?: matchN(1, [close({
					// The name of the header.
					name!: string
				}), [...close({
					// The name of the header.
					name!: string
				})]])

				// The status code to use for the error.
				status_code?: number

				// A URI rewrite.
				uri?: close({
					// A URI path rewrite.
					path?: close({
						// An expression that evaluates to a value to rewrite the URI path
						// to.
						expression?: string

						// A value to rewrite the URI path to.
						value?: string
					})

					// A URI query rewrite.
					query?: close({
						// An expression that evaluates to a value to rewrite the URI
						// query to.
						expression?: string

						// A value to rewrite the URI query to.
						value?: string
					})
				})

				// Whether to enable Signed Exchanges (SXG).
				sxg?: bool
			})

			// An informative description of the rule.
			description?: string

			// Whether the rule should be executed.
			enabled?: bool

			// Configuration for exposed credential checking.
			exposed_credential_check?: close({
				// An expression that selects the password used in the credentials
				// check.
				password_expression!: string

				// An expression that selects the user ID used in the credentials
				// check.
				username_expression!: string
			})

			// The expression defining which traffic will match the rule.
			expression!: string

			// The unique ID of the rule.
			id?: string

			// An object configuring the rule's logging behavior.
			logging?: close({
				// Whether to generate a log when the rule matches.
				enabled?: bool
			})

			// An object configuring the rule's rate limit behavior.
			ratelimit?: close({
				// Characteristics of the request on which the rate limit counter
				// will be incremented.
				characteristics!: [...string]

				// An expression that defines when the rate limit counter should
				// be incremented. It defaults to the same as the rule's
				// expression.
				counting_expression?: string

				// Period of time in seconds after which the action will be
				// disabled following its first execution.
				mitigation_timeout?: number

				// Period in seconds over which the counter is being incremented.
				period!: number

				// The threshold of requests per period after which the action
				// will be executed for the first time.
				requests_per_period?: number

				// Whether counting is only performed when an origin is reached.
				requests_to_origin?: bool

				// The score threshold per period for which the action will be
				// executed the first time.
				score_per_period?: number

				// A response header name provided by the origin, which contains
				// the score to increment rate limit counter with.
				score_response_header_name?: string
			})

			// The reference of the rule (the rule's ID by default).
			ref?: string
		})]])

		// The human-readable name of the ruleset.
		name!: string

		// The phase of the ruleset.
		// Available values: "ddos_l4", "ddos_l7", "http_config_settings",
		// "http_custom_errors", "http_log_custom_fields",
		// "http_ratelimit", "http_request_cache_settings",
		// "http_request_dynamic_redirect",
		// "http_request_firewall_custom",
		// "http_request_firewall_managed",
		// "http_request_late_transform", "http_request_origin",
		// "http_request_redirect", "http_request_sanitize",
		// "http_request_sbfm", "http_request_transform",
		// "http_response_compression", "http_response_firewall_managed",
		// "http_response_headers_transform", "magic_transit",
		// "magic_transit_ids_managed", "magic_transit_managed",
		// "magic_transit_ratelimit".
		phase!: string

		// The version of the ruleset.
		version?: string

		// The unique ID of the zone.
		zone_id?: string
	})
}
