package res

import "list"

#google_network_services_http_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_http_route")
	close({
		// Time the HttpRoute was created in UTC.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Gateways defines a list of gateways this HttpRoute is attached
		// to, as one of the routing rules to route the requests served
		// by the gateway.
		// Each gateway reference should match the pattern:
		// projects/*/locations/global/gateways/<gateway_name>
		gateways?: [...string]

		// Set of hosts that should match against the HTTP host header to
		// select a HttpRoute to process the request.
		hostnames!: [...string]
		id?: string

		// Set of label tags associated with the HttpRoute resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Meshes defines a list of meshes this HttpRoute is attached to,
		// as one of the routing rules to route the requests served by
		// the mesh.
		// Each mesh reference should match the pattern:
		// projects/*/locations/global/meshes/<mesh_name>.
		// The attached Mesh should be of a type SIDECAR.
		meshes?: [...string]

		// Name of the HttpRoute resource.
		name!:    string
		project?: string
		rules!: matchN(1, [#rules, [_, ...] & [...#rules]])
		timeouts?: #timeouts

		// Server-defined URL of this resource.
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time the HttpRoute was updated in UTC.
		update_time?: string
	})

	#rules: close({
		action?: matchN(1, [_#defs."/$defs/rules/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action"]])
		matches?: matchN(1, [_#defs."/$defs/rules/$defs/matches", [..._#defs."/$defs/rules/$defs/matches"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rules/$defs/action": close({
		cors_policy?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/cors_policy", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/cors_policy"]])
		destinations?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/destinations", [..._#defs."/$defs/rules/$defs/action/$defs/destinations"]])

		// Specifies the timeout for selected route.
		timeout?: string
		fault_injection_policy?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy"]])
		redirect?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/redirect", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/redirect"]])
		request_header_modifier?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/request_header_modifier", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/request_header_modifier"]])
		request_mirror_policy?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/request_mirror_policy", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/request_mirror_policy"]])
		response_header_modifier?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/response_header_modifier", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/response_header_modifier"]])
		retry_policy?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/retry_policy"]])
		url_rewrite?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/url_rewrite", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/url_rewrite"]])
	})

	_#defs: "/$defs/rules/$defs/action/$defs/cors_policy": close({
		// In response to a preflight request, setting this to true
		// indicates that the actual request can include user
		// credentials.
		allow_credentials?: bool

		// Specifies the content for Access-Control-Allow-Headers header.
		allow_headers?: [...string]

		// Specifies the content for Access-Control-Allow-Methods header.
		allow_methods?: [...string]

		// Specifies the regular expression patterns that match allowed
		// origins.
		allow_origin_regexes?: [...string]

		// Specifies the list of origins that will be allowed to do CORS
		// requests.
		allow_origins?: [...string]

		// If true, the CORS policy is disabled. The default value is
		// false, which indicates that the CORS policy is in effect.
		disabled?: bool

		// Specifies the content for Access-Control-Expose-Headers header.
		expose_headers?: [...string]

		// Specifies how long result of a preflight request can be cached
		// in seconds.
		max_age?: string
	})

	_#defs: "/$defs/rules/$defs/action/$defs/destinations": close({
		// The URL of a BackendService to route traffic to.
		service_name?: string

		// Specifies the proportion of requests forwarded to the backend
		// referenced by the serviceName field. This is computed as:
		// weight/Sum(weights in this destination list). For non-zero
		// values, there may be some epsilon from the exact proportion
		// defined here depending on the precision an implementation
		// supports.
		// If only one serviceName is specified and it has a weight
		// greater than 0, 100% of the traffic is forwarded to that
		// backend.
		// If weights are specified for any one service name, they need to
		// be specified for all of them.
		// If weights are unspecified for all services, then, traffic is
		// distributed in equal proportions to all of them.
		weight?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/fault_injection_policy": close({
		abort?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/abort", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/abort"]])
		delay?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/delay", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/delay"]])
	})

	_#defs: "/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/abort": close({
		// The HTTP status code used to abort the request.
		http_status?: number

		// The percentage of traffic which will be aborted.
		percentage?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/fault_injection_policy/$defs/delay": close({
		// Specify a fixed delay before forwarding the request.
		fixed_delay?: string

		// The percentage of traffic on which delay will be injected.
		percentage?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/redirect": close({
		// The host that will be used in the redirect response instead of
		// the one that was supplied in the request.
		host_redirect?: string

		// If set to true, the URL scheme in the redirected request is set
		// to https.
		https_redirect?: bool

		// The path that will be used in the redirect response instead of
		// the one that was supplied in the request. pathRedirect can not
		// be supplied together with prefixRedirect. Supply one alone or
		// neither. If neither is supplied, the path of the original
		// request will be used for the redirect.
		path_redirect?: string

		// The port that will be used in the redirected request instead of
		// the one that was supplied in the request.
		port_redirect?: number

		// Indicates that during redirection, the matched prefix (or path)
		// should be swapped with this value.
		prefix_rewrite?: string

		// The HTTP Status code to use for the redirect.
		response_code?: string

		// If set to true, any accompanying query portion of the original
		// URL is removed prior to redirecting the request.
		strip_query?: bool
	})

	_#defs: "/$defs/rules/$defs/action/$defs/request_header_modifier": close({
		// Add the headers with given map where key is the name of the
		// header, value is the value of the header.
		add?: [string]: string

		// Remove headers (matching by header names) specified in the
		// list.
		remove?: [...string]

		// Completely overwrite/replace the headers with given map where
		// key is the name of the header, value is the value of the
		// header.
		set?: [string]: string
	})

	_#defs: "/$defs/rules/$defs/action/$defs/request_mirror_policy": close({
		destination?: matchN(1, [_#defs."/$defs/rules/$defs/action/$defs/request_mirror_policy/$defs/destination", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/action/$defs/request_mirror_policy/$defs/destination"]])
	})

	_#defs: "/$defs/rules/$defs/action/$defs/request_mirror_policy/$defs/destination": close({
		// The URL of a BackendService to route traffic to.
		service_name?: string

		// Specifies the proportion of requests forwarded to the backend
		// referenced by the serviceName field. This is computed as:
		// weight/Sum(weights in this destination list). For non-zero
		// values, there may be some epsilon from the exact proportion
		// defined here depending on the precision an implementation
		// supports.
		// If only one serviceName is specified and it has a weight
		// greater than 0, 100% of the traffic is forwarded to that
		// backend.
		// If weights are specified for any one service name, they need to
		// be specified for all of them.
		// If weights are unspecified for all services, then, traffic is
		// distributed in equal proportions to all of them.
		weight?: number
	})

	_#defs: "/$defs/rules/$defs/action/$defs/response_header_modifier": close({
		// Add the headers with given map where key is the name of the
		// header, value is the value of the header.
		add?: [string]: string

		// Remove headers (matching by header names) specified in the
		// list.
		remove?: [...string]

		// Completely overwrite/replace the headers with given map where
		// key is the name of the header, value is the value of the
		// header.
		set?: [string]: string
	})

	_#defs: "/$defs/rules/$defs/action/$defs/retry_policy": close({
		// Specifies the allowed number of retries.
		num_retries?: number

		// Specifies a non-zero timeout per retry attempt. A duration in
		// seconds with up to nine fractional digits, ending with 's'.
		// Example: "3.5s".
		per_try_timeout?: string

		// Specifies one or more conditions when this retry policy
		// applies.
		retry_conditions?: [...string]
	})

	_#defs: "/$defs/rules/$defs/action/$defs/url_rewrite": close({
		// Prior to forwarding the request to the selected destination,
		// the requests host header is replaced by this value.
		host_rewrite?: string

		// Prior to forwarding the request to the selected destination,
		// the matching portion of the requests path is replaced by this
		// value.
		path_prefix_rewrite?: string
	})

	_#defs: "/$defs/rules/$defs/matches": close({
		// The HTTP request path value should exactly match this value.
		full_path_match?: string

		// Specifies if prefixMatch and fullPathMatch matches are case
		// sensitive. The default value is false.
		ignore_case?: bool

		// The HTTP request path value must begin with specified
		// prefixMatch. prefixMatch must begin with a /.
		prefix_match?: string

		// The HTTP request path value must satisfy the regular expression
		// specified by regexMatch after removing any query parameters
		// and anchor supplied with the original URL. For regular
		// expression grammar, please see
		// https://github.com/google/re2/wiki/Syntax
		regex_match?: string
		headers?: matchN(1, [_#defs."/$defs/rules/$defs/matches/$defs/headers", [..._#defs."/$defs/rules/$defs/matches/$defs/headers"]])
		query_parameters?: matchN(1, [_#defs."/$defs/rules/$defs/matches/$defs/query_parameters", [..._#defs."/$defs/rules/$defs/matches/$defs/query_parameters"]])
	})

	_#defs: "/$defs/rules/$defs/matches/$defs/headers": close({
		// The value of the header should match exactly the content of
		// exactMatch.
		exact_match?: string

		// The name of the HTTP header to match against.
		header?: string

		// If specified, the match result will be inverted before
		// checking. Default value is set to false.
		invert_match?: bool

		// The value of the header must start with the contents of
		// prefixMatch.
		prefix_match?: string

		// A header with headerName must exist. The match takes place
		// whether or not the header has a value.
		present_match?: bool

		// The value of the header must match the regular expression
		// specified in regexMatch.
		regex_match?: string
		range_match?: matchN(1, [_#defs."/$defs/rules/$defs/matches/$defs/headers/$defs/range_match", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/matches/$defs/headers/$defs/range_match"]])

		// The value of the header must end with the contents of
		// suffixMatch.
		suffix_match?: string
	})

	_#defs: "/$defs/rules/$defs/matches/$defs/headers/$defs/range_match": close({
		// End of the range (exclusive).
		end!: number

		// Start of the range (inclusive).
		start!: number
	})

	_#defs: "/$defs/rules/$defs/matches/$defs/query_parameters": close({
		// The value of the query parameter must exactly match the
		// contents of exactMatch.
		exact_match?: string

		// Specifies that the QueryParameterMatcher matches if request
		// contains query parameter, irrespective of whether the
		// parameter has a value or not.
		present_match?: bool

		// The name of the query parameter to match.
		query_parameter?: string

		// The value of the query parameter must match the regular
		// expression specified by regexMatch.For regular expression
		// grammar, please see https://github.com/google/re2/wiki/Syntax
		regex_match?: string
	})
}
