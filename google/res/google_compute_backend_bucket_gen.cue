package res

import "list"

#google_compute_backend_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_backend_bucket")
	close({
		// Cloud Storage bucket name.
		bucket_name!: string

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
		cdn_policy?: matchN(1, [#cdn_policy, list.MaxItems(1) & [...#cdn_policy]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])

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
		name!:      string
		timeouts?:  #timeouts
		project?:   string
		self_link?: string
	})

	#cdn_policy: close({
		// Specifies the cache setting for all responses from this
		// backend.
		// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL
		// and CACHE_ALL_STATIC Possible values: ["USE_ORIGIN_HEADERS",
		// "FORCE_CACHE_ALL", "CACHE_ALL_STATIC"]
		cache_mode?: string

		// Specifies the maximum allowed TTL for cached content served by
		// this origin. When the
		// 'cache_mode' is set to "USE_ORIGIN_HEADERS", you must omit this
		// field.
		client_ttl?: number

		// Specifies the default TTL for cached content served by this
		// origin for responses
		// that do not have an existing valid TTL (max-age or s-max-age).
		// When the 'cache_mode'
		// is set to "USE_ORIGIN_HEADERS", you must omit this field.
		default_ttl?: number

		// Specifies the maximum allowed TTL for cached content served by
		// this origin. When the
		// 'cache_mode' is set to "USE_ORIGIN_HEADERS", you must omit this
		// field.
		max_ttl?: number

		// Negative caching allows per-status code TTLs to be set, in
		// order to apply fine-grained caching for common errors or
		// redirects.
		negative_caching?: bool

		// If true then Cloud CDN will combine multiple concurrent cache
		// fill requests into a small number of requests to the origin.
		request_coalescing?: bool
		bypass_cache_on_request_headers?: matchN(1, [_#defs."/$defs/cdn_policy/$defs/bypass_cache_on_request_headers", list.MaxItems(5) & [..._#defs."/$defs/cdn_policy/$defs/bypass_cache_on_request_headers"]])
		cache_key_policy?: matchN(1, [_#defs."/$defs/cdn_policy/$defs/cache_key_policy", list.MaxItems(1) & [..._#defs."/$defs/cdn_policy/$defs/cache_key_policy"]])
		negative_caching_policy?: matchN(1, [_#defs."/$defs/cdn_policy/$defs/negative_caching_policy", [..._#defs."/$defs/cdn_policy/$defs/negative_caching_policy"]])

		// Serve existing content from the cache (if available) when
		// revalidating content with the origin, or when an error is
		// encountered when refreshing the cache.
		serve_while_stale?: number

		// Maximum number of seconds the response to a signed URL request
		// will
		// be considered fresh. After this time period,
		// the response will be revalidated before being served.
		// When serving responses to signed URL requests,
		// Cloud CDN will internally behave as though
		// all responses from this backend had a "Cache-Control: public,
		// max-age=[TTL]" header, regardless of any existing Cache-Control
		// header. The actual headers served in responses will not be
		// altered.
		signed_url_cache_max_age_sec?: number
	})

	#params: close({
		// Resource manager tags to be bound to the backend bucket. Tag
		// keys and values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456.
		resource_manager_tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cdn_policy/$defs/bypass_cache_on_request_headers": close({
		// The header field name to match on when bypassing cache. Values
		// are case-insensitive.
		header_name?: string
	})

	_#defs: "/$defs/cdn_policy/$defs/cache_key_policy": close({
		// Allows HTTP request headers (by name) to be used in the
		// cache key.
		include_http_headers?: [...string]

		// Names of query string parameters to include in cache keys.
		// Default parameters are always included. '&' and '=' will
		// be percent encoded and not treated as delimiters.
		query_string_whitelist?: [...string]
	})

	_#defs: "/$defs/cdn_policy/$defs/negative_caching_policy": close({
		// The HTTP status code to define a TTL against. Only HTTP status
		// codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
		// can be specified as values, and you cannot specify a status
		// code more than once.
		code?: number

		// The TTL (in seconds) for which to cache responses with the
		// corresponding status code. The maximum allowed value is 1800s
		// (30 minutes), noting that infrequently accessed objects may be
		// evicted from the cache before the defined TTL.
		ttl?: number
	})
}
