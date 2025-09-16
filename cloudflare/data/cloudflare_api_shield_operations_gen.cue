package data

#cloudflare_api_shield_operations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_shield_operations")
	close({
		// Direction to order results.
		// Available values: "asc", "desc".
		direction?: string

		// Filter results to only include endpoints containing this
		// pattern.
		endpoint?: string

		// Add feature(s) to the results. The feature name that is given
		// here corresponds to the resulting feature object. Have a look
		// at the top-level object description for more details on the
		// specific meaning.
		feature?: [...string]

		// Filter results to only include the specified hosts.
		host?: [...string]

		// The items returned by the data source
		result?: matchN(1, [close({
			// The endpoint which can contain path parameter templates in
			// curly braces, each will be replaced from left to right with
			// {varN}, starting with {var1}, during insertion. This will
			// further be Cloudflare-normalized upon insertion. See:
			// https://developers.cloudflare.com/rules/normalization/how-it-works/.
			endpoint?: string

			// RFC3986-compliant host.
			host?: string

			// The HTTP method used to access the endpoint.
			// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT",
			// "DELETE", "CONNECT", "PATCH", "TRACE".
			method?:       string
			last_updated?: string

			// UUID.
			operation_id?: string
			features?: close({
				// API Routing settings on endpoint.
				api_routing?: close({
					last_updated?: string

					// Target route.
					route?: string
				})
				confidence_intervals?: close({
					last_updated?: string
					suggested_threshold?: close({
						confidence_intervals?: close({
							// Upper and lower bound for percentile estimate
							p90?: close({
								// Lower bound for percentile estimate
								lower?: number

								// Upper bound for percentile estimate
								upper?: number
							})

							// Upper and lower bound for percentile estimate
							p95?: close({
								// Lower bound for percentile estimate
								lower?: number

								// Upper bound for percentile estimate
								upper?: number
							})

							// Upper and lower bound for percentile estimate
							p99?: close({
								// Lower bound for percentile estimate
								lower?: number

								// Upper bound for percentile estimate
								upper?: number
							})
						})

						// Suggested threshold.
						mean?: number
					})
				})
				parameter_schemas?: close({
					last_updated?: string

					// An operation schema object containing a response.
					parameter_schemas?: close({
						// An array containing the learned parameter schemas.
						parameters?: [...string]

						// An empty response object. This field is required to yield a
						// valid operation schema.
						responses?: string
					})
				})
				schema_info?: close({
					// True if a Cloudflare-provided learned schema is available for
					// this endpoint.
					learned_available?: bool

					// Schema active on endpoint.
					active_schema?: close({
						// UUID.
						id?: string

						// True if schema is Cloudflare-provided.
						is_learned?: bool
						created_at?: string

						// Schema file name.
						name?: string
					})

					// Action taken on requests failing validation.
					// Available values: "none", "log", "block".
					mitigation_action?: string
				})
				thresholds?: close({
					// The total number of auth-ids seen across this calculation.
					auth_id_tokens?: number

					// The number of data points used for the threshold suggestion
					// calculation.
					data_points?: number

					// The p50 quantile of requests (in period_seconds).
					p50?:          number
					last_updated?: string

					// The p90 quantile of requests (in period_seconds).
					p90?: number

					// The p99 quantile of requests (in period_seconds).
					p99?: number

					// The period over which this threshold is suggested.
					period_seconds?: number

					// The estimated number of requests covered by these calculations.
					requests?: number

					// The suggested threshold in requests done by the same auth_id or
					// period_seconds.
					suggested_threshold?: number
				})
			})
		}), [...close({
			// The endpoint which can contain path parameter templates in
			// curly braces, each will be replaced from left to right with
			// {varN}, starting with {var1}, during insertion. This will
			// further be Cloudflare-normalized upon insertion. See:
			// https://developers.cloudflare.com/rules/normalization/how-it-works/.
			endpoint?: string

			// RFC3986-compliant host.
			host?: string

			// The HTTP method used to access the endpoint.
			// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT",
			// "DELETE", "CONNECT", "PATCH", "TRACE".
			method?:       string
			last_updated?: string

			// UUID.
			operation_id?: string
			features?: close({
				// API Routing settings on endpoint.
				api_routing?: close({
					last_updated?: string

					// Target route.
					route?: string
				})
				confidence_intervals?: close({
					last_updated?: string
					suggested_threshold?: close({
						confidence_intervals?: close({
							// Upper and lower bound for percentile estimate
							p90?: close({
								// Lower bound for percentile estimate
								lower?: number

								// Upper bound for percentile estimate
								upper?: number
							})

							// Upper and lower bound for percentile estimate
							p95?: close({
								// Lower bound for percentile estimate
								lower?: number

								// Upper bound for percentile estimate
								upper?: number
							})

							// Upper and lower bound for percentile estimate
							p99?: close({
								// Lower bound for percentile estimate
								lower?: number

								// Upper bound for percentile estimate
								upper?: number
							})
						})

						// Suggested threshold.
						mean?: number
					})
				})
				parameter_schemas?: close({
					last_updated?: string

					// An operation schema object containing a response.
					parameter_schemas?: close({
						// An array containing the learned parameter schemas.
						parameters?: [...string]

						// An empty response object. This field is required to yield a
						// valid operation schema.
						responses?: string
					})
				})
				schema_info?: close({
					// True if a Cloudflare-provided learned schema is available for
					// this endpoint.
					learned_available?: bool

					// Schema active on endpoint.
					active_schema?: close({
						// UUID.
						id?: string

						// True if schema is Cloudflare-provided.
						is_learned?: bool
						created_at?: string

						// Schema file name.
						name?: string
					})

					// Action taken on requests failing validation.
					// Available values: "none", "log", "block".
					mitigation_action?: string
				})
				thresholds?: close({
					// The total number of auth-ids seen across this calculation.
					auth_id_tokens?: number

					// The number of data points used for the threshold suggestion
					// calculation.
					data_points?: number

					// The p50 quantile of requests (in period_seconds).
					p50?:          number
					last_updated?: string

					// The p90 quantile of requests (in period_seconds).
					p90?: number

					// The p99 quantile of requests (in period_seconds).
					p99?: number

					// The period over which this threshold is suggested.
					period_seconds?: number

					// The estimated number of requests covered by these calculations.
					requests?: number

					// The suggested threshold in requests done by the same auth_id or
					// period_seconds.
					suggested_threshold?: number
				})
			})
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter results to only include the specified HTTP methods.
		method?: [...string]

		// Field to order by. When requesting a feature, the feature keys
		// are available for ordering as well, e.g.,
		// `thresholds.suggested_threshold`.
		// Available values: "method", "host", "endpoint",
		// "thresholds.$key".
		order?: string

		// Identifier.
		zone_id!: string
	})
}
