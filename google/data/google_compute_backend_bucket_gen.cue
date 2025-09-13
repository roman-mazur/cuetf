package data

#google_compute_backend_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_backend_bucket")
	close({
		// Cloud Storage bucket name.
		bucket_name?: string

		// Cloud CDN configuration for this Backend Bucket.
		cdn_policy?: [...close({
			bypass_cache_on_request_headers?: [...close({
				header_name?: string
			})]
			cache_key_policy?: [...close({
				include_http_headers?: [...string]
				query_string_whitelist?: [...string]
			})]
			cache_mode?:       string
			client_ttl?:       number
			default_ttl?:      number
			max_ttl?:          number
			negative_caching?: bool
			negative_caching_policy?: [...close({
				code?: number
				ttl?:  number
			})]
			request_coalescing?:           bool
			serve_while_stale?:            number
			signed_url_cache_max_age_sec?: number
		})]

		// Compress text responses using Brotli or gzip compression, based
		// on the client's Accept-Encoding header. Possible values:
		// ["AUTOMATIC", "DISABLED"]
		compression_mode?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Headers that the HTTP/S load balancer should add to proxied
		// responses.
		custom_response_headers?: [...string]

		// An optional textual description of the resource; provided by
		// the
		// client when the resource is created.
		description?: string

		// The security policy associated with this backend bucket.
		edge_security_policy?: string

		// If true, enable Cloud CDN for this BackendBucket.
		// Note: This cannot be set to true when loadBalancingScheme is
		// set to INTERNAL_MANAGED.
		enable_cdn?: bool
		id?:         string

		// The value can only be INTERNAL_MANAGED for cross-region
		// internal layer 7 load balancer.
		// If loadBalancingScheme is not specified, the backend bucket can
		// be used by classic global external load balancers, or global
		// application external load balancers, or both.
		// Important: CDN cannot be enabled (enableCdn cannot be set to
		// true) when loadBalancingScheme is set to INTERNAL_MANAGED.
		// Possible values: ["INTERNAL_MANAGED"]
		load_balancing_scheme?: string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and
		// match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
		// means
		// the first character must be a lowercase letter, and all
		// following
		// characters must be a dash, lowercase letter, or digit, except
		// the
		// last character, which cannot be a dash.
		name!: string

		// Additional params passed with the request, but not persisted as
		// part of resource payload
		params?: [...close({
			resource_manager_tags?: [string]: string
		})]
		project?:   string
		self_link?: string
	})
}
