package res

import "list"

#google_compute_url_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_url_map")
	close({
		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// The backend service or backend bucket to use when none of the
		// given rules match.
		default_service?: string

		// An optional description of this resource. Provide this property
		// when you create
		// the resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object. This
		// field is used in optimistic locking.
		fingerprint?: string
		id?:          string

		// The unique identifier for the resource.
		map_id?: number

		// Name of the resource. Provided by the client when the resource
		// is created. The
		// name must be 1-63 characters long, and comply with RFC1035.
		// Specifically, the
		// name must be 1-63 characters long and match the regular
		// expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character
		// must be a lowercase
		// letter, and all following characters must be a dash, lowercase
		// letter, or digit,
		// except the last character, which cannot be a dash.
		name!: string
		default_custom_error_response_policy?: matchN(1, [#default_custom_error_response_policy, list.MaxItems(1) & [...#default_custom_error_response_policy]])
		default_route_action?: matchN(1, [#default_route_action, list.MaxItems(1) & [...#default_route_action]])
		default_url_redirect?: matchN(1, [#default_url_redirect, list.MaxItems(1) & [...#default_url_redirect]])
		header_action?: matchN(1, [#header_action, list.MaxItems(1) & [...#header_action]])
		host_rule?: matchN(1, [#host_rule, [...#host_rule]])
		path_matcher?: matchN(1, [#path_matcher, [...#path_matcher]])
		test?: matchN(1, [#test, [...#test]])
		timeouts?:  #timeouts
		project?:   string
		self_link?: string
	})

	#default_custom_error_response_policy: close({
		error_response_rule?: matchN(1, [_#defs."/$defs/default_custom_error_response_policy/$defs/error_response_rule", [..._#defs."/$defs/default_custom_error_response_policy/$defs/error_response_rule"]])

		// The full or partial URL to the BackendBucket resource that
		// contains the custom error content. Examples are:
		//
		// https://www.googleapis.com/compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// global/backendBuckets/myBackendBucket
		//
		// If errorService is not specified at lower levels like
		// pathMatcher, pathRule and routeRule, an errorService specified
		// at a higher level in the UrlMap will be used. If
		// UrlMap.defaultCustomErrorResponsePolicy contains one or more
		// errorResponseRules[], it must specify errorService.
		// If load balancer cannot reach the backendBucket, a simple Not
		// Found Error will be returned, with the original response code
		// (or overrideResponseCode if configured).
		error_service?: string
	})

	#default_route_action: close({
		cors_policy?: matchN(1, [_#defs."/$defs/default_route_action/$defs/cors_policy", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/cors_policy"]])
		fault_injection_policy?: matchN(1, [_#defs."/$defs/default_route_action/$defs/fault_injection_policy", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/fault_injection_policy"]])
		max_stream_duration?: matchN(1, [_#defs."/$defs/default_route_action/$defs/max_stream_duration", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/max_stream_duration"]])
		request_mirror_policy?: matchN(1, [_#defs."/$defs/default_route_action/$defs/request_mirror_policy", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/request_mirror_policy"]])
		retry_policy?: matchN(1, [_#defs."/$defs/default_route_action/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/default_route_action/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/timeout"]])
		url_rewrite?: matchN(1, [_#defs."/$defs/default_route_action/$defs/url_rewrite", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/url_rewrite"]])
		weighted_backend_services?: matchN(1, [_#defs."/$defs/default_route_action/$defs/weighted_backend_services", [..._#defs."/$defs/default_route_action/$defs/weighted_backend_services"]])
	})

	#default_url_redirect: close({
		// The host that will be used in the redirect response instead of
		// the one that was
		// supplied in the request. The value must be between 1 and 255
		// characters.
		host_redirect?: string

		// If set to true, the URL scheme in the redirected request is set
		// to https. If set to
		// false, the URL scheme of the redirected request will remain the
		// same as that of the
		// request. This must only be set for UrlMaps used in
		// TargetHttpProxys. Setting this
		// true for TargetHttpsProxy is not permitted. The default is set
		// to false.
		https_redirect?: bool

		// The path that will be used in the redirect response instead of
		// the one that was
		// supplied in the request. pathRedirect cannot be supplied
		// together with
		// prefixRedirect. Supply one alone or neither. If neither is
		// supplied, the path of the
		// original request will be used for the redirect. The value must
		// be between 1 and 1024
		// characters.
		path_redirect?: string

		// The prefix that replaces the prefixMatch specified in the
		// HttpRouteRuleMatch,
		// retaining the remaining portion of the URL before redirecting
		// the request.
		// prefixRedirect cannot be supplied together with pathRedirect.
		// Supply one alone or
		// neither. If neither is supplied, the path of the original
		// request will be used for
		// the redirect. The value must be between 1 and 1024 characters.
		prefix_redirect?: string

		// The HTTP Status code to use for this RedirectAction. Supported
		// values are:
		//
		// * MOVED_PERMANENTLY_DEFAULT, which is the default value and
		// corresponds to 301.
		//
		// * FOUND, which corresponds to 302.
		//
		// * SEE_OTHER which corresponds to 303.
		//
		// * TEMPORARY_REDIRECT, which corresponds to 307. In this case,
		// the request method
		// will be retained.
		//
		// * PERMANENT_REDIRECT, which corresponds to 308. In this case,
		// the request method will be retained. Possible values: ["FOUND",
		// "MOVED_PERMANENTLY_DEFAULT", "PERMANENT_REDIRECT",
		// "SEE_OTHER", "TEMPORARY_REDIRECT"]
		redirect_response_code?: string

		// If set to true, any accompanying query portion of the original
		// URL is removed prior
		// to redirecting the request. If set to false, the query portion
		// of the original URL is
		// retained. The default is set to false.
		// This field is required to ensure an empty block is not set. The
		// normal default value is false.
		strip_query!: bool
	})

	#header_action: close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request
		// prior to forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response
		// prior to sending the response back to the client.
		response_headers_to_remove?: [...string]
	})

	#host_rule: close({
		// An optional description of this resource. Provide this property
		// when you create
		// the resource.
		description?: string

		// The list of host patterns to match. They must be valid
		// hostnames, except * will
		// match any string of ([a-z0-9-.]*). In that case, * must be the
		// first character
		// and must be followed in the pattern by either - or ..
		hosts!: [...string]

		// The name of the PathMatcher to use to match the path portion of
		// the URL if the
		// hostRule matches the URL's host portion.
		path_matcher!: string
	})

	#path_matcher: close({
		// The backend service or backend bucket to use when none of the
		// given paths match.
		default_service?: string

		// An optional description of this resource. Provide this property
		// when you create
		// the resource.
		description?: string

		// The name to which this PathMatcher is referred by the HostRule.
		name!: string
		default_custom_error_response_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_custom_error_response_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_custom_error_response_policy"]])
		default_route_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action"]])
		default_url_redirect?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_url_redirect", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_url_redirect"]])
		header_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/header_action"]])
		path_rule?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule", [..._#defs."/$defs/path_matcher/$defs/path_rule"]])
		route_rules?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules", [..._#defs."/$defs/path_matcher/$defs/route_rules"]])
	})

	#test: close({
		// Description of this test case.
		description?: string

		// The expected output URL evaluated by the load balancer
		// containing the scheme, host, path and query parameters.
		//
		// For rules that forward requests to backends, the test passes
		// only when expectedOutputUrl matches the request forwarded by
		// the load balancer to backends. For rules with urlRewrite, the
		// test verifies that the forwarded request matches hostRewrite
		// and pathPrefixRewrite in the urlRewrite action. When service
		// is specified, expectedOutputUrl's scheme is ignored.
		//
		// For rules with urlRedirect, the test passes only if
		// expectedOutputUrl matches the URL in the load balancer's
		// redirect response. If urlRedirect specifies httpsRedirect, the
		// test passes only if the scheme in expectedOutputUrl is also
		// set to HTTPS. If urlRedirect specifies stripQuery, the test
		// passes only if expectedOutputUrl does not contain any query
		// parameters.
		//
		// expectedOutputUrl is optional when service is specified.
		expected_output_url?: string

		// For rules with urlRedirect, the test passes only if
		// expectedRedirectResponseCode matches the HTTP status code in
		// load balancer's redirect response.
		//
		// expectedRedirectResponseCode cannot be set when service is set.
		expected_redirect_response_code?: number

		// Host portion of the URL.
		host!: string

		// Path portion of the URL.
		path!: string

		// The backend service or backend bucket link that should be
		// matched by this test.
		service?: string
		headers?: matchN(1, [_#defs."/$defs/test/$defs/headers", [..._#defs."/$defs/test/$defs/headers"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/default_custom_error_response_policy/$defs/error_response_rule": close({
		// Valid values include:
		// - A number between 400 and 599: For example 401 or 503, in
		// which case the load balancer applies the policy if the error
		// code exactly matches this value.
		// - 5xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 500 to
		// 599.
		// - 4xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 400 to
		// 499.
		// Values must be unique within matchResponseCodes and across all
		// errorResponseRules of CustomErrorResponsePolicy.
		match_response_codes?: [...string]

		// The HTTP status code returned with the response containing the
		// custom error content.
		// If overrideResponseCode is not supplied, the same response code
		// returned by the original backend bucket or backend service is
		// returned to the client.
		override_response_code?: number

		// The full path to a file within backendBucket. For example:
		// /errors/defaultError.html
		// path must start with a leading slash. path cannot have trailing
		// slashes.
		// If the file is not available in backendBucket or the load
		// balancer cannot reach the BackendBucket, a simple Not Found
		// Error is returned to the client.
		// The value must be from 1 to 1024 characters.
		path?: string
	})

	_#defs: "/$defs/default_route_action/$defs/cors_policy": close({
		// In response to a preflight request, setting this to true
		// indicates that the actual request can include user
		// credentials.
		// This translates to the Access-Control-Allow-Credentials header.
		allow_credentials?: bool

		// Specifies the content for the Access-Control-Allow-Headers
		// header.
		allow_headers?: [...string]

		// Specifies the content for the Access-Control-Allow-Methods
		// header.
		allow_methods?: [...string]

		// Specifies the regular expression patterns that match allowed
		// origins. For regular expression grammar
		// please see en.cppreference.com/w/cpp/regex/ecmascript
		// An origin is allowed if it matches either an item in
		// allowOrigins or an item in allowOriginRegexes.
		allow_origin_regexes?: [...string]

		// Specifies the list of origins that will be allowed to do CORS
		// requests.
		// An origin is allowed if it matches either an item in
		// allowOrigins or an item in allowOriginRegexes.
		allow_origins?: [...string]

		// If true, specifies the CORS policy is disabled. The default
		// value is false, which indicates that the CORS policy is in
		// effect.
		disabled?: bool

		// Specifies the content for the Access-Control-Expose-Headers
		// header.
		expose_headers?: [...string]

		// Specifies how long results of a preflight request can be cached
		// in seconds.
		// This translates to the Access-Control-Max-Age header.
		max_age?: number
	})

	_#defs: "/$defs/default_route_action/$defs/fault_injection_policy": close({
		abort?: matchN(1, [_#defs."/$defs/default_route_action/$defs/fault_injection_policy/$defs/abort", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/fault_injection_policy/$defs/abort"]])
		delay?: matchN(1, [_#defs."/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay"]])
	})

	_#defs: "/$defs/default_route_action/$defs/fault_injection_policy/$defs/abort": close({
		// The HTTP status code used to abort the request.
		// The value must be between 200 and 599 inclusive.
		http_status?: number

		// The percentage of traffic (connections/operations/requests)
		// which will be aborted as part of fault injection.
		// The value must be between 0.0 and 100.0 inclusive.
		percentage?: number
	})

	_#defs: "/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay": close({
		fixed_delay?: matchN(1, [_#defs."/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay"]])

		// The percentage of traffic (connections/operations/requests) on
		// which delay will be introduced as part of fault injection.
		// The value must be between 0.0 and 100.0 inclusive.
		percentage?: number
	})

	_#defs: "/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are
		// represented with a 0 seconds field and a positive nanos field.
		// Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds?: string
	})

	_#defs: "/$defs/default_route_action/$defs/max_stream_duration": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must be from
		// 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds!: string
	})

	_#defs: "/$defs/default_route_action/$defs/request_mirror_policy": close({
		// The full or partial URL to the BackendService resource being
		// mirrored to.
		backend_service!: string
	})

	_#defs: "/$defs/default_route_action/$defs/retry_policy": close({
		per_try_timeout?: matchN(1, [_#defs."/$defs/default_route_action/$defs/retry_policy/$defs/per_try_timeout", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/retry_policy/$defs/per_try_timeout"]])

		// Specifies the allowed number retries. This number must be > 0.
		// If not specified, defaults to 1.
		num_retries?: number

		// Specfies one or more conditions when this retry rule applies.
		// Valid values are:
		//
		// * 5xx: Loadbalancer will attempt a retry if the backend service
		// responds with any 5xx response code,
		// or if the backend service does not respond at all, example:
		// disconnects, reset, read timeout,
		// * connection failure, and refused streams.
		// * gateway-error: Similar to 5xx, but only applies to response
		// codes 502, 503 or 504.
		// * connect-failure: Loadbalancer will retry on failures
		// connecting to backend services,
		// for example due to connection timeouts.
		// * retriable-4xx: Loadbalancer will retry for retriable 4xx
		// response codes.
		// Currently the only retriable error supported is 409.
		// * refused-stream:Loadbalancer will retry if the backend service
		// resets the stream with a REFUSED_STREAM error code.
		// This reset type indicates that it is safe to retry.
		// * cancelled: Loadbalancer will retry if the gRPC status code in
		// the response header is set to cancelled
		// * deadline-exceeded: Loadbalancer will retry if the gRPC status
		// code in the response header is set to deadline-exceeded
		// * resource-exhausted: Loadbalancer will retry if the gRPC
		// status code in the response header is set to
		// resource-exhausted
		// * unavailable: Loadbalancer will retry if the gRPC status code
		// in the response header is set to unavailable
		retry_conditions?: [...string]
	})

	_#defs: "/$defs/default_route_action/$defs/retry_policy/$defs/per_try_timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are
		// represented with a 0 seconds field and a positive nanos field.
		// Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds?: string
	})

	_#defs: "/$defs/default_route_action/$defs/timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must be from
		// 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds?: string
	})

	_#defs: "/$defs/default_route_action/$defs/url_rewrite": close({
		// Prior to forwarding the request to the selected service, the
		// request's host header is replaced
		// with contents of hostRewrite.
		//
		// The value must be between 1 and 255 characters.
		host_rewrite?: string

		// Prior to forwarding the request to the selected backend
		// service, the matching portion of the
		// request's path is replaced by pathPrefixRewrite.
		//
		// The value must be between 1 and 1024 characters.
		path_prefix_rewrite?: string
	})

	_#defs: "/$defs/default_route_action/$defs/weighted_backend_services": close({
		header_action?: matchN(1, [_#defs."/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action"]])

		// The full or partial URL to the default BackendService resource.
		// Before forwarding the
		// request to backendService, the loadbalancer applies any
		// relevant headerActions
		// specified as part of this backendServiceWeight.
		backend_service?: string

		// Specifies the fraction of traffic sent to backendService,
		// computed as
		// weight / (sum of all weightedBackendService weights in
		// routeAction) .
		//
		// The selection of a backend service is determined only for new
		// traffic. Once a user's request
		// has been directed to a backendService, subsequent requests will
		// be sent to the same backendService
		// as determined by the BackendService's session affinity policy.
		//
		// The value must be between 0 and 1000
		weight?: number
	})

	_#defs: "/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action": close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request prior to
		// forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response prior to sending the
		// response back to the client.
		response_headers_to_remove?: [...string]
	})

	_#defs: "/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header to add.
		header_name?: string

		// The value of the header to add.
		header_value?: string

		// If false, headerValue is appended to any values that already
		// exist for the header.
		// If true, headerValue is set for the header, discarding any
		// values that were set for that header.
		replace?: bool
	})

	_#defs: "/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header to add.
		header_name?: string

		// The value of the header to add.
		header_value?: string

		// If false, headerValue is appended to any values that already
		// exist for the header.
		// If true, headerValue is set for the header, discarding any
		// values that were set for that header.
		replace?: bool
	})

	_#defs: "/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/default_custom_error_response_policy": close({
		error_response_rule?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_custom_error_response_policy/$defs/error_response_rule", [..._#defs."/$defs/path_matcher/$defs/default_custom_error_response_policy/$defs/error_response_rule"]])

		// The full or partial URL to the BackendBucket resource that
		// contains the custom error content. Examples are:
		// https://www.googleapis.com/compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// global/backendBuckets/myBackendBucket
		// If errorService is not specified at lower levels like
		// pathMatcher, pathRule and routeRule, an errorService specified
		// at a higher level in the UrlMap will be used. If
		// UrlMap.defaultCustomErrorResponsePolicy contains one or more
		// errorResponseRules[], it must specify errorService.
		// If load balancer cannot reach the backendBucket, a simple Not
		// Found Error will be returned, with the original response code
		// (or overrideResponseCode if configured).
		error_service?: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_custom_error_response_policy/$defs/error_response_rule": close({
		// Valid values include:
		// - A number between 400 and 599: For example 401 or 503, in
		// which case the load balancer applies the policy if the error
		// code exactly matches this value.
		// - 5xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 500 to
		// 599.
		// - 4xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 400 to
		// 499.
		// Values must be unique within matchResponseCodes and across all
		// errorResponseRules of CustomErrorResponsePolicy.
		match_response_codes?: [...string]

		// The HTTP status code returned with the response containing the
		// custom error content.
		// If overrideResponseCode is not supplied, the same response code
		// returned by the original backend bucket or backend service is
		// returned to the client.
		override_response_code?: number

		// The full path to a file within backendBucket . For example:
		// /errors/defaultError.html
		// path must start with a leading slash. path cannot have trailing
		// slashes.
		// If the file is not available in backendBucket or the load
		// balancer cannot reach the BackendBucket, a simple Not Found
		// Error is returned to the client.
		// The value must be from 1 to 1024 characters
		path?: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action": close({
		cors_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/cors_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/cors_policy"]])
		fault_injection_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy"]])
		max_stream_duration?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/max_stream_duration", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/max_stream_duration"]])
		request_mirror_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/request_mirror_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/request_mirror_policy"]])
		retry_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/timeout"]])
		url_rewrite?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/url_rewrite", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/url_rewrite"]])
		weighted_backend_services?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services", [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services"]])
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/cors_policy": close({
		// In response to a preflight request, setting this to true
		// indicates that the actual request can include user
		// credentials.
		// This translates to the Access-Control-Allow-Credentials header.
		allow_credentials?: bool

		// Specifies the content for the Access-Control-Allow-Headers
		// header.
		allow_headers?: [...string]

		// Specifies the content for the Access-Control-Allow-Methods
		// header.
		allow_methods?: [...string]

		// Specifies the regular expression patterns that match allowed
		// origins. For regular expression grammar
		// please see en.cppreference.com/w/cpp/regex/ecmascript
		// An origin is allowed if it matches either an item in
		// allowOrigins or an item in allowOriginRegexes.
		allow_origin_regexes?: [...string]

		// Specifies the list of origins that will be allowed to do CORS
		// requests.
		// An origin is allowed if it matches either an item in
		// allowOrigins or an item in allowOriginRegexes.
		allow_origins?: [...string]

		// If true, specifies the CORS policy is disabled. The default
		// value is false, which indicates that the CORS policy is in
		// effect.
		disabled?: bool

		// Specifies the content for the Access-Control-Expose-Headers
		// header.
		expose_headers?: [...string]

		// Specifies how long results of a preflight request can be cached
		// in seconds.
		// This translates to the Access-Control-Max-Age header.
		max_age?: number
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy": close({
		abort?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/abort", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/abort"]])
		delay?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay"]])
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/abort": close({
		// The HTTP status code used to abort the request.
		// The value must be between 200 and 599 inclusive.
		http_status?: number

		// The percentage of traffic (connections/operations/requests)
		// which will be aborted as part of fault injection.
		// The value must be between 0.0 and 100.0 inclusive.
		percentage?: number
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay": close({
		fixed_delay?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay"]])

		// The percentage of traffic (connections/operations/requests) on
		// which delay will be introduced as part of fault injection.
		// The value must be between 0.0 and 100.0 inclusive.
		percentage?: number
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are
		// represented with a 0 seconds field and a positive nanos field.
		// Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds?: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/max_stream_duration": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must be from
		// 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/request_mirror_policy": close({
		// The full or partial URL to the BackendService resource being
		// mirrored to.
		backend_service!: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/retry_policy": close({
		per_try_timeout?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/retry_policy/$defs/per_try_timeout", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/retry_policy/$defs/per_try_timeout"]])

		// Specifies the allowed number retries. This number must be > 0.
		// If not specified, defaults to 1.
		num_retries?: number

		// Specfies one or more conditions when this retry rule applies.
		// Valid values are:
		//
		// * 5xx: Loadbalancer will attempt a retry if the backend service
		// responds with any 5xx response code,
		// or if the backend service does not respond at all, example:
		// disconnects, reset, read timeout,
		// * connection failure, and refused streams.
		// * gateway-error: Similar to 5xx, but only applies to response
		// codes 502, 503 or 504.
		// * connect-failure: Loadbalancer will retry on failures
		// connecting to backend services,
		// for example due to connection timeouts.
		// * retriable-4xx: Loadbalancer will retry for retriable 4xx
		// response codes.
		// Currently the only retriable error supported is 409.
		// * refused-stream:Loadbalancer will retry if the backend service
		// resets the stream with a REFUSED_STREAM error code.
		// This reset type indicates that it is safe to retry.
		// * cancelled: Loadbalancer will retry if the gRPC status code in
		// the response header is set to cancelled
		// * deadline-exceeded: Loadbalancer will retry if the gRPC status
		// code in the response header is set to deadline-exceeded
		// * resource-exhausted: Loadbalancer will retry if the gRPC
		// status code in the response header is set to
		// resource-exhausted
		// * unavailable: Loadbalancer will retry if the gRPC status code
		// in the response header is set to unavailable
		retry_conditions?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/retry_policy/$defs/per_try_timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are
		// represented with a 0 seconds field and a positive nanos field.
		// Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds?: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must be from
		// 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive.
		// Note: these bounds are computed from: 60 sec/min * 60 min/hr *
		// 24 hr/day * 365.25 days/year * 10000 years
		seconds?: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/url_rewrite": close({
		// Prior to forwarding the request to the selected service, the
		// request's host header is replaced
		// with contents of hostRewrite.
		//
		// The value must be between 1 and 255 characters.
		host_rewrite?: string

		// Prior to forwarding the request to the selected backend
		// service, the matching portion of the
		// request's path is replaced by pathPrefixRewrite.
		//
		// The value must be between 1 and 1024 characters.
		path_prefix_rewrite?: string
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services": close({
		header_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action"]])

		// The full or partial URL to the default BackendService resource.
		// Before forwarding the
		// request to backendService, the loadbalancer applies any
		// relevant headerActions
		// specified as part of this backendServiceWeight.
		backend_service?: string

		// Specifies the fraction of traffic sent to backendService,
		// computed as
		// weight / (sum of all weightedBackendService weights in
		// routeAction) .
		//
		// The selection of a backend service is determined only for new
		// traffic. Once a user's request
		// has been directed to a backendService, subsequent requests will
		// be sent to the same backendService
		// as determined by the BackendService's session affinity policy.
		//
		// The value must be between 0 and 1000
		weight?: number
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action": close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request prior to
		// forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response prior to sending the
		// response back to the client.
		response_headers_to_remove?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header to add.
		header_name?: string

		// The value of the header to add.
		header_value?: string

		// If false, headerValue is appended to any values that already
		// exist for the header.
		// If true, headerValue is set for the header, discarding any
		// values that were set for that header.
		replace?: bool
	})

	_#defs: "/$defs/path_matcher/$defs/default_route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header to add.
		header_name?: string

		// The value of the header to add.
		header_value?: string

		// If false, headerValue is appended to any values that already
		// exist for the header.
		// If true, headerValue is set for the header, discarding any
		// values that were set for that header.
		replace?: bool
	})

	_#defs: "/$defs/path_matcher/$defs/default_url_redirect": close({
		// The host that will be used in the redirect response instead of
		// the one that was
		// supplied in the request. The value must be between 1 and 255
		// characters.
		host_redirect?: string

		// If set to true, the URL scheme in the redirected request is set
		// to https. If set to
		// false, the URL scheme of the redirected request will remain the
		// same as that of the
		// request. This must only be set for UrlMaps used in
		// TargetHttpProxys. Setting this
		// true for TargetHttpsProxy is not permitted. The default is set
		// to false.
		https_redirect?: bool

		// The path that will be used in the redirect response instead of
		// the one that was
		// supplied in the request. pathRedirect cannot be supplied
		// together with
		// prefixRedirect. Supply one alone or neither. If neither is
		// supplied, the path of the
		// original request will be used for the redirect. The value must
		// be between 1 and 1024
		// characters.
		path_redirect?: string

		// The prefix that replaces the prefixMatch specified in the
		// HttpRouteRuleMatch,
		// retaining the remaining portion of the URL before redirecting
		// the request.
		// prefixRedirect cannot be supplied together with pathRedirect.
		// Supply one alone or
		// neither. If neither is supplied, the path of the original
		// request will be used for
		// the redirect. The value must be between 1 and 1024 characters.
		prefix_redirect?: string

		// The HTTP Status code to use for this RedirectAction. Supported
		// values are:
		//
		// * MOVED_PERMANENTLY_DEFAULT, which is the default value and
		// corresponds to 301.
		//
		// * FOUND, which corresponds to 302.
		//
		// * SEE_OTHER which corresponds to 303.
		//
		// * TEMPORARY_REDIRECT, which corresponds to 307. In this case,
		// the request method
		// will be retained.
		//
		// * PERMANENT_REDIRECT, which corresponds to 308. In this case,
		// the request method will be retained. Possible values: ["FOUND",
		// "MOVED_PERMANENTLY_DEFAULT", "PERMANENT_REDIRECT",
		// "SEE_OTHER", "TEMPORARY_REDIRECT"]
		redirect_response_code?: string

		// If set to true, any accompanying query portion of the original
		// URL is removed prior
		// to redirecting the request. If set to false, the query portion
		// of the original URL is
		// retained.
		// This field is required to ensure an empty block is not set. The
		// normal default value is false.
		strip_query!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/header_action": close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request
		// prior to forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response
		// prior to sending the response back to the client.
		response_headers_to_remove?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule": close({
		custom_error_response_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/custom_error_response_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/custom_error_response_policy"]])
		route_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action"]])
		url_redirect?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/url_redirect", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/url_redirect"]])

		// The list of path patterns to match. Each must start with / and
		// the only place a
		// \* is allowed is at the end following a /. The string fed to
		// the path matcher
		// does not include any text after the first ? or #, and those
		// chars are not
		// allowed here.
		paths!: [...string]

		// The backend service or backend bucket to use if any of the
		// given paths match.
		service?: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/custom_error_response_policy": close({
		error_response_rule?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/custom_error_response_policy/$defs/error_response_rule", [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/custom_error_response_policy/$defs/error_response_rule"]])

		// The full or partial URL to the BackendBucket resource that
		// contains the custom error content. Examples are:
		//
		// https://www.googleapis.com/compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// global/backendBuckets/myBackendBucket
		//
		// If errorService is not specified at lower levels like
		// pathMatcher, pathRule and routeRule, an errorService specified
		// at a higher level in the UrlMap will be used. If
		// UrlMap.defaultCustomErrorResponsePolicy contains one or more
		// errorResponseRules[], it must specify errorService.
		// If load balancer cannot reach the backendBucket, a simple Not
		// Found Error will be returned, with the original response code
		// (or overrideResponseCode if configured).
		error_service?: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/custom_error_response_policy/$defs/error_response_rule": close({
		// Valid values include:
		//
		// - A number between 400 and 599: For example 401 or 503, in
		// which case the load balancer applies the policy if the error
		// code exactly matches this value.
		// - 5xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 500 to
		// 599.
		// - 4xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 400 to
		// 499.
		//
		// Values must be unique within matchResponseCodes and across all
		// errorResponseRules of CustomErrorResponsePolicy.
		match_response_codes?: [...string]

		// The HTTP status code returned with the response containing the
		// custom error content.
		// If overrideResponseCode is not supplied, the same response code
		// returned by the original backend bucket or backend service is
		// returned to the client.
		override_response_code?: number

		// The full path to a file within backendBucket . For example:
		// /errors/defaultError.html
		// path must start with a leading slash. path cannot have trailing
		// slashes.
		// If the file is not available in backendBucket or the load
		// balancer cannot reach the BackendBucket, a simple Not Found
		// Error is returned to the client.
		// The value must be from 1 to 1024 characters
		path?: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action": close({
		cors_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/cors_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/cors_policy"]])
		fault_injection_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy"]])
		max_stream_duration?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/max_stream_duration", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/max_stream_duration"]])
		request_mirror_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/request_mirror_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/request_mirror_policy"]])
		retry_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/timeout"]])
		url_rewrite?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/url_rewrite", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/url_rewrite"]])
		weighted_backend_services?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services", [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services"]])
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/cors_policy": close({
		// In response to a preflight request, setting this to true
		// indicates that the
		// actual request can include user credentials. This translates to
		// the Access-
		// Control-Allow-Credentials header. Defaults to false.
		allow_credentials?: bool

		// Specifies the content for the Access-Control-Allow-Headers
		// header.
		allow_headers?: [...string]

		// Specifies the content for the Access-Control-Allow-Methods
		// header.
		allow_methods?: [...string]

		// Specifies the regular expression patterns that match allowed
		// origins. For
		// regular expression grammar please see
		// en.cppreference.com/w/cpp/regex/ecmascript
		// An origin is allowed if it matches either allow_origins or
		// allow_origin_regex.
		allow_origin_regexes?: [...string]

		// Specifies the list of origins that will be allowed to do CORS
		// requests. An
		// origin is allowed if it matches either allow_origins or
		// allow_origin_regex.
		allow_origins?: [...string]

		// If true, specifies the CORS policy is disabled.
		disabled!: bool

		// Specifies the content for the Access-Control-Expose-Headers
		// header.
		expose_headers?: [...string]

		// Specifies how long the results of a preflight request can be
		// cached. This
		// translates to the content for the Access-Control-Max-Age
		// header.
		max_age?: number
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy": close({
		abort?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/abort", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/abort"]])
		delay?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/delay", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/delay"]])
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/abort": close({
		// The HTTP status code used to abort the request. The value must
		// be between 200
		// and 599 inclusive.
		http_status!: number

		// The percentage of traffic (connections/operations/requests)
		// which will be
		// aborted as part of fault injection. The value must be between
		// 0.0 and 100.0
		// inclusive.
		percentage!: number
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/delay": close({
		fixed_delay?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay"]])

		// The percentage of traffic (connections/operations/requests) on
		// which delay will
		// be introduced as part of fault injection. The value must be
		// between 0.0 and
		// 100.0 inclusive.
		percentage!: number
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/max_stream_duration": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/request_mirror_policy": close({
		// The BackendService resource being mirrored to.
		backend_service!: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/retry_policy": close({
		per_try_timeout?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/retry_policy/$defs/per_try_timeout", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/retry_policy/$defs/per_try_timeout"]])

		// Specifies the allowed number retries. This number must be > 0.
		num_retries?: number

		// Specifies one or more conditions when this retry rule applies.
		// Valid values are:
		//
		// * 5xx: Loadbalancer will attempt a retry if the backend service
		// responds with
		// any 5xx response code, or if the backend service does not
		// respond at all,
		// for example: disconnects, reset, read timeout, connection
		// failure, and refused
		// streams.
		// * gateway-error: Similar to 5xx, but only applies to response
		// codes
		// 502, 503 or 504.
		// * connect-failure: Loadbalancer will retry on failures
		// connecting to backend services, for example due to connection
		// timeouts.
		// * retriable-4xx: Loadbalancer will retry for retriable 4xx
		// response codes.
		// Currently the only retriable error supported is 409.
		// * refused-stream: Loadbalancer will retry if the backend
		// service resets the stream with a
		// REFUSED_STREAM error code. This reset type indicates that it is
		// safe to retry.
		// * cancelled: Loadbalancer will retry if the gRPC status code in
		// the response
		// header is set to cancelled
		// * deadline-exceeded: Loadbalancer will retry if the
		// gRPC status code in the response header is set to
		// deadline-exceeded
		// * resource-exhausted: Loadbalancer will retry if the gRPC
		// status code in the response
		// header is set to resource-exhausted
		// * unavailable: Loadbalancer will retry if
		// the gRPC status code in the response header is set to
		// unavailable
		retry_conditions?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/retry_policy/$defs/per_try_timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/url_rewrite": close({
		// Prior to forwarding the request to the selected service, the
		// request's host
		// header is replaced with contents of hostRewrite. The value must
		// be between 1 and
		// 255 characters.
		host_rewrite?: string

		// Prior to forwarding the request to the selected backend
		// service, the matching
		// portion of the request's path is replaced by pathPrefixRewrite.
		// The value must
		// be between 1 and 1024 characters.
		path_prefix_rewrite?: string
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services": close({
		header_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action"]])

		// The default BackendService resource. Before
		// forwarding the request to backendService, the loadbalancer
		// applies any relevant
		// headerActions specified as part of this backendServiceWeight.
		backend_service!: string

		// Specifies the fraction of traffic sent to backendService,
		// computed as weight /
		// (sum of all weightedBackendService weights in routeAction) .
		// The selection of a
		// backend service is determined only for new traffic. Once a
		// user's request has
		// been directed to a backendService, subsequent requests will be
		// sent to the same
		// backendService as determined by the BackendService's session
		// affinity policy.
		// The value must be between 0 and 1000
		weight!: number
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action": close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request
		// prior to forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response
		// prior to sending the response back to the client.
		response_headers_to_remove?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/path_rule/$defs/url_redirect": close({
		// The host that will be used in the redirect response instead of
		// the one
		// that was supplied in the request. The value must be between 1
		// and 255
		// characters.
		host_redirect?: string

		// If set to true, the URL scheme in the redirected request is set
		// to https.
		// If set to false, the URL scheme of the redirected request will
		// remain the
		// same as that of the request. This must only be set for UrlMaps
		// used in
		// TargetHttpProxys. Setting this true for TargetHttpsProxy is not
		// permitted. The default is set to false.
		https_redirect?: bool

		// The path that will be used in the redirect response instead of
		// the one
		// that was supplied in the request. pathRedirect cannot be
		// supplied
		// together with prefixRedirect. Supply one alone or neither. If
		// neither is
		// supplied, the path of the original request will be used for the
		// redirect.
		// The value must be between 1 and 1024 characters.
		path_redirect?: string

		// The prefix that replaces the prefixMatch specified in the
		// HttpRouteRuleMatch, retaining the remaining portion of the URL
		// before
		// redirecting the request. prefixRedirect cannot be supplied
		// together with
		// pathRedirect. Supply one alone or neither. If neither is
		// supplied, the
		// path of the original request will be used for the redirect. The
		// value
		// must be between 1 and 1024 characters.
		prefix_redirect?: string

		// The HTTP Status code to use for this RedirectAction. Supported
		// values are:
		//
		// * MOVED_PERMANENTLY_DEFAULT, which is the default value and
		// corresponds to 301.
		//
		// * FOUND, which corresponds to 302.
		//
		// * SEE_OTHER which corresponds to 303.
		//
		// * TEMPORARY_REDIRECT, which corresponds to 307. In this case,
		// the request method
		// will be retained.
		//
		// * PERMANENT_REDIRECT, which corresponds to 308. In this case,
		// the request method will be retained. Possible values: ["FOUND",
		// "MOVED_PERMANENTLY_DEFAULT", "PERMANENT_REDIRECT",
		// "SEE_OTHER", "TEMPORARY_REDIRECT"]
		redirect_response_code?: string

		// If set to true, any accompanying query portion of the original
		// URL is
		// removed prior to redirecting the request. If set to false, the
		// query
		// portion of the original URL is retained.
		// This field is required to ensure an empty block is not set. The
		// normal default value is false.
		strip_query!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules": close({
		custom_error_response_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/custom_error_response_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/custom_error_response_policy"]])

		// For routeRules within a given pathMatcher, priority determines
		// the order
		// in which load balancer will interpret routeRules. RouteRules
		// are evaluated
		// in order of priority, from the lowest to highest number. The
		// priority of
		// a rule decreases as its number increases (1, 2, 3, N+1). The
		// first rule
		// that matches the request is applied.
		//
		// You cannot configure two or more routeRules with the same
		// priority.
		// Priority for each rule must be set to a number between 0 and
		// 2147483647 inclusive.
		//
		// Priority numbers can have gaps, which enable you to add or
		// remove rules
		// in the future without affecting the rest of the rules. For
		// example,
		// 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers
		// to which
		// you could add rules numbered from 6 to 8, 10 to 11, and 13 to
		// 15 in the
		// future without any impact on existing rules.
		priority!: number
		header_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/header_action"]])

		// The backend service resource to which traffic is
		// directed if this rule is matched. If routeAction is
		// additionally specified,
		// advanced routing actions like URL Rewrites, etc. take effect
		// prior to sending
		// the request to the backend. However, if service is specified,
		// routeAction cannot
		// contain any weightedBackendService s. Conversely, if
		// routeAction specifies any
		// weightedBackendServices, service must not be specified. Only
		// one of urlRedirect,
		// service or routeAction.weightedBackendService must be set.
		service?: string
		match_rules?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules"]])
		route_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action"]])
		url_redirect?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/url_redirect", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/url_redirect"]])
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/custom_error_response_policy": close({
		error_response_rule?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/custom_error_response_policy/$defs/error_response_rule", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/custom_error_response_policy/$defs/error_response_rule"]])

		// The full or partial URL to the BackendBucket resource that
		// contains the custom error content. Examples are:
		//
		// https://www.googleapis.com/compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// compute/v1/projects/project/global/backendBuckets/myBackendBucket
		// global/backendBuckets/myBackendBucket
		//
		// If errorService is not specified at lower levels like
		// pathMatcher, pathRule and routeRule, an errorService specified
		// at a higher level in the UrlMap will be used. If
		// UrlMap.defaultCustomErrorResponsePolicy contains one or more
		// errorResponseRules[], it must specify errorService.
		// If load balancer cannot reach the backendBucket, a simple Not
		// Found Error will be returned, with the original response code
		// (or overrideResponseCode if configured).
		error_service?: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/custom_error_response_policy/$defs/error_response_rule": close({
		// Valid values include:
		//
		// - A number between 400 and 599: For example 401 or 503, in
		// which case the load balancer applies the policy if the error
		// code exactly matches this value.
		// - 5xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 500 to
		// 599.
		// - 4xx: Load Balancer will apply the policy if the backend
		// service responds with any response code in the range of 400 to
		// 499.
		//
		// Values must be unique within matchResponseCodes and across all
		// errorResponseRules of CustomErrorResponsePolicy.
		match_response_codes?: [...string]

		// The HTTP status code returned with the response containing the
		// custom error content.
		// If overrideResponseCode is not supplied, the same response code
		// returned by the original backend bucket or backend service is
		// returned to the client.
		override_response_code?: number

		// The full path to a file within backendBucket . For example:
		// /errors/defaultError.html
		// path must start with a leading slash. path cannot have trailing
		// slashes.
		// If the file is not available in backendBucket or the load
		// balancer cannot reach the BackendBucket, a simple Not Found
		// Error is returned to the client.
		// The value must be from 1 to 1024 characters
		path?: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/header_action": close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request
		// prior to forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response
		// prior to sending the response back to the client.
		response_headers_to_remove?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/match_rules": close({
		// For satisfying the matchRule condition, the path of the request
		// must exactly
		// match the value specified in fullPathMatch after removing any
		// query parameters
		// and anchor that may be part of the original URL. FullPathMatch
		// must be between 1
		// and 1024 characters. Only one of prefixMatch, fullPathMatch or
		// regexMatch must
		// be specified.
		full_path_match?: string

		// Specifies that prefixMatch and fullPathMatch matches are case
		// sensitive.
		// Defaults to false.
		ignore_case?: bool

		// For satisfying the matchRule condition, the path of the request
		// must match the wildcard pattern specified in pathTemplateMatch
		// after removing any query parameters and anchor that may be part
		// of the original URL.
		//
		// pathTemplateMatch must be between 1 and 255 characters
		// (inclusive). The pattern specified by pathTemplateMatch may
		// have at most 5 wildcard operators and at most 5 variable
		// captures in total.
		path_template_match?: string

		// For satisfying the matchRule condition, the request's path must
		// begin with the
		// specified prefixMatch. prefixMatch must begin with a /. The
		// value must be
		// between 1 and 1024 characters. Only one of prefixMatch,
		// fullPathMatch or
		// regexMatch must be specified.
		prefix_match?: string

		// For satisfying the matchRule condition, the path of the request
		// must satisfy the
		// regular expression specified in regexMatch after removing any
		// query parameters
		// and anchor supplied with the original URL. For regular
		// expression grammar please
		// see en.cppreference.com/w/cpp/regex/ecmascript Only one of
		// prefixMatch,
		// fullPathMatch or regexMatch must be specified.
		regex_match?: string
		header_matches?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/header_matches", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/header_matches"]])
		metadata_filters?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/metadata_filters", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/metadata_filters"]])
		query_parameter_matches?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/query_parameter_matches", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/query_parameter_matches"]])
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/header_matches": close({
		// The value should exactly match contents of exactMatch. Only one
		// of exactMatch,
		// prefixMatch, suffixMatch, regexMatch, presentMatch or
		// rangeMatch must be set.
		exact_match?: string

		// The name of the HTTP header to match. For matching against the
		// HTTP request's
		// authority, use a headerMatch with the header name ":authority".
		// For matching a
		// request's method, use the headerName ":method".
		header_name!: string

		// If set to false, the headerMatch is considered a match if the
		// match criteria
		// above are met. If set to true, the headerMatch is considered a
		// match if the
		// match criteria above are NOT met. Defaults to false.
		invert_match?: bool

		// The value of the header must start with the contents of
		// prefixMatch. Only one of
		// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch
		// or rangeMatch
		// must be set.
		prefix_match?: string

		// A header with the contents of headerName must exist. The match
		// takes place
		// whether or not the request's header has a value or not. Only
		// one of exactMatch,
		// prefixMatch, suffixMatch, regexMatch, presentMatch or
		// rangeMatch must be set.
		present_match?: bool

		// The value of the header must match the regular expression
		// specified in
		// regexMatch. For regular expression grammar, please see:
		// en.cppreference.com/w/cpp/regex/ecmascript For matching against
		// a port
		// specified in the HTTP request, use a headerMatch with
		// headerName set to PORT and
		// a regular expression that satisfies the RFC2616 Host header's
		// port specifier.
		// Only one of exactMatch, prefixMatch, suffixMatch, regexMatch,
		// presentMatch or
		// rangeMatch must be set.
		regex_match?: string
		range_match?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/header_matches/$defs/range_match", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/header_matches/$defs/range_match"]])

		// The value of the header must end with the contents of
		// suffixMatch. Only one of
		// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch
		// or rangeMatch
		// must be set.
		suffix_match?: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/header_matches/$defs/range_match": close({
		// The end of the range (exclusive).
		range_end!: number

		// The start of the range (inclusive).
		range_start!: number
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/metadata_filters": close({
		filter_labels?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/metadata_filters/$defs/filter_labels", list.MaxItems(64) & [_, ...] & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/metadata_filters/$defs/filter_labels"]])

		// Specifies how individual filterLabel matches within the list of
		// filterLabels
		// contribute towards the overall metadataFilter match. Supported
		// values are:
		// - MATCH_ANY: At least one of the filterLabels must have a
		// matching label in the
		// provided metadata.
		// - MATCH_ALL: All filterLabels must have matching labels in
		// the provided metadata. Possible values: ["MATCH_ALL",
		// "MATCH_ANY"]
		filter_match_criteria!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/metadata_filters/$defs/filter_labels": close({
		// Name of metadata label. The name can have a maximum length of
		// 1024 characters
		// and must be at least 1 character long.
		name!: string

		// The value of the label must match the specified value. value
		// can have a maximum
		// length of 1024 characters.
		value!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/match_rules/$defs/query_parameter_matches": close({
		// The queryParameterMatch matches if the value of the parameter
		// exactly matches
		// the contents of exactMatch. Only one of presentMatch,
		// exactMatch and regexMatch
		// must be set.
		exact_match?: string

		// The name of the query parameter to match. The query parameter
		// must exist in the
		// request, in the absence of which the request match fails.
		name!: string

		// Specifies that the queryParameterMatch matches if the request
		// contains the query
		// parameter, irrespective of whether the parameter has a value or
		// not. Only one of
		// presentMatch, exactMatch and regexMatch must be set.
		present_match?: bool

		// The queryParameterMatch matches if the value of the parameter
		// matches the
		// regular expression specified by regexMatch. For the regular
		// expression grammar,
		// please see en.cppreference.com/w/cpp/regex/ecmascript Only one
		// of presentMatch,
		// exactMatch and regexMatch must be set.
		regex_match?: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action": close({
		cors_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/cors_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/cors_policy"]])
		fault_injection_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy"]])
		max_stream_duration?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/max_stream_duration", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/max_stream_duration"]])
		request_mirror_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/request_mirror_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/request_mirror_policy"]])
		retry_policy?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/retry_policy"]])
		timeout?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/timeout", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/timeout"]])
		url_rewrite?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/url_rewrite", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/url_rewrite"]])
		weighted_backend_services?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services"]])
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/cors_policy": close({
		// In response to a preflight request, setting this to true
		// indicates that the
		// actual request can include user credentials. This translates to
		// the Access-
		// Control-Allow-Credentials header. Defaults to false.
		allow_credentials?: bool

		// Specifies the content for the Access-Control-Allow-Headers
		// header.
		allow_headers?: [...string]

		// Specifies the content for the Access-Control-Allow-Methods
		// header.
		allow_methods?: [...string]

		// Specifies the regular expression patterns that match allowed
		// origins. For
		// regular expression grammar please see
		// en.cppreference.com/w/cpp/regex/ecmascript
		// An origin is allowed if it matches either allow_origins or
		// allow_origin_regex.
		allow_origin_regexes?: [...string]

		// Specifies the list of origins that will be allowed to do CORS
		// requests. An
		// origin is allowed if it matches either allow_origins or
		// allow_origin_regex.
		allow_origins?: [...string]

		// If true, specifies the CORS policy is disabled.
		// which indicates that the CORS policy is in effect. Defaults to
		// false.
		disabled?: bool

		// Specifies the content for the Access-Control-Expose-Headers
		// header.
		expose_headers?: [...string]

		// Specifies how long the results of a preflight request can be
		// cached. This
		// translates to the content for the Access-Control-Max-Age
		// header.
		max_age?: number
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy": close({
		abort?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/abort", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/abort"]])
		delay?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/delay", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/delay"]])
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/abort": close({
		// The HTTP status code used to abort the request. The value must
		// be between 200
		// and 599 inclusive.
		http_status?: number

		// The percentage of traffic (connections/operations/requests)
		// which will be
		// aborted as part of fault injection. The value must be between
		// 0.0 and 100.0
		// inclusive.
		percentage?: number
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/delay": close({
		fixed_delay?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay"]])

		// The percentage of traffic (connections/operations/requests) on
		// which delay will
		// be introduced as part of fault injection. The value must be
		// between 0.0 and
		// 100.0 inclusive.
		percentage?: number
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/fault_injection_policy/$defs/delay/$defs/fixed_delay": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/max_stream_duration": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/request_mirror_policy": close({
		// The BackendService resource being mirrored to.
		backend_service!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/retry_policy": close({
		per_try_timeout?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/retry_policy/$defs/per_try_timeout", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/retry_policy/$defs/per_try_timeout"]])

		// Specifies the allowed number retries. This number must be > 0.
		num_retries!: number

		// Specfies one or more conditions when this retry rule applies.
		// Valid values are:
		//
		// * 5xx: Loadbalancer will attempt a retry if the backend service
		// responds with
		// any 5xx response code, or if the backend service does not
		// respond at all,
		// for example: disconnects, reset, read timeout, connection
		// failure, and refused
		// streams.
		// * gateway-error: Similar to 5xx, but only applies to response
		// codes
		// 502, 503 or 504.
		// * connect-failure: Loadbalancer will retry on failures
		// connecting to backend services, for example due to connection
		// timeouts.
		// * retriable-4xx: Loadbalancer will retry for retriable 4xx
		// response codes.
		// Currently the only retriable error supported is 409.
		// * refused-stream: Loadbalancer will retry if the backend
		// service resets the stream with a
		// REFUSED_STREAM error code. This reset type indicates that it is
		// safe to retry.
		// * cancelled: Loadbalancer will retry if the gRPC status code in
		// the response
		// header is set to cancelled
		// * deadline-exceeded: Loadbalancer will retry if the
		// gRPC status code in the response header is set to
		// deadline-exceeded
		// * resource-exhausted: Loadbalancer will retry if the gRPC
		// status code in the response
		// header is set to resource-exhausted
		// * unavailable: Loadbalancer will retry if the gRPC status code
		// in
		// the response header is set to unavailable
		retry_conditions?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/retry_policy/$defs/per_try_timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/timeout": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/url_rewrite": close({
		// Prior to forwarding the request to the selected service, the
		// request's host
		// header is replaced with contents of hostRewrite. The value must
		// be between 1 and
		// 255 characters.
		host_rewrite?: string

		// Prior to forwarding the request to the selected backend
		// service, the matching
		// portion of the request's path is replaced by pathPrefixRewrite.
		// The value must
		// be between 1 and 1024 characters.
		path_prefix_rewrite?: string

		// Prior to forwarding the request to the selected origin, if the
		// request matched a pathTemplateMatch, the matching portion of
		// the
		// request's path is replaced re-written using the pattern
		// specified
		// by pathTemplateRewrite.
		//
		// pathTemplateRewrite must be between 1 and 255 characters
		// (inclusive), must start with a '/', and must only use variables
		// captured by the route's pathTemplate matchers.
		//
		// pathTemplateRewrite may only be used when all of a route's
		// MatchRules specify pathTemplate.
		//
		// Only one of pathPrefixRewrite and pathTemplateRewrite may be
		// specified.
		path_template_rewrite?: string
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services": close({
		header_action?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action"]])

		// The default BackendService resource. Before
		// forwarding the request to backendService, the loadbalancer
		// applies any relevant
		// headerActions specified as part of this backendServiceWeight.
		backend_service!: string

		// Specifies the fraction of traffic sent to backendService,
		// computed as weight /
		// (sum of all weightedBackendService weights in routeAction) .
		// The selection of a
		// backend service is determined only for new traffic. Once a
		// user's request has
		// been directed to a backendService, subsequent requests will be
		// sent to the same
		// backendService as determined by the BackendService's session
		// affinity policy.
		// The value must be between 0 and 1000
		weight!: number
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action": close({
		request_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add"]])
		response_headers_to_add?: matchN(1, [_#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add", [..._#defs."/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add"]])

		// A list of header names for headers that need to be removed from
		// the request
		// prior to forwarding the request to the backendService.
		request_headers_to_remove?: [...string]

		// A list of header names for headers that need to be removed from
		// the response
		// prior to sending the response back to the client.
		response_headers_to_remove?: [...string]
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/request_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/route_action/$defs/weighted_backend_services/$defs/header_action/$defs/response_headers_to_add": close({
		// The name of the header.
		header_name!: string

		// The value of the header to add.
		header_value!: string

		// If false, headerValue is appended to any values that already
		// exist for the
		// header. If true, headerValue is set for the header, discarding
		// any values that
		// were set for that header.
		replace!: bool
	})

	_#defs: "/$defs/path_matcher/$defs/route_rules/$defs/url_redirect": close({
		// The host that will be used in the redirect response instead of
		// the one that was
		// supplied in the request. The value must be between 1 and 255
		// characters.
		host_redirect?: string

		// If set to true, the URL scheme in the redirected request is set
		// to https. If set
		// to false, the URL scheme of the redirected request will remain
		// the same as that
		// of the request. This must only be set for UrlMaps used in
		// TargetHttpProxys.
		// Setting this true for TargetHttpsProxy is not permitted.
		// Defaults to false.
		https_redirect?: bool

		// The path that will be used in the redirect response instead of
		// the one that was
		// supplied in the request. Only one of pathRedirect or
		// prefixRedirect must be
		// specified. The value must be between 1 and 1024 characters.
		path_redirect?: string

		// The prefix that replaces the prefixMatch specified in the
		// HttpRouteRuleMatch,
		// retaining the remaining portion of the URL before redirecting
		// the request.
		prefix_redirect?: string

		// The HTTP Status code to use for this RedirectAction. Supported
		// values are:
		//
		// * MOVED_PERMANENTLY_DEFAULT, which is the default value and
		// corresponds to 301.
		//
		// * FOUND, which corresponds to 302.
		//
		// * SEE_OTHER which corresponds to 303.
		//
		// * TEMPORARY_REDIRECT, which corresponds to 307. In this case,
		// the request method will be retained.
		//
		// * PERMANENT_REDIRECT, which corresponds to 308. In this case,
		// the request method will be retained. Possible values:
		// ["FOUND", "MOVED_PERMANENTLY_DEFAULT", "PERMANENT_REDIRECT",
		// "SEE_OTHER", "TEMPORARY_REDIRECT"]
		redirect_response_code?: string

		// If set to true, any accompanying query portion of the original
		// URL is removed
		// prior to redirecting the request. If set to false, the query
		// portion of the
		// original URL is retained. Defaults to false.
		strip_query?: bool
	})

	_#defs: "/$defs/test/$defs/headers": close({
		// Header name.
		name!: string

		// Header value.
		value!: string
	})
}
