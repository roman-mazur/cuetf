package data

#cloudflare_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_ruleset")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// An informative description of the ruleset.
		description?: string

		// The unique ID of the ruleset.
		id?: string

		// The kind of the ruleset.
		// Available values: "managed", "custom", "root", "zone".
		kind?: string

		// The human-readable name of the ruleset.
		name?: string

		// The list of rules in the ruleset.
		rules?: matchN(1, [close({
			// The parameters configuring the rule's action.
			action_parameters?: close({
				// Custom order for compression algorithms.
				algorithms?: matchN(1, [close({
					// Name of compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				}), [...close({
					// Name of compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				})]])

				// List of additional ports that caching can be enabled on.
				additional_cacheable_ports?: [...number]

				// Select which file extensions to minify automatically.
				autominify?: close({
					// Minify CSS files.
					css?: bool

					// Minify HTML files.
					html?: bool

					// Minify JS files.
					js?: bool
				})

				// Specify how long client browsers should cache the response.
				// Cloudflare cache purge will not purge content cached on client
				// browsers, so high browser TTLs may lead to stale content.
				browser_ttl?: close({
					// The TTL (in seconds) if you choose override_origin mode.
					default?: number

					// Determines which browser ttl mode to use.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin", "bypass".
					mode?: string
				})

				// Turn on or off Automatic HTTPS Rewrites.
				automatic_https_rewrites?: bool

				// Turn on or off Browser Integrity Check.
				bic?: bool

				// Mark whether the request’s response from origin is eligible for
				// caching. Caching itself will still depend on the cache-control
				// header and your other caching configurations.
				cache?: bool

				// Define which components of the request are included or excluded
				// from the cache key Cloudflare uses to store the response in
				// cache.
				cache_key?: close({
					// Customize which components of the request are included or
					// excluded from the cache key.
					custom_key?: close({
						// The cookies to include in building the cache key.
						cookie?: close({
							// Checks for the presence of these cookie names. The presence of
							// these cookies is used in building the cache key.
							check_presence?: [...string]

							// Include these cookies' names and their values.
							include?: [...string]
						})

						// The header names and values to include in building the cache
						// key.
						header?: close({
							// Checks for the presence of these header names. The presence of
							// these headers is used in building the cache key.
							check_presence?: [...string]

							// For each header name and list of values combination, check if
							// the request header contains any of the values provided. The
							// presence of the request header and whether any of the values
							// provided are contained in the request header value is used in
							// building the cache key.
							contains?: [string]: [...string]

							// Whether or not to include the origin header. A value of true
							// will exclude the origin header in the cache key.
							exclude_origin?: bool

							// Include these headers' names and their values.
							include?: [...string]
						})

						// Whether to use the original host or the resolved host in the
						// cache key.
						host?: close({
							// Use the resolved host in the cache key. A value of true will
							// use the resolved host, while a value or false will use the
							// original host.
							resolved?: bool
						})

						// Use the presence of parameters in the query string to build the
						// cache key.
						query_string?: close({
							// A list of query string parameters NOT used to build the cache
							// key. All parameters present in the request but missing in this
							// list will be used to build the cache key.
							exclude?: close({
								// Determines whether to exclude all query string parameters from
								// the cache key.
								all?: bool
								list?: [...string]
							})

							// A list of query string parameters used to build the cache key.
							include?: close({
								// Determines whether to include all query string parameters in
								// the cache key.
								all?: bool
								list?: [...string]
							})
						})

						// Characteristics of the request user agent used in building the
						// cache key.
						user?: close({
							// Use the user agent's device type in the cache key.
							device_type?: bool

							// Use the user agents's country in the cache key.
							geo?: bool

							// Use the user agent's language in the cache key.
							lang?: bool
						})
					})

					// Separate cached content based on the visitor’s device type.
					cache_by_device_type?: bool

					// Protect from web cache deception attacks while allowing static
					// assets to be cached.
					cache_deception_armor?: bool

					// Treat requests with the same query parameters the same,
					// regardless of the order those query parameters are in. A value
					// of true ignores the query strings' order.
					ignore_query_strings_order?: bool
				})

				// Error response content.
				content?: string

				// Content-type header to set with the response.
				// Available values: "application/json", "text/xml", "text/plain",
				// "text/html".
				content_type?: string

				// Mark whether the request's response from origin is eligible for
				// Cache Reserve (requires a Cache Reserve add-on plan).
				cache_reserve?: close({
					// Determines whether cache reserve is enabled. If this is true
					// and a request meets eligibility criteria, Cloudflare will
					// write the resource to cache reserve.
					eligible?: bool

					// The minimum file size eligible for store in cache reserve.
					minimum_file_size?: number
				})

				// Turn off all active Cloudflare Apps.
				disable_apps?: bool

				// Turn off Real User Monitoring (RUM).
				disable_rum?: bool

				// Turn off Zaraz.
				disable_zaraz?: bool

				// The cookie fields to log.
				cookie_fields?: matchN(1, [close({
					// The name of the field.
					name?: string
				}), [...close({
					// The name of the field.
					name?: string
				})]])

				// Turn on or off Email Obfuscation.
				email_obfuscation?: bool

				// Turn on or off Cloudflare Fonts.
				fonts?: bool

				// TTL (Time to Live) specifies the maximum time to cache a
				// resource in the Cloudflare edge network.
				edge_ttl?: close({
					// The TTL (in seconds) if you choose override_origin mode.
					default?: number

					// Edge TTL options.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin".
					mode?: string

					// List of single status codes, or status code ranges to apply the
					// selected mode.
					status_code_ttl?: matchN(1, [close({
						// Set the TTL for responses with this specific status code.
						status_code_value?: number

						// The range of status codes used to apply the selected mode.
						status_code_range?: close({
							// Response status code lower bound.
							from?: number

							// Response status code upper bound.
							to?: number
						})

						// Time to cache a response (in seconds). A value of 0 is
						// equivalent to setting the Cache-Control header with the value
						// "no-cache". A value of -1 is equivalent to setting
						// Cache-Control header with the value of "no-store".
						value?: number
					}), [...close({
						// Set the TTL for responses with this specific status code.
						status_code_value?: number

						// The range of status codes used to apply the selected mode.
						status_code_range?: close({
							// Response status code lower bound.
							from?: number

							// Response status code upper bound.
							to?: number
						})

						// Time to cache a response (in seconds). A value of 0 is
						// equivalent to setting the Cache-Control header with the value
						// "no-cache". A value of -1 is equivalent to setting
						// Cache-Control header with the value of "no-store".
						value?: number
					})]])
				})

				// Rewrite the HTTP Host header.
				host_header?: string

				// Serve a redirect based on a bulk list lookup.
				from_list?: close({
					// Expression that evaluates to the list lookup key.
					key?: string

					// The name of the list to match against.
					name?: string
				})

				// Turn on or off the Hotlink Protection.
				hotlink_protection?: bool

				// Serve a redirect based on the request properties.
				from_value?: close({
					// Keep the query string of the original request.
					preserve_query_string?: bool

					// The status code to be used for the redirect.
					// Available values: 301, 302, 303, 307, 308.
					status_code?: number

					// The URL to redirect the request to.
					target_url?: close({
						// An expression to evaluate to get the URL to redirect the
						// request to.
						expression?: string

						// The URL to redirect the request to.
						value?: string
					})
				})

				// The ID of the ruleset to execute.
				id?: string

				// Map of request headers to modify.
				headers?: _

				// Increment contains the delta to change the score and can be
				// either positive or negative.
				increment?: number

				// Turn on or off Mirage.
				mirage?: bool

				// Turn on or off Opportunistic Encryption.
				opportunistic_encryption?: bool

				// The configuration to use for matched data logging.
				matched_data?: close({
					// The public key to encrypt matched data logs with.
					public_key?: string
				})

				// When enabled, Cloudflare will aim to strictly adhere to RFC
				// 7234.
				origin_cache_control?: bool

				// Generate Cloudflare error pages from issues sent from the
				// origin server. When on, error pages will trigger for issues
				// from the origin.
				origin_error_page_passthru?: bool

				// Override the IP/TCP destination.
				origin?: close({
					// Override the resolved hostname.
					host?: string

					// Override the destination port.
					port?: number
				})

				// A phase to skip the execution of. This property is only
				// compatible with products.
				// Available values: "current".
				phase?: string

				// A list of phases to skip the execution of. This option is
				// incompatible with the rulesets option.
				phases?: [...string]

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
						category?: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override rules in the category with.
						action?: string

						// The name of the category to override.
						category?: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category.
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
						id?: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override the rule with.
						action?: string

						// Whether to enable execution of the rule.
						enabled?: bool

						// The ID of the rule to override.
						id?: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					})]])
				})

				// Configure the Polish level.
				// Available values: "off", "lossless", "lossy", "webp".
				polish?: string

				// A list of legacy security products to skip the execution of.
				products?: [...string]

				// The raw response fields to log.
				raw_response_fields?: matchN(1, [close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// The raw request fields to log.
				request_fields?: matchN(1, [close({
					// The name of the field.
					name?: string
				}), [...close({
					// The name of the field.
					name?: string
				})]])

				// Define a timeout value between two successive read operations
				// to your origin server. Historically, the timeout value between
				// two read options from Cloudflare to an origin server is 100
				// seconds. If you are attempting to reduce HTTP 524 errors
				// because of timeouts from an origin server, try increasing this
				// timeout value.
				read_timeout?: number

				// Specify whether or not Cloudflare should respect strong ETag
				// (entity tag) headers. When off, Cloudflare converts strong
				// ETag headers to weak ETag headers.
				respect_strong_etags?: bool

				// The response to show when the block is applied.
				response?: close({
					// The content to return.
					content?: string

					// The type of the content to return.
					content_type?: string

					// The status code to return.
					status_code?: number
				})

				// The transformed response fields to log.
				response_fields?: matchN(1, [close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// Turn on or off Rocket Loader.
				rocket_loader?: bool

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

				// Configure the Security Level.
				// Available values: "off", "essentially_off", "low", "medium",
				// "high", "under_attack".
				security_level?: string

				// Define if Cloudflare should serve stale content while getting
				// the latest content from the origin. If on, Cloudflare will not
				// serve stale content while getting the latest content from the
				// origin.
				serve_stale?: close({
					// Defines whether Cloudflare should serve stale content while
					// updating. If true, Cloudflare will not serve stale content
					// while getting the latest content from the origin.
					disable_stale_while_updating?: bool
				})

				// Turn on or off Server Side Excludes.
				server_side_excludes?: bool

				// Override the Server Name Indication (SNI).
				sni?: close({
					// The SNI override.
					value?: string
				})

				// The transformed request fields to log.
				transformed_request_fields?: matchN(1, [close({
					// The name of the field.
					name?: string
				}), [...close({
					// The name of the field.
					name?: string
				})]])

				// Configure the SSL level.
				// Available values: "off", "flexible", "full", "strict",
				// "origin_pull".
				ssl?: string

				// The status code to use for the error.
				status_code?: number

				// Turn on or off Signed Exchanges (SXG).
				sxg?: bool

				// URI to rewrite the request to.
				uri?: close({
					// Path portion rewrite.
					path?: close({
						// Expression to evaluate for the replacement value.
						expression?: string

						// Predefined replacement value.
						value?: string
					})

					// Query portion rewrite.
					query?: close({
						// Expression to evaluate for the replacement value.
						expression?: string

						// Predefined replacement value.
						value?: string
					})
				})
			})

			// The action to perform when the rule matches.
			// Available values: "block", "challenge", "compress_response",
			// "execute", "js_challenge", "log", "managed_challenge",
			// "redirect", "rewrite", "route", "score", "serve_error",
			// "set_config", "skip", "set_cache_settings",
			// "log_custom_field", "ddos_dynamic", "force_connection_close".
			action?: string

			// The categories of the rule.
			categories?: [...string]

			// Configure checks for exposed credentials.
			exposed_credential_check?: close({
				// Expression that selects the password used in the credentials
				// check.
				password_expression?: string

				// Expression that selects the user ID used in the credentials
				// check.
				username_expression?: string
			})

			// An informative description of the rule.
			description?: string

			// An object configuring the rule's logging behavior.
			logging?: close({
				// Whether to generate a log when the rule matches.
				enabled?: bool
			})

			// Whether the rule should be executed.
			enabled?: bool

			// An object configuring the rule's ratelimit behavior.
			ratelimit?: close({
				// Characteristics of the request on which the ratelimiter counter
				// will be incremented.
				characteristics?: [...string]

				// Defines when the ratelimit counter should be incremented. It is
				// optional and defaults to the same as the rule's expression.
				counting_expression?: string

				// Period of time in seconds after which the action will be
				// disabled following its first execution.
				mitigation_timeout?: number

				// Period in seconds over which the counter is being incremented.
				period?: number

				// The threshold of requests per period after which the action
				// will be executed for the first time.
				requests_per_period?: number

				// Defines if ratelimit counting is only done when an origin is
				// reached.
				requests_to_origin?: bool

				// The score threshold per period for which the action will be
				// executed the first time.
				score_per_period?: number

				// The response header name provided by the origin which should
				// contain the score to increment ratelimit counter on.
				score_response_header_name?: string
			})

			// The expression defining which traffic will match the rule.
			expression?: string

			// The unique ID of the rule.
			id?: string

			// The reference of the rule (the rule ID by default).
			ref?: string
		}), [...close({
			// The parameters configuring the rule's action.
			action_parameters?: close({
				// Custom order for compression algorithms.
				algorithms?: matchN(1, [close({
					// Name of compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				}), [...close({
					// Name of compression algorithm to enable.
					// Available values: "none", "auto", "default", "gzip", "brotli",
					// "zstd".
					name?: string
				})]])

				// List of additional ports that caching can be enabled on.
				additional_cacheable_ports?: [...number]

				// Select which file extensions to minify automatically.
				autominify?: close({
					// Minify CSS files.
					css?: bool

					// Minify HTML files.
					html?: bool

					// Minify JS files.
					js?: bool
				})

				// Specify how long client browsers should cache the response.
				// Cloudflare cache purge will not purge content cached on client
				// browsers, so high browser TTLs may lead to stale content.
				browser_ttl?: close({
					// The TTL (in seconds) if you choose override_origin mode.
					default?: number

					// Determines which browser ttl mode to use.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin", "bypass".
					mode?: string
				})

				// Turn on or off Automatic HTTPS Rewrites.
				automatic_https_rewrites?: bool

				// Turn on or off Browser Integrity Check.
				bic?: bool

				// Mark whether the request’s response from origin is eligible for
				// caching. Caching itself will still depend on the cache-control
				// header and your other caching configurations.
				cache?: bool

				// Define which components of the request are included or excluded
				// from the cache key Cloudflare uses to store the response in
				// cache.
				cache_key?: close({
					// Customize which components of the request are included or
					// excluded from the cache key.
					custom_key?: close({
						// The cookies to include in building the cache key.
						cookie?: close({
							// Checks for the presence of these cookie names. The presence of
							// these cookies is used in building the cache key.
							check_presence?: [...string]

							// Include these cookies' names and their values.
							include?: [...string]
						})

						// The header names and values to include in building the cache
						// key.
						header?: close({
							// Checks for the presence of these header names. The presence of
							// these headers is used in building the cache key.
							check_presence?: [...string]

							// For each header name and list of values combination, check if
							// the request header contains any of the values provided. The
							// presence of the request header and whether any of the values
							// provided are contained in the request header value is used in
							// building the cache key.
							contains?: [string]: [...string]

							// Whether or not to include the origin header. A value of true
							// will exclude the origin header in the cache key.
							exclude_origin?: bool

							// Include these headers' names and their values.
							include?: [...string]
						})

						// Whether to use the original host or the resolved host in the
						// cache key.
						host?: close({
							// Use the resolved host in the cache key. A value of true will
							// use the resolved host, while a value or false will use the
							// original host.
							resolved?: bool
						})

						// Use the presence of parameters in the query string to build the
						// cache key.
						query_string?: close({
							// A list of query string parameters NOT used to build the cache
							// key. All parameters present in the request but missing in this
							// list will be used to build the cache key.
							exclude?: close({
								// Determines whether to exclude all query string parameters from
								// the cache key.
								all?: bool
								list?: [...string]
							})

							// A list of query string parameters used to build the cache key.
							include?: close({
								// Determines whether to include all query string parameters in
								// the cache key.
								all?: bool
								list?: [...string]
							})
						})

						// Characteristics of the request user agent used in building the
						// cache key.
						user?: close({
							// Use the user agent's device type in the cache key.
							device_type?: bool

							// Use the user agents's country in the cache key.
							geo?: bool

							// Use the user agent's language in the cache key.
							lang?: bool
						})
					})

					// Separate cached content based on the visitor’s device type.
					cache_by_device_type?: bool

					// Protect from web cache deception attacks while allowing static
					// assets to be cached.
					cache_deception_armor?: bool

					// Treat requests with the same query parameters the same,
					// regardless of the order those query parameters are in. A value
					// of true ignores the query strings' order.
					ignore_query_strings_order?: bool
				})

				// Error response content.
				content?: string

				// Content-type header to set with the response.
				// Available values: "application/json", "text/xml", "text/plain",
				// "text/html".
				content_type?: string

				// Mark whether the request's response from origin is eligible for
				// Cache Reserve (requires a Cache Reserve add-on plan).
				cache_reserve?: close({
					// Determines whether cache reserve is enabled. If this is true
					// and a request meets eligibility criteria, Cloudflare will
					// write the resource to cache reserve.
					eligible?: bool

					// The minimum file size eligible for store in cache reserve.
					minimum_file_size?: number
				})

				// Turn off all active Cloudflare Apps.
				disable_apps?: bool

				// Turn off Real User Monitoring (RUM).
				disable_rum?: bool

				// Turn off Zaraz.
				disable_zaraz?: bool

				// The cookie fields to log.
				cookie_fields?: matchN(1, [close({
					// The name of the field.
					name?: string
				}), [...close({
					// The name of the field.
					name?: string
				})]])

				// Turn on or off Email Obfuscation.
				email_obfuscation?: bool

				// Turn on or off Cloudflare Fonts.
				fonts?: bool

				// TTL (Time to Live) specifies the maximum time to cache a
				// resource in the Cloudflare edge network.
				edge_ttl?: close({
					// The TTL (in seconds) if you choose override_origin mode.
					default?: number

					// Edge TTL options.
					// Available values: "respect_origin", "bypass_by_default",
					// "override_origin".
					mode?: string

					// List of single status codes, or status code ranges to apply the
					// selected mode.
					status_code_ttl?: matchN(1, [close({
						// Set the TTL for responses with this specific status code.
						status_code_value?: number

						// The range of status codes used to apply the selected mode.
						status_code_range?: close({
							// Response status code lower bound.
							from?: number

							// Response status code upper bound.
							to?: number
						})

						// Time to cache a response (in seconds). A value of 0 is
						// equivalent to setting the Cache-Control header with the value
						// "no-cache". A value of -1 is equivalent to setting
						// Cache-Control header with the value of "no-store".
						value?: number
					}), [...close({
						// Set the TTL for responses with this specific status code.
						status_code_value?: number

						// The range of status codes used to apply the selected mode.
						status_code_range?: close({
							// Response status code lower bound.
							from?: number

							// Response status code upper bound.
							to?: number
						})

						// Time to cache a response (in seconds). A value of 0 is
						// equivalent to setting the Cache-Control header with the value
						// "no-cache". A value of -1 is equivalent to setting
						// Cache-Control header with the value of "no-store".
						value?: number
					})]])
				})

				// Rewrite the HTTP Host header.
				host_header?: string

				// Serve a redirect based on a bulk list lookup.
				from_list?: close({
					// Expression that evaluates to the list lookup key.
					key?: string

					// The name of the list to match against.
					name?: string
				})

				// Turn on or off the Hotlink Protection.
				hotlink_protection?: bool

				// Serve a redirect based on the request properties.
				from_value?: close({
					// Keep the query string of the original request.
					preserve_query_string?: bool

					// The status code to be used for the redirect.
					// Available values: 301, 302, 303, 307, 308.
					status_code?: number

					// The URL to redirect the request to.
					target_url?: close({
						// An expression to evaluate to get the URL to redirect the
						// request to.
						expression?: string

						// The URL to redirect the request to.
						value?: string
					})
				})

				// The ID of the ruleset to execute.
				id?: string

				// Map of request headers to modify.
				headers?: _

				// Increment contains the delta to change the score and can be
				// either positive or negative.
				increment?: number

				// Turn on or off Mirage.
				mirage?: bool

				// Turn on or off Opportunistic Encryption.
				opportunistic_encryption?: bool

				// The configuration to use for matched data logging.
				matched_data?: close({
					// The public key to encrypt matched data logs with.
					public_key?: string
				})

				// When enabled, Cloudflare will aim to strictly adhere to RFC
				// 7234.
				origin_cache_control?: bool

				// Generate Cloudflare error pages from issues sent from the
				// origin server. When on, error pages will trigger for issues
				// from the origin.
				origin_error_page_passthru?: bool

				// Override the IP/TCP destination.
				origin?: close({
					// Override the resolved hostname.
					host?: string

					// Override the destination port.
					port?: number
				})

				// A phase to skip the execution of. This property is only
				// compatible with products.
				// Available values: "current".
				phase?: string

				// A list of phases to skip the execution of. This option is
				// incompatible with the rulesets option.
				phases?: [...string]

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
						category?: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override rules in the category with.
						action?: string

						// The name of the category to override.
						category?: string

						// Whether to enable execution of rules in the category.
						enabled?: bool

						// The sensitivity level to use for rules in the category.
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
						id?: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					}), [...close({
						// The action to override the rule with.
						action?: string

						// Whether to enable execution of the rule.
						enabled?: bool

						// The ID of the rule to override.
						id?: string

						// The score threshold to use for the rule.
						score_threshold?: number

						// The sensitivity level to use for the rule.
						// Available values: "default", "medium", "low", "eoff".
						sensitivity_level?: string
					})]])
				})

				// Configure the Polish level.
				// Available values: "off", "lossless", "lossy", "webp".
				polish?: string

				// A list of legacy security products to skip the execution of.
				products?: [...string]

				// The raw response fields to log.
				raw_response_fields?: matchN(1, [close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// The raw request fields to log.
				request_fields?: matchN(1, [close({
					// The name of the field.
					name?: string
				}), [...close({
					// The name of the field.
					name?: string
				})]])

				// Define a timeout value between two successive read operations
				// to your origin server. Historically, the timeout value between
				// two read options from Cloudflare to an origin server is 100
				// seconds. If you are attempting to reduce HTTP 524 errors
				// because of timeouts from an origin server, try increasing this
				// timeout value.
				read_timeout?: number

				// Specify whether or not Cloudflare should respect strong ETag
				// (entity tag) headers. When off, Cloudflare converts strong
				// ETag headers to weak ETag headers.
				respect_strong_etags?: bool

				// The response to show when the block is applied.
				response?: close({
					// The content to return.
					content?: string

					// The type of the content to return.
					content_type?: string

					// The status code to return.
					status_code?: number
				})

				// The transformed response fields to log.
				response_fields?: matchN(1, [close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				}), [...close({
					// The name of the field.
					name?: string

					// Whether to log duplicate values of the same header.
					preserve_duplicates?: bool
				})]])

				// Turn on or off Rocket Loader.
				rocket_loader?: bool

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

				// Configure the Security Level.
				// Available values: "off", "essentially_off", "low", "medium",
				// "high", "under_attack".
				security_level?: string

				// Define if Cloudflare should serve stale content while getting
				// the latest content from the origin. If on, Cloudflare will not
				// serve stale content while getting the latest content from the
				// origin.
				serve_stale?: close({
					// Defines whether Cloudflare should serve stale content while
					// updating. If true, Cloudflare will not serve stale content
					// while getting the latest content from the origin.
					disable_stale_while_updating?: bool
				})

				// Turn on or off Server Side Excludes.
				server_side_excludes?: bool

				// Override the Server Name Indication (SNI).
				sni?: close({
					// The SNI override.
					value?: string
				})

				// The transformed request fields to log.
				transformed_request_fields?: matchN(1, [close({
					// The name of the field.
					name?: string
				}), [...close({
					// The name of the field.
					name?: string
				})]])

				// Configure the SSL level.
				// Available values: "off", "flexible", "full", "strict",
				// "origin_pull".
				ssl?: string

				// The status code to use for the error.
				status_code?: number

				// Turn on or off Signed Exchanges (SXG).
				sxg?: bool

				// URI to rewrite the request to.
				uri?: close({
					// Path portion rewrite.
					path?: close({
						// Expression to evaluate for the replacement value.
						expression?: string

						// Predefined replacement value.
						value?: string
					})

					// Query portion rewrite.
					query?: close({
						// Expression to evaluate for the replacement value.
						expression?: string

						// Predefined replacement value.
						value?: string
					})
				})
			})

			// The action to perform when the rule matches.
			// Available values: "block", "challenge", "compress_response",
			// "execute", "js_challenge", "log", "managed_challenge",
			// "redirect", "rewrite", "route", "score", "serve_error",
			// "set_config", "skip", "set_cache_settings",
			// "log_custom_field", "ddos_dynamic", "force_connection_close".
			action?: string

			// The categories of the rule.
			categories?: [...string]

			// Configure checks for exposed credentials.
			exposed_credential_check?: close({
				// Expression that selects the password used in the credentials
				// check.
				password_expression?: string

				// Expression that selects the user ID used in the credentials
				// check.
				username_expression?: string
			})

			// An informative description of the rule.
			description?: string

			// An object configuring the rule's logging behavior.
			logging?: close({
				// Whether to generate a log when the rule matches.
				enabled?: bool
			})

			// Whether the rule should be executed.
			enabled?: bool

			// An object configuring the rule's ratelimit behavior.
			ratelimit?: close({
				// Characteristics of the request on which the ratelimiter counter
				// will be incremented.
				characteristics?: [...string]

				// Defines when the ratelimit counter should be incremented. It is
				// optional and defaults to the same as the rule's expression.
				counting_expression?: string

				// Period of time in seconds after which the action will be
				// disabled following its first execution.
				mitigation_timeout?: number

				// Period in seconds over which the counter is being incremented.
				period?: number

				// The threshold of requests per period after which the action
				// will be executed for the first time.
				requests_per_period?: number

				// Defines if ratelimit counting is only done when an origin is
				// reached.
				requests_to_origin?: bool

				// The score threshold per period for which the action will be
				// executed the first time.
				score_per_period?: number

				// The response header name provided by the origin which should
				// contain the score to increment ratelimit counter on.
				score_response_header_name?: string
			})

			// The expression defining which traffic will match the rule.
			expression?: string

			// The unique ID of the rule.
			id?: string

			// The reference of the rule (the rule ID by default).
			ref?: string
		})]])

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
		phase?: string

		// The unique ID of the ruleset.
		ruleset_id?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
