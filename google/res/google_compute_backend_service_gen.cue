package res

import "list"

#google_compute_backend_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_backend_service")
	close({
		// Lifetime of cookies in seconds if session_affinity is
		// GENERATED_COOKIE. If set to 0, the cookie is non-persistent and
		// lasts
		// only until the end of the browser session (or equivalent). The
		// maximum allowed value for TTL is one day.
		//
		// When the load balancing scheme is INTERNAL, this field is not
		// used.
		affinity_cookie_ttl_sec?: number

		// Compress text responses using Brotli or gzip compression, based
		// on the client's Accept-Encoding header. Possible values:
		// ["AUTOMATIC", "DISABLED"]
		compression_mode?: string

		// Time for which instance will be drained (not accept new
		// connections, but still work to finish started).
		connection_draining_timeout_sec?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// Headers that the HTTP/S load balancer should add to proxied
		// requests.
		custom_request_headers?: [...string]

		// Headers that the HTTP/S load balancer should add to proxied
		// responses.
		custom_response_headers?: [...string]

		// An optional description of this resource.
		description?: string

		// The resource URL for the edge security policy associated with
		// this backend service.
		edge_security_policy?: string

		// If true, enable Cloud CDN for this BackendService.
		enable_cdn?: bool

		// Specifies the canary migration state. Possible values are
		// PREPARE, TEST_BY_PERCENTAGE, and
		// TEST_ALL_TRAFFIC.
		//
		// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the
		// state must be changed to
		// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before
		// the loadBalancingScheme can be
		// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE
		// state can be used to migrate
		// traffic by percentage using
		// externalManagedMigrationTestingPercentage.
		//
		// Rolling back a migration requires the states to be set in
		// reverse order. So changing the
		// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to
		// be set to TEST_ALL_TRAFFIC at
		// the same time. Optionally, the TEST_BY_PERCENTAGE state can be
		// used to migrate some traffic
		// back to EXTERNAL or PREPARE can be used to migrate all traffic
		// back to EXTERNAL. Possible values: ["PREPARE",
		// "TEST_BY_PERCENTAGE", "TEST_ALL_TRAFFIC"]
		external_managed_migration_state?: string

		// Determines the fraction of requests that should be processed by
		// the Global external
		// Application Load Balancer.
		//
		// The value of this field must be in the range [0, 100].
		//
		// Session affinity options will slightly affect this routing
		// behavior, for more details,
		// see: Session Affinity.
		//
		// This value can only be set if the loadBalancingScheme in the
		// backend service is set to
		// EXTERNAL (when using the Classic ALB) and the migration state
		// is TEST_BY_PERCENTAGE.
		external_managed_migration_testing_percentage?: number

		// Fingerprint of this resource. A hash of the contents stored in
		// this
		// object. This field is used in optimistic locking.
		fingerprint?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		generated_id?: number

		// The set of URLs to the HttpHealthCheck or HttpsHealthCheck
		// resource
		// for health checking this BackendService. Currently at most one
		// health
		// check can be specified.
		//
		// A health check must be specified unless the backend service
		// uses an internet
		// or serverless NEG as a backend.
		//
		// For internal load balancing, a URL to a HealthCheck resource
		// must be specified instead.
		health_checks?: [...string]
		id?: string

		// Specifies preference of traffic to the backend (from the proxy
		// and from the client for proxyless gRPC). Possible values:
		// ["IPV4_ONLY", "PREFER_IPV6", "IPV6_ONLY"]
		ip_address_selection_policy?: string
		backend?: matchN(1, [#backend, [...#backend]])
		cdn_policy?: matchN(1, [#cdn_policy, list.MaxItems(1) & [...#cdn_policy]])
		circuit_breakers?: matchN(1, [#circuit_breakers, list.MaxItems(1) & [...#circuit_breakers]])
		consistent_hash?: matchN(1, [#consistent_hash, list.MaxItems(1) & [...#consistent_hash]])
		custom_metrics?: matchN(1, [#custom_metrics, [...#custom_metrics]])
		iap?: matchN(1, [#iap, list.MaxItems(1) & [...#iap]])
		locality_lb_policies?: matchN(1, [#locality_lb_policies, [...#locality_lb_policies]])
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		max_stream_duration?: matchN(1, [#max_stream_duration, list.MaxItems(1) & [...#max_stream_duration]])
		outlier_detection?: matchN(1, [#outlier_detection, list.MaxItems(1) & [...#outlier_detection]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		security_settings?: matchN(1, [#security_settings, list.MaxItems(1) & [...#security_settings]])
		strong_session_affinity_cookie?: matchN(1, [#strong_session_affinity_cookie, list.MaxItems(1) & [...#strong_session_affinity_cookie]])
		timeouts?: #timeouts

		// Indicates whether the backend service will be used with
		// internal or
		// external load balancing. A backend service created for one type
		// of
		// load balancing cannot be used with the other. For more
		// information, refer to
		// [Choosing a load
		// balancer](https://cloud.google.com/load-balancing/docs/backend-service).
		// Default value: "EXTERNAL" Possible values: ["EXTERNAL",
		// "INTERNAL_SELF_MANAGED", "INTERNAL_MANAGED",
		// "EXTERNAL_MANAGED"]
		load_balancing_scheme?: string
		tls_settings?: matchN(1, [#tls_settings, list.MaxItems(1) & [...#tls_settings]])

		// The load balancing algorithm used within the scope of the
		// locality.
		// The possible values are:
		//
		// * 'ROUND_ROBIN': This is a simple policy in which each healthy
		// backend
		// is selected in round robin order.
		//
		// * 'LEAST_REQUEST': An O(1) algorithm which selects two random
		// healthy
		// hosts and picks the host which has fewer active requests.
		//
		// * 'RING_HASH': The ring/modulo hash load balancer implements
		// consistent
		// hashing to backends. The algorithm has the property that the
		// addition/removal of a host from a set of N hosts only affects
		// 1/N of the requests.
		//
		// * 'RANDOM': The load balancer selects a random healthy host.
		//
		// * 'ORIGINAL_DESTINATION': Backend host is selected based on the
		// client
		// connection metadata, i.e., connections are opened
		// to the same address as the destination address of
		// the incoming connection before the connection
		// was redirected to the load balancer.
		//
		// * 'MAGLEV': used as a drop in replacement for the ring hash
		// load balancer.
		// Maglev is not as stable as ring hash but has faster table
		// lookup
		// build times and host selection times. For more information
		// about
		// Maglev, refer to https://ai.google/research/pubs/pub44824
		//
		// * 'WEIGHTED_MAGLEV': Per-instance weighted Load Balancing via
		// health check
		// reported weights. Only applicable to loadBalancingScheme
		// EXTERNAL. If set, the Backend Service must
		// configure a non legacy HTTP-based Health Check, and
		// health check replies are expected to contain
		// non-standard HTTP response header field
		// X-Load-Balancing-Endpoint-Weight to specify the
		// per-instance weights. If set, Load Balancing is weight
		// based on the per-instance weights reported in the last
		// processed health check replies, as long as every
		// instance either reported a valid weight or had
		// UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains
		// equal-weight.
		//
		// * 'WEIGHTED_ROUND_ROBIN': Per-endpoint weighted round-robin
		// Load Balancing using weights computed
		// from Backend reported Custom Metrics. If set, the Backend
		// Service
		// responses are expected to contain non-standard HTTP response
		// header field
		// X-Endpoint-Load-Metrics. The reported metrics
		// to use for computing the weights are specified via the
		// backends[].customMetrics fields.
		//
		// locality_lb_policy is applicable to either:
		//
		// * A regional backend service with the service_protocol set to
		// HTTP, HTTPS, HTTP2 or H2C,
		// and loadBalancingScheme set to INTERNAL_MANAGED.
		// * A global backend service with the load_balancing_scheme set
		// to INTERNAL_SELF_MANAGED.
		// * A regional backend service with loadBalancingScheme set to
		// EXTERNAL (External Network
		// Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are
		// possible for External
		// Network Load Balancing. The default is MAGLEV.
		//
		// If session_affinity is not NONE, and locality_lb_policy is not
		// set to MAGLEV, WEIGHTED_MAGLEV,
		// or RING_HASH, session affinity settings will not take effect.
		//
		// Only ROUND_ROBIN and RING_HASH are supported when the backend
		// service is referenced
		// by a URL map that is bound to target gRPC proxy that has
		// validate_for_proxyless
		// field set to true. Possible values: ["ROUND_ROBIN",
		// "LEAST_REQUEST", "RING_HASH", "RANDOM",
		// "ORIGINAL_DESTINATION", "MAGLEV", "WEIGHTED_MAGLEV",
		// "WEIGHTED_ROUND_ROBIN"]
		locality_lb_policy?: string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!: string

		// Name of backend port. The same name should appear in the
		// instance
		// groups referenced by this service. Required when the load
		// balancing
		// scheme is EXTERNAL.
		port_name?: string
		project?:   string

		// The protocol this BackendService uses to communicate with
		// backends.
		// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2,
		// H2C, TCP, SSL, UDP
		// or GRPC. Refer to the documentation for the load balancers or
		// for Traffic Director
		// for more information. Must be set to GRPC when the backend
		// service is referenced
		// by a URL map that is bound to target gRPC proxy. Possible
		// values: ["HTTP", "HTTPS", "HTTP2", "TCP", "SSL", "UDP",
		// "GRPC", "UNSPECIFIED", "H2C"]
		protocol?: string

		// The security policy associated with this backend service.
		security_policy?: string
		self_link?:       string

		// URL to networkservices.ServiceLbPolicy resource.
		// Can only be set if load balancing scheme is EXTERNAL,
		// EXTERNAL_MANAGED, INTERNAL_MANAGED or INTERNAL_SELF_MANAGED
		// and the scope is global.
		service_lb_policy?: string

		// Type of session affinity to use. The default is NONE. Session
		// affinity is
		// not applicable if the protocol is UDP. Possible values:
		// ["NONE", "CLIENT_IP", "CLIENT_IP_PORT_PROTO",
		// "CLIENT_IP_PROTO", "GENERATED_COOKIE", "HEADER_FIELD",
		// "HTTP_COOKIE", "STRONG_COOKIE_AFFINITY"]
		session_affinity?: string

		// The backend service timeout has a different meaning depending
		// on the type of load balancer.
		// For more information see, [Backend service
		// settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
		// The default is 30 seconds.
		// The full range of timeout values allowed goes from 1 through
		// 2,147,483,647 seconds.
		timeout_sec?: number
	})

	#backend: close({
		// Specifies the balancing mode for this backend.
		//
		// For global HTTP(S) or TCP/SSL load balancing, the default is
		// UTILIZATION. Valid values are UTILIZATION, RATE (for HTTP(S)),
		// CUSTOM_METRICS (for HTTP(s)) and CONNECTION (for TCP/SSL).
		//
		// See the [Backend Services
		// Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
		// for an explanation of load balancing modes. Default value:
		// "UTILIZATION" Possible values: ["UTILIZATION", "RATE",
		// "CONNECTION", "CUSTOM_METRICS"]
		balancing_mode?: string

		// A multiplier applied to the group's maximum servicing capacity
		// (based on UTILIZATION, RATE or CONNECTION).
		//
		// Default value is 1, which means the group will serve up to 100%
		// of its configured capacity (depending on balancingMode). A
		// setting of 0 means the group is completely drained, offering
		// 0% of its available Capacity. Valid range is [0.0,1.0].
		capacity_scaler?: number

		// An optional description of this resource.
		// Provide this property when you create the resource.
		description?: string

		// The fully-qualified URL of an Instance Group or Network
		// Endpoint
		// Group resource. In case of instance group this defines the list
		// of instances that serve traffic. Member virtual machine
		// instances from each instance group must live in the same zone
		// as
		// the instance group itself. No two backends in a backend service
		// are allowed to use same Instance Group resource.
		//
		// For Network Endpoint Groups this defines list of endpoints. All
		// endpoints of Network Endpoint Group must be hosted on instances
		// located in the same zone as the Network Endpoint Group.
		//
		// Backend services cannot mix Instance Group and
		// Network Endpoint Group backends.
		//
		// Note that you must specify an Instance Group or Network
		// Endpoint
		// Group resource using the fully-qualified URL, rather than a
		// partial URL.
		group!: string

		// The max number of simultaneous connections for the group. Can
		// be used with either CONNECTION or UTILIZATION balancing modes.
		//
		// For CONNECTION mode, either maxConnections or one
		// of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
		// as appropriate for group type, must be set.
		max_connections?: number

		// The max number of simultaneous connections that a single
		// backend
		// network endpoint can handle. This is used to calculate the
		// capacity of the group. Can be used in either CONNECTION or
		// UTILIZATION balancing modes.
		//
		// For CONNECTION mode, either
		// maxConnections or maxConnectionsPerEndpoint must be set.
		max_connections_per_endpoint?: number

		// The max number of simultaneous connections that a single
		// backend instance can handle. This is used to calculate the
		// capacity of the group. Can be used in either CONNECTION or
		// UTILIZATION balancing modes.
		//
		// For CONNECTION mode, either maxConnections or
		// maxConnectionsPerInstance must be set.
		max_connections_per_instance?: number

		// The max requests per second (RPS) of the group.
		//
		// Can be used with either RATE or UTILIZATION balancing modes,
		// but required if RATE mode. For RATE mode, either maxRate or one
		// of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
		// group type, must be set.
		max_rate?: number
		custom_metrics?: matchN(1, [_#defs."/$defs/backend/$defs/custom_metrics", [..._#defs."/$defs/backend/$defs/custom_metrics"]])

		// The max requests per second (RPS) that a single backend network
		// endpoint can handle. This is used to calculate the capacity of
		// the group. Can be used in either balancing mode. For RATE mode,
		// either maxRate or maxRatePerEndpoint must be set.
		max_rate_per_endpoint?: number

		// The max requests per second (RPS) that a single backend
		// instance can handle. This is used to calculate the capacity of
		// the group. Can be used in either balancing mode. For RATE mode,
		// either maxRate or maxRatePerInstance must be set.
		max_rate_per_instance?: number

		// Used when balancingMode is UTILIZATION. This ratio defines the
		// CPU utilization target for the group. Valid range is [0.0,
		// 1.0].
		max_utilization?: number

		// This field indicates whether this backend should be fully
		// utilized before sending traffic to backends
		// with default preference. This field cannot be set when
		// loadBalancingScheme is set to 'EXTERNAL'. The possible values
		// are:
		// - PREFERRED: Backends with this preference level will be filled
		// up to their capacity limits first,
		// based on RTT.
		// - DEFAULT: If preferred backends don't have enough capacity,
		// backends in this layer would be used and
		// traffic would be assigned based on the load balancing algorithm
		// you use. This is the default Possible values: ["PREFERRED",
		// "DEFAULT"]
		preference?: string
	})

	#cdn_policy: close({
		// Specifies the cache setting for all responses from this
		// backend.
		// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL
		// and CACHE_ALL_STATIC Possible values: ["USE_ORIGIN_HEADERS",
		// "FORCE_CACHE_ALL", "CACHE_ALL_STATIC"]
		cache_mode?: string

		// Specifies the maximum allowed TTL for cached content served by
		// this origin.
		client_ttl?: number

		// Specifies the default TTL for cached content served by this
		// origin for responses
		// that do not have an existing valid TTL (max-age or s-max-age).
		default_ttl?: number

		// Specifies the maximum allowed TTL for cached content served by
		// this origin.
		max_ttl?: number

		// Negative caching allows per-status code TTLs to be set, in
		// order to apply fine-grained caching for common errors or
		// redirects.
		negative_caching?: bool

		// If true then Cloud CDN will combine multiple concurrent cache
		// fill requests into a small number of requests
		// to the origin.
		request_coalescing?: bool
		bypass_cache_on_request_headers?: matchN(1, [_#defs."/$defs/cdn_policy/$defs/bypass_cache_on_request_headers", [..._#defs."/$defs/cdn_policy/$defs/bypass_cache_on_request_headers"]])
		cache_key_policy?: matchN(1, [_#defs."/$defs/cdn_policy/$defs/cache_key_policy", list.MaxItems(1) & [..._#defs."/$defs/cdn_policy/$defs/cache_key_policy"]])
		negative_caching_policy?: matchN(1, [_#defs."/$defs/cdn_policy/$defs/negative_caching_policy", [..._#defs."/$defs/cdn_policy/$defs/negative_caching_policy"]])

		// Serve existing content from the cache (if available) when
		// revalidating content with the origin, or when an error is
		// encountered when refreshing the cache.
		serve_while_stale?: number

		// Maximum number of seconds the response to a signed URL request
		// will be considered fresh, defaults to 1hr (3600s). After this
		// time period, the response will be revalidated before
		// being served.
		//
		// When serving responses to signed URL requests, Cloud CDN will
		// internally behave as though all responses from this backend had
		// a
		// "Cache-Control: public, max-age=[TTL]" header, regardless of
		// any
		// existing Cache-Control header. The actual headers served in
		// responses will not be altered.
		signed_url_cache_max_age_sec?: number
	})

	#circuit_breakers: close({
		// The maximum number of connections to the backend cluster.
		// Defaults to 1024.
		max_connections?: number

		// The maximum number of pending requests to the backend cluster.
		// Defaults to 1024.
		max_pending_requests?: number

		// The maximum number of parallel requests to the backend cluster.
		// Defaults to 1024.
		max_requests?: number

		// Maximum requests for a single backend connection. This
		// parameter
		// is respected by both the HTTP/1.1 and HTTP/2 implementations.
		// If
		// not specified, there is no limit. Setting this parameter to 1
		// will effectively disable keep alive.
		max_requests_per_connection?: number

		// The maximum number of parallel retries to the backend cluster.
		// Defaults to 3.
		max_retries?: number
	})

	#consistent_hash: close({
		http_cookie?: matchN(1, [_#defs."/$defs/consistent_hash/$defs/http_cookie", list.MaxItems(1) & [..._#defs."/$defs/consistent_hash/$defs/http_cookie"]])

		// The hash based on the value of the specified header field.
		// This field is applicable if the sessionAffinity is set to
		// HEADER_FIELD.
		http_header_name?: string

		// The minimum number of virtual nodes to use for the hash ring.
		// Larger ring sizes result in more granular load
		// distributions. If the number of hosts in the load balancing
		// pool
		// is larger than the ring size, each host will be assigned a
		// single
		// virtual node.
		// Defaults to 1024.
		minimum_ring_size?: number
	})

	#custom_metrics: close({
		// If true, the metric data is not used for load balancing.
		dry_run!: bool

		// Name of a custom utilization signal. The name must be 1-64
		// characters
		// long and match the regular expression
		// [a-z]([-_.a-z0-9]*[a-z0-9])? which
		// means the first character must be a lowercase letter, and all
		// following
		// characters must be a dash, period, underscore, lowercase
		// letter, or
		// digit, except the last character, which cannot be a dash,
		// period, or
		// underscore. For usage guidelines, see Custom Metrics balancing
		// mode. This
		// field can only be used for a global or regional backend service
		// with the
		// loadBalancingScheme set to <code>EXTERNAL_MANAGED</code>,
		// <code>INTERNAL_MANAGED</code>
		// <code>INTERNAL_SELF_MANAGED</code>.
		name!: string
	})

	#iap: close({
		// Whether the serving infrastructure will authenticate and
		// authorize all incoming requests.
		enabled!: bool

		// OAuth2 Client ID for IAP
		oauth2_client_id?: string

		// OAuth2 Client Secret for IAP
		oauth2_client_secret?: string

		// OAuth2 Client Secret SHA-256 for IAP
		oauth2_client_secret_sha256?: string
	})

	#locality_lb_policies: close({
		custom_policy?: matchN(1, [_#defs."/$defs/locality_lb_policies/$defs/custom_policy", list.MaxItems(1) & [..._#defs."/$defs/locality_lb_policies/$defs/custom_policy"]])
		policy?: matchN(1, [_#defs."/$defs/locality_lb_policies/$defs/policy", list.MaxItems(1) & [..._#defs."/$defs/locality_lb_policies/$defs/policy"]])
	})

	#log_config: close({
		// Whether to enable logging for the load balancer traffic served
		// by this backend service.
		enable?: bool

		// This field can only be specified if logging is enabled for this
		// backend service and "logConfig.optionalMode"
		// was set to CUSTOM. Contains a list of optional fields you want
		// to include in the logs.
		// For example: serverInstance, serverGkeDetails.cluster,
		// serverGkeDetails.pod.podNamespace
		// For example: orca_load_report, tls.protocol
		optional_fields?: [...string]

		// Specifies the optional logging mode for the load balancer
		// traffic.
		// Supported values: INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL,
		// CUSTOM. Possible values: ["INCLUDE_ALL_OPTIONAL",
		// "EXCLUDE_ALL_OPTIONAL", "CUSTOM"]
		optional_mode?: string

		// This field can only be specified if logging is enabled for this
		// backend service. The value of
		// the field must be in [0, 1]. This configures the sampling rate
		// of requests to the load balancer
		// where 1.0 means all logged requests are reported and 0.0 means
		// no logged requests are reported.
		// The default value is 1.0.
		sample_rate?: number
	})

	#max_stream_duration: close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution.
		// Durations less than one second are represented with a 0 seconds
		// field and a positive nanos field.
		// Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000 inclusive. (int64 format)
		seconds!: string
	})

	#outlier_detection: close({
		// Number of errors before a host is ejected from the connection
		// pool. When the
		// backend host is accessed over HTTP, a 5xx return code qualifies
		// as an error.
		// Defaults to 5.
		consecutive_errors?: number

		// The number of consecutive gateway failures (502, 503, 504
		// status or connection
		// errors that are mapped to one of those status codes) before a
		// consecutive
		// gateway failure ejection occurs. Defaults to 5.
		consecutive_gateway_failure?: number

		// The percentage chance that a host will be actually ejected when
		// an outlier
		// status is detected through consecutive 5xx. This setting can be
		// used to disable
		// ejection or to ramp it up slowly. Defaults to 100.
		enforcing_consecutive_errors?: number

		// The percentage chance that a host will be actually ejected when
		// an outlier
		// status is detected through consecutive gateway failures. This
		// setting can be
		// used to disable ejection or to ramp it up slowly. Defaults to
		// 0.
		enforcing_consecutive_gateway_failure?: number

		// The percentage chance that a host will be actually ejected when
		// an outlier
		// status is detected through success rate statistics. This
		// setting can be used to
		// disable ejection or to ramp it up slowly. Defaults to 100.
		enforcing_success_rate?: number

		// Maximum percentage of hosts in the load balancing pool for the
		// backend service
		// that can be ejected. Defaults to 10%.
		max_ejection_percent?: number
		base_ejection_time?: matchN(1, [_#defs."/$defs/outlier_detection/$defs/base_ejection_time", list.MaxItems(1) & [..._#defs."/$defs/outlier_detection/$defs/base_ejection_time"]])
		interval?: matchN(1, [_#defs."/$defs/outlier_detection/$defs/interval", list.MaxItems(1) & [..._#defs."/$defs/outlier_detection/$defs/interval"]])

		// The number of hosts in a cluster that must have enough request
		// volume to detect
		// success rate outliers. If the number of hosts is less than this
		// setting, outlier
		// detection via success rate statistics is not performed for any
		// host in the
		// cluster. Defaults to 5.
		success_rate_minimum_hosts?: number

		// The minimum number of total requests that must be collected in
		// one interval (as
		// defined by the interval duration above) to include this host in
		// success rate
		// based outlier detection. If the volume is lower than this
		// setting, outlier
		// detection via success rate statistics is not performed for that
		// host. Defaults
		// to 100.
		success_rate_request_volume?: number

		// This factor is used to determine the ejection threshold for
		// success rate outlier
		// ejection. The ejection threshold is the difference between the
		// mean success
		// rate, and the product of this factor and the standard deviation
		// of the mean
		// success rate: mean - (stdev * success_rate_stdev_factor). This
		// factor is divided
		// by a thousand to get a double. That is, if the desired factor
		// is 1.9, the
		// runtime value should be 1900. Defaults to 1900.
		success_rate_stdev_factor?: number
	})

	#params: close({
		// Resource manager tags to be bound to the backend service. Tag
		// keys and values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456.
		resource_manager_tags?: [string]: string
	})

	#security_settings: close({
		aws_v4_authentication?: matchN(1, [_#defs."/$defs/security_settings/$defs/aws_v4_authentication", list.MaxItems(1) & [..._#defs."/$defs/security_settings/$defs/aws_v4_authentication"]])

		// ClientTlsPolicy is a resource that specifies how a client
		// should authenticate
		// connections to backends of a service. This resource itself does
		// not affect
		// configuration unless it is attached to a backend service
		// resource.
		client_tls_policy?: string

		// A list of alternate names to verify the subject identity in the
		// certificate.
		// If specified, the client will verify that the server
		// certificate's subject
		// alt name matches one of the specified values.
		subject_alt_names?: [...string]
	})

	#strong_session_affinity_cookie: close({
		ttl?: matchN(1, [_#defs."/$defs/strong_session_affinity_cookie/$defs/ttl", list.MaxItems(1) & [..._#defs."/$defs/strong_session_affinity_cookie/$defs/ttl"]])

		// Name of the cookie.
		name?: string

		// Path to set for the cookie.
		path?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tls_settings: close({
		subject_alt_names?: matchN(1, [_#defs."/$defs/tls_settings/$defs/subject_alt_names", [..._#defs."/$defs/tls_settings/$defs/subject_alt_names"]])

		// Reference to the BackendAuthenticationConfig resource from the
		// networksecurity.googleapis.com namespace.
		// Can be used in authenticating TLS connections to the backend,
		// as specified by the authenticationMode field.
		// Can only be specified if authenticationMode is not NONE.
		authentication_config?: string

		// Server Name Indication - see RFC3546 section 3.1. If set, the
		// load balancer sends this string as the SNI hostname in the
		// TLS connection to the backend, and requires that this string
		// match a Subject Alternative Name (SAN) in the backend's
		// server certificate. With a Regional Internet NEG backend, if
		// the SNI is specified here, the load balancer uses it
		// regardless of whether the Regional Internet NEG is specified
		// with FQDN or IP address and port.
		sni?: string
	})

	_#defs: "/$defs/backend/$defs/custom_metrics": close({
		// If true, the metric data is collected and reported to Cloud
		// Monitoring, but is not used for load balancing.
		dry_run!: bool

		// Optional parameter to define a target utilization for the
		// Custom Metrics
		// balancing mode. The valid range is <code>[0.0, 1.0]</code>.
		max_utilization?: number

		// Name of a custom utilization signal. The name must be 1-64
		// characters
		// long and match the regular expression
		// [a-z]([-_.a-z0-9]*[a-z0-9])? which
		// means the first character must be a lowercase letter, and all
		// following
		// characters must be a dash, period, underscore, lowercase
		// letter, or
		// digit, except the last character, which cannot be a dash,
		// period, or
		// underscore. For usage guidelines, see Custom Metrics balancing
		// mode. This
		// field can only be used for a global or regional backend service
		// with the
		// loadBalancingScheme set to <code>EXTERNAL_MANAGED</code>,
		// <code>INTERNAL_MANAGED</code>
		// <code>INTERNAL_SELF_MANAGED</code>.
		name!: string
	})

	_#defs: "/$defs/cdn_policy/$defs/bypass_cache_on_request_headers": close({
		// The header field name to match on when bypassing cache. Values
		// are case-insensitive.
		header_name!: string
	})

	_#defs: "/$defs/cdn_policy/$defs/cache_key_policy": close({
		// If true requests to different hosts will be cached separately.
		include_host?: bool

		// Allows HTTP request headers (by name) to be used in the
		// cache key.
		include_http_headers?: [...string]

		// Names of cookies to include in cache keys.
		include_named_cookies?: [...string]

		// If true, http and https requests will be cached separately.
		include_protocol?: bool

		// If true, include query string parameters in the cache key
		// according to query_string_whitelist and
		// query_string_blacklist. If neither is set, the entire query
		// string will be included.
		//
		// If false, the query string will be excluded from the cache
		// key entirely.
		include_query_string?: bool

		// Names of query string parameters to exclude in cache keys.
		//
		// All other parameters will be included. Either specify
		// query_string_whitelist or query_string_blacklist, not both.
		// '&' and '=' will be percent encoded and not treated as
		// delimiters.
		query_string_blacklist?: [...string]

		// Names of query string parameters to include in cache keys.
		//
		// All other parameters will be excluded. Either specify
		// query_string_whitelist or query_string_blacklist, not both.
		// '&' and '=' will be percent encoded and not treated as
		// delimiters.
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

	_#defs: "/$defs/consistent_hash/$defs/http_cookie": close({
		ttl?: matchN(1, [_#defs."/$defs/consistent_hash/$defs/http_cookie/$defs/ttl", list.MaxItems(1) & [..._#defs."/$defs/consistent_hash/$defs/http_cookie/$defs/ttl"]])

		// Name of the cookie.
		name?: string

		// Path to set for the cookie.
		path?: string
	})

	_#defs: "/$defs/consistent_hash/$defs/http_cookie/$defs/ttl": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must
		// be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second.
		// Must be from 0 to 315,576,000,000 inclusive.
		seconds!: number
	})

	_#defs: "/$defs/locality_lb_policies/$defs/custom_policy": close({
		// An optional, arbitrary JSON object with configuration data,
		// understood
		// by a locally installed custom policy implementation.
		data?: string

		// Identifies the custom policy.
		//
		// The value should match the type the custom implementation is
		// registered
		// with on the gRPC clients. It should follow protocol buffer
		// message naming conventions and include the full path (e.g.
		// myorg.CustomLbPolicy). The maximum length is 256 characters.
		//
		// Note that specifying the same custom policy more than once for
		// a
		// backend is not a valid configuration and will be rejected.
		name!: string
	})

	_#defs: "/$defs/locality_lb_policies/$defs/policy": close({
		// The name of a locality load balancer policy to be used. The
		// value
		// should be one of the predefined ones as supported by
		// localityLbPolicy,
		// although at the moment only ROUND_ROBIN is supported.
		//
		// This field should only be populated when the customPolicy field
		// is not
		// used.
		//
		// Note that specifying the same policy more than once for a
		// backend is
		// not a valid configuration and will be rejected.
		//
		// The possible values are:
		//
		// * 'ROUND_ROBIN': This is a simple policy in which each healthy
		// backend
		// is selected in round robin order.
		//
		// * 'LEAST_REQUEST': An O(1) algorithm which selects two random
		// healthy
		// hosts and picks the host which has fewer active requests.
		//
		// * 'RING_HASH': The ring/modulo hash load balancer implements
		// consistent
		// hashing to backends. The algorithm has the property that the
		// addition/removal of a host from a set of N hosts only affects
		// 1/N of the requests.
		//
		// * 'RANDOM': The load balancer selects a random healthy host.
		//
		// * 'ORIGINAL_DESTINATION': Backend host is selected based on the
		// client
		// connection metadata, i.e., connections are opened
		// to the same address as the destination address of
		// the incoming connection before the connection
		// was redirected to the load balancer.
		//
		// * 'MAGLEV': used as a drop in replacement for the ring hash
		// load balancer.
		// Maglev is not as stable as ring hash but has faster table
		// lookup
		// build times and host selection times. For more information
		// about
		// Maglev, refer to https://ai.google/research/pubs/pub44824
		// Possible values: ["ROUND_ROBIN", "LEAST_REQUEST", "RING_HASH",
		// "RANDOM", "ORIGINAL_DESTINATION", "MAGLEV"]
		name!: string
	})

	_#defs: "/$defs/outlier_detection/$defs/base_ejection_time": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: number
	})

	_#defs: "/$defs/outlier_detection/$defs/interval": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations
		// less than one second are represented with a 0 'seconds' field
		// and a positive
		// 'nanos' field. Must be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second. Must be from 0 to
		// 315,576,000,000
		// inclusive.
		seconds!: number
	})

	_#defs: "/$defs/security_settings/$defs/aws_v4_authentication": close({
		// The access key used for s3 bucket authentication.
		// Required for updating or creating a backend that uses AWS v4
		// signature authentication, but will not be returned as part of
		// the configuration when queried with a REST API GET request.
		access_key?: string

		// The identifier of an access key used for s3 bucket
		// authentication.
		access_key_id?: string

		// The optional version identifier for the access key. You can use
		// this to keep track of different iterations of your access key.
		access_key_version?: string

		// The name of the cloud region of your origin. This is a
		// free-form field with the name of the region your cloud uses to
		// host your origin.
		// For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
		origin_region?: string
	})

	_#defs: "/$defs/strong_session_affinity_cookie/$defs/ttl": close({
		// Span of time that's a fraction of a second at nanosecond
		// resolution. Durations less than one second are represented
		// with a 0 seconds field and a positive nanos field. Must
		// be from 0 to 999,999,999 inclusive.
		nanos?: number

		// Span of time at a resolution of a second.
		// Must be from 0 to 315,576,000,000 inclusive.
		seconds!: number
	})

	_#defs: "/$defs/tls_settings/$defs/subject_alt_names": close({
		// The SAN specified as a DNS Name.
		dns_name?: string

		// The SAN specified as a URI.
		uniform_resource_identifier?: string
	})
}
