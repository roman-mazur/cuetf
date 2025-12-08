package data

#cloudflare_api_shield_discovery_operations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_api_shield_discovery_operations")
	close({
		// When `true`, only return API Discovery results that are not
		// saved into API Shield Endpoint Management
		diff?: bool

		// Direction to order results.
		// Available values: "asc", "desc".
		direction?: string

		// Filter results to only include endpoints containing this
		// pattern.
		endpoint?: string

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

			// UUID.
			id?: string
			features?: close({
				traffic_stats?: close({
					last_updated?: string

					// The period in seconds these statistics were computed over
					period_seconds?: number

					// The average number of requests seen during this period
					requests?: number
				})
			})

			// The HTTP method used to access the endpoint.
			// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT",
			// "DELETE", "CONNECT", "PATCH", "TRACE".
			method?:       string
			last_updated?: string

			// API discovery engine(s) that discovered this operation
			origin?: [...string]

			// State of operation in API Discovery
			// * `review` - Operation is not saved into API Shield Endpoint
			// Management
			// * `saved` - Operation is saved into API Shield Endpoint
			// Management
			// * `ignored` - Operation is marked as ignored
			// Available values: "review", "saved", "ignored".
			state?: string
		}), [...close({
			// The endpoint which can contain path parameter templates in
			// curly braces, each will be replaced from left to right with
			// {varN}, starting with {var1}, during insertion. This will
			// further be Cloudflare-normalized upon insertion. See:
			// https://developers.cloudflare.com/rules/normalization/how-it-works/.
			endpoint?: string

			// RFC3986-compliant host.
			host?: string

			// UUID.
			id?: string
			features?: close({
				traffic_stats?: close({
					last_updated?: string

					// The period in seconds these statistics were computed over
					period_seconds?: number

					// The average number of requests seen during this period
					requests?: number
				})
			})

			// The HTTP method used to access the endpoint.
			// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT",
			// "DELETE", "CONNECT", "PATCH", "TRACE".
			method?:       string
			last_updated?: string

			// API discovery engine(s) that discovered this operation
			origin?: [...string]

			// State of operation in API Discovery
			// * `review` - Operation is not saved into API Shield Endpoint
			// Management
			// * `saved` - Operation is saved into API Shield Endpoint
			// Management
			// * `ignored` - Operation is marked as ignored
			// Available values: "review", "saved", "ignored".
			state?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter results to only include the specified HTTP methods.
		method?: [...string]

		// Field to order by
		// Available values: "host", "method", "endpoint",
		// "traffic_stats.requests", "traffic_stats.last_updated".
		order?: string

		// Filter results to only include discovery results sourced from a
		// particular discovery engine
		// * `ML` - Discovered operations that were sourced using ML API
		// Discovery
		// * `SessionIdentifier` - Discovered operations that were sourced
		// using Session Identifier API Discovery
		// Available values: "ML", "SessionIdentifier", "LabelDiscovery".
		origin?: string

		// Filter results to only include discovery results in a
		// particular state. States are as follows
		// * `review` - Discovered operations that are not saved into API
		// Shield Endpoint Management
		// * `saved` - Discovered operations that are already saved into
		// API Shield Endpoint Management
		// * `ignored` - Discovered operations that have been marked as
		// ignored
		// Available values: "review", "saved", "ignored".
		state?: string

		// Identifier.
		zone_id!: string
	})
}
