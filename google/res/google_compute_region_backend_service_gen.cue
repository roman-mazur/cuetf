package res

import "list"

#google_compute_region_backend_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_region_backend_service")
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

		// Time for which instance will be drained (not accept new
		// connections, but still work to finish started).
		connection_draining_timeout_sec?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// If true, enable Cloud CDN for this RegionBackendService.
		enable_cdn?: bool

		// Fingerprint of this resource. A hash of the contents stored in
		// this
		// object. This field is used in optimistic locking.
		fingerprint?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		generated_id?: number

		// The set of URLs to HealthCheck resources for health checking
		// this RegionBackendService. Currently at most one health
		// check can be specified.
		//
		// A health check must be specified unless the backend service
		// uses an internet
		// or serverless NEG as a backend.
		health_checks?: [...string]
		id?: string

		// Specifies preference of traffic to the backend (from the proxy
		// and from the client for proxyless gRPC). Possible values:
		// ["IPV4_ONLY", "PREFER_IPV6", "IPV6_ONLY"]
		ip_address_selection_policy?: string

		// Indicates what kind of load balancing this regional backend
		// service
		// will be used for. A backend service created for one type of
		// load
		// balancing cannot be used with the other(s). For more
		// information, refer to
		// [Choosing a load
		// balancer](https://cloud.google.com/load-balancing/docs/backend-service).
		// Default value: "INTERNAL" Possible values: ["EXTERNAL",
		// "EXTERNAL_MANAGED", "INTERNAL", "INTERNAL_MANAGED"]
		load_balancing_scheme?: string

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

		// The URL of the network to which this backend service belongs.
		// This field must be set for Internal Passthrough Network Load
		// Balancers when the haPolicy is enabled, and for External
		// Passthrough Network Load Balancers when the haPolicy
		// fastIpMove is enabled.
		// This field can only be specified when the load balancing scheme
		// is set to INTERNAL, or when the load balancing scheme is set
		// to EXTERNAL and haPolicy fastIpMove is enabled.
		// Changes to this field force recreation of the resource.
		network?: string
		backend?: matchN(1, [#backend, [...#backend]])
		cdn_policy?: matchN(1, [#cdn_policy, list.MaxItems(1) & [...#cdn_policy]])
		circuit_breakers?: matchN(1, [#circuit_breakers, list.MaxItems(1) & [...#circuit_breakers]])
		consistent_hash?: matchN(1, [#consistent_hash, list.MaxItems(1) & [...#consistent_hash]])
		custom_metrics?: matchN(1, [#custom_metrics, [...#custom_metrics]])
		failover_policy?: matchN(1, [#failover_policy, list.MaxItems(1) & [...#failover_policy]])
		ha_policy?: matchN(1, [#ha_policy, list.MaxItems(1) & [...#ha_policy]])
		iap?: matchN(1, [#iap, list.MaxItems(1) & [...#iap]])
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		outlier_detection?: matchN(1, [#outlier_detection, list.MaxItems(1) & [...#outlier_detection]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		strong_session_affinity_cookie?: matchN(1, [#strong_session_affinity_cookie, list.MaxItems(1) & [...#strong_session_affinity_cookie]])

		// A named port on a backend instance group representing the port
		// for
		// communication to the backend VMs in that group. Required when
		// the
		// loadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED,
		// INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED
		// and the backends are instance groups. The named port must be
		// defined on each
		// backend instance group. This parameter has no meaning if the
		// backends are NEGs. API sets a
		// default of "http" if not given.
		// Must be omitted when the loadBalancingScheme is INTERNAL
		// (Internal TCP/UDP Load Balancing).
		port_name?: string
		timeouts?:  #timeouts
		project?:   string

		// The protocol this BackendService uses to communicate with
		// backends.
		// The default is HTTP. Possible values are HTTP, HTTPS, HTTP2,
		// H2C, TCP, SSL, UDP
		// or GRPC. Refer to the documentation for the load balancers or
		// for Traffic Director
		// for more information. Possible values: ["HTTP", "HTTPS",
		// "HTTP2", "TCP", "SSL", "UDP", "GRPC", "UNSPECIFIED", "H2C"]
		protocol?: string

		// The Region in which the created backend service should reside.
		// If it is not provided, the provider region is used.
		region?: string

		// The security policy associated with this backend service.
		security_policy?: string
		self_link?:       string

		// Type of session affinity to use. The default is NONE. Session
		// affinity is
		// not applicable if the protocol is UDP. Possible values:
		// ["NONE", "CLIENT_IP", "CLIENT_IP_PORT_PROTO",
		// "CLIENT_IP_PROTO", "GENERATED_COOKIE", "HEADER_FIELD",
		// "HTTP_COOKIE", "CLIENT_IP_NO_DESTINATION",
		// "STRONG_COOKIE_AFFINITY"]
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
		// See the [Backend Services
		// Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
		// for an explanation of load balancing modes. Default value:
		// "UTILIZATION" Possible values: ["UTILIZATION", "RATE",
		// "CONNECTION", "CUSTOM_METRICS"]
		balancing_mode?: string

		// A multiplier applied to the group's maximum servicing capacity
		// (based on UTILIZATION, RATE or CONNECTION).
		//
		// ~>**NOTE**: This field cannot be set for
		// INTERNAL region backend services (default loadBalancingScheme),
		// but is required for non-INTERNAL backend service. The total
		// capacity_scaler for all backends must be non-zero.
		//
		// A setting of 0 means the group is completely drained, offering
		// 0% of its available Capacity. Valid range is [0.0,1.0].
		capacity_scaler?: number

		// An optional description of this resource.
		// Provide this property when you create the resource.
		description?: string

		// This field designates whether this is a failover backend. More
		// than one failover backend can be configured for a given
		// RegionBackendService.
		failover?: bool

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
		// When the 'load_balancing_scheme' is INTERNAL, only instance
		// groups
		// are supported.
		//
		// Note that you must specify an Instance Group or Network
		// Endpoint
		// Group resource using the fully-qualified URL, rather than a
		// partial URL.
		group!: string

		// The max number of simultaneous connections for the group. Can
		// be used with either CONNECTION or UTILIZATION balancing modes.
		// Cannot be set for INTERNAL backend services.
		//
		// For CONNECTION mode, either maxConnections or one
		// of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
		// as appropriate for group type, must be set.
		max_connections?: number

		// The max number of simultaneous connections that a single
		// backend
		// network endpoint can handle. Cannot be set
		// for INTERNAL backend services.
		//
		// This is used to calculate the capacity of the group. Can be
		// used in either CONNECTION or UTILIZATION balancing modes. For
		// CONNECTION mode, either maxConnections or
		// maxConnectionsPerEndpoint must be set.
		max_connections_per_endpoint?: number

		// The max number of simultaneous connections that a single
		// backend instance can handle. Cannot be set for INTERNAL backend
		// services.
		//
		// This is used to calculate the capacity of the group.
		// Can be used in either CONNECTION or UTILIZATION balancing
		// modes.
		// For CONNECTION mode, either maxConnections or
		// maxConnectionsPerInstance must be set.
		max_connections_per_instance?: number
		custom_metrics?: matchN(1, [_#defs."/$defs/backend/$defs/custom_metrics", [..._#defs."/$defs/backend/$defs/custom_metrics"]])

		// The max requests per second (RPS) of the group. Cannot be set
		// for INTERNAL backend services.
		//
		// Can be used with either RATE or UTILIZATION balancing modes,
		// but required if RATE mode. Either maxRate or one
		// of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
		// group type, must be set.
		max_rate?: number

		// The max requests per second (RPS) that a single backend network
		// endpoint can handle. This is used to calculate the capacity of
		// the group. Can be used in either balancing mode. For RATE mode,
		// either maxRate or maxRatePerEndpoint must be set. Cannot be set
		// for INTERNAL backend services.
		max_rate_per_endpoint?: number

		// The max requests per second (RPS) that a single backend
		// instance can handle. This is used to calculate the capacity of
		// the group. Can be used in either balancing mode. For RATE mode,
		// either maxRate or maxRatePerInstance must be set. Cannot be set
		// for INTERNAL backend services.
		max_rate_per_instance?: number

		// Used when balancingMode is UTILIZATION. This ratio defines the
		// CPU utilization target for the group. Valid range is [0.0,
		// 1.0].
		// Cannot be set for INTERNAL backend services.
		max_utilization?: number
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

	#failover_policy: close({
		// On failover or failback, this field indicates whether
		// connection drain
		// will be honored. Setting this to true has the following effect:
		// connections
		// to the old active pool are not drained. Connections to the new
		// active pool
		// use the timeout of 10 min (currently fixed). Setting to false
		// has the
		// following effect: both old and new connections will have a
		// drain timeout
		// of 10 min.
		// This can be set to true only if the protocol is TCP.
		// The default is false.
		disable_connection_drain_on_failover?: bool

		// This option is used only when no healthy VMs are detected in
		// the primary
		// and backup instance groups. When set to true, traffic is
		// dropped. When
		// set to false, new connections are sent across all VMs in the
		// primary group.
		// The default is false.
		drop_traffic_if_unhealthy?: bool

		// The value of the field must be in [0, 1]. If the ratio of the
		// healthy
		// VMs in the primary backend is at or below this number, traffic
		// arriving
		// at the load-balanced IP will be directed to the failover
		// backend.
		// In case where 'failoverRatio' is not set or all the VMs in the
		// backup
		// backend are unhealthy, the traffic will be directed back to the
		// primary
		// backend in the "force" mode, where traffic will be spread to
		// the healthy
		// VMs with the best effort, or to all VMs when no VM is healthy.
		// This field is only used with l4 load balancing.
		failover_ratio?: number
	})

	#ha_policy: close({
		leader?: matchN(1, [_#defs."/$defs/ha_policy/$defs/leader", list.MaxItems(1) & [..._#defs."/$defs/ha_policy/$defs/leader"]])

		// Specifies whether fast IP move is enabled, and if so, the
		// mechanism to achieve it.
		// Supported values are:
		//
		// * 'DISABLED': Fast IP Move is disabled. You can only use the
		// haPolicy.leader API to
		// update the leader.
		//
		// * 'GARP_RA': Provides a method to very quickly define a new
		// network endpoint as the
		// leader. This method is faster than updating the leader using
		// the
		// haPolicy.leader API. Fast IP move works as follows: The VM
		// hosting the
		// network endpoint that should become the new leader sends either
		// a
		// Gratuitous ARP (GARP) packet (IPv4) or an ICMPv6 Router
		// Advertisement(RA)
		// packet (IPv6). Google Cloud immediately but temporarily
		// associates the
		// forwarding rule IP address with that VM, and both new and
		// in-flight packets
		// are quickly delivered to that VM. Possible values: ["DISABLED",
		// "GARP_RA"]
		fast_ip_move?: string
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

	#log_config: close({
		// Whether to enable logging for the load balancer traffic served
		// by this backend service.
		enable?: bool

		// Specifies the fields to include in logging. This field can only
		// be specified if logging is enabled for this backend service.
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
		// Resource manager tags to be bound to the region backend
		// service. Tag keys and values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456.
		resource_manager_tags?: [string]: string
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

	_#defs: "/$defs/cdn_policy/$defs/cache_key_policy": close({
		// If true requests to different hosts will be cached separately.
		include_host?: bool

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

	_#defs: "/$defs/ha_policy/$defs/leader": close({
		network_endpoint?: matchN(1, [_#defs."/$defs/ha_policy/$defs/leader/$defs/network_endpoint", list.MaxItems(1) & [..._#defs."/$defs/ha_policy/$defs/leader/$defs/network_endpoint"]])

		// A fully-qualified URL of the zonal Network Endpoint Group (NEG)
		// that the leader is
		// attached to.
		backend_group?: string
	})

	_#defs: "/$defs/ha_policy/$defs/leader/$defs/network_endpoint": close({
		// The name of the VM instance of the leader network endpoint. The
		// instance must
		// already be attached to the NEG specified in the
		// haPolicy.leader.backendGroup.
		instance?: string
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
}
