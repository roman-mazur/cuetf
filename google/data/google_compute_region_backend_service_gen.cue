package data

#google_compute_region_backend_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_region_backend_service")
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

		// The set of backends that serve this RegionBackendService.
		backend?: [...close({
			balancing_mode?:  string
			capacity_scaler?: number
			custom_metrics?: [...close({
				dry_run?:         bool
				max_utilization?: number
				name?:            string
			})]
			description?:                  string
			failover?:                     bool
			group?:                        string
			max_connections?:              number
			max_connections_per_endpoint?: number
			max_connections_per_instance?: number
			max_rate?:                     number
			max_rate_per_endpoint?:        number
			max_rate_per_instance?:        number
			max_utilization?:              number
		})]

		// Cloud CDN configuration for this BackendService.
		cdn_policy?: [...close({
			cache_key_policy?: [...close({
				include_host?: bool
				include_named_cookies?: [...string]
				include_protocol?:     bool
				include_query_string?: bool
				query_string_blacklist?: [...string]
				query_string_whitelist?: [...string]
			})]
			cache_mode?:       string
			client_ttl?:       number
			default_ttl?:      number
			max_ttl?:          number
			negative_caching?: bool
			negative_caching_policy?: [...close({
				code?: number
			})]
			serve_while_stale?:            number
			signed_url_cache_max_age_sec?: number
		})]

		// Settings controlling the volume of connections to a backend
		// service. This field
		// is applicable only when the 'load_balancing_scheme' is set to
		// INTERNAL_MANAGED
		// and the 'protocol' is set to HTTP, HTTPS, HTTP2 or H2C.
		circuit_breakers?: [...close({
			max_connections?:             number
			max_pending_requests?:        number
			max_requests?:                number
			max_requests_per_connection?: number
			max_retries?:                 number
		})]

		// Time for which instance will be drained (not accept new
		// connections, but still work to finish started).
		connection_draining_timeout_sec?: number

		// Consistent Hash-based load balancing can be used to provide
		// soft session
		// affinity based on HTTP headers, cookies or other properties.
		// This load balancing
		// policy is applicable only for HTTP connections. The affinity to
		// a particular
		// destination host will be lost when one or more hosts are
		// added/removed from the
		// destination service. This field specifies parameters that
		// control consistent
		// hashing.
		// This field only applies when all of the following are true -
		// * 'load_balancing_scheme' is set to INTERNAL_MANAGED
		// * 'protocol' is set to HTTP, HTTPS, HTTP2 or H2C
		// * 'locality_lb_policy' is set to MAGLEV or RING_HASH
		consistent_hash?: [...close({
			http_cookie?: [...close({
				name?: string
				path?: string
				ttl?: [...close({
					nanos?:   number
					seconds?: number
				})]
			})]
			http_header_name?:  string
			minimum_ring_size?: number
		})]

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// List of custom metrics that are used for the
		// WEIGHTED_ROUND_ROBIN locality_lb_policy.
		custom_metrics?: [...close({
			dry_run?: bool
			name?:    string
		})]

		// An optional description of this resource.
		description?: string

		// If true, enable Cloud CDN for this RegionBackendService.
		enable_cdn?: bool

		// Policy for failovers.
		failover_policy?: [...close({
			disable_connection_drain_on_failover?: bool
			drop_traffic_if_unhealthy?:            bool
			failover_ratio?:                       number
		})]

		// Fingerprint of this resource. A hash of the contents stored in
		// this
		// object. This field is used in optimistic locking.
		fingerprint?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		generated_id?: number

		// Configures self-managed High Availability (HA) for External and
		// Internal Protocol Forwarding.
		// The backends of this regional backend service must only specify
		// zonal network endpoint groups
		// (NEGs) of type GCE_VM_IP. Note that haPolicy is not for load
		// balancing, and therefore cannot
		// be specified with sessionAffinity, connectionTrackingPolicy,
		// and failoverPolicy. haPolicy
		// requires customers to be responsible for tracking backend
		// endpoint health and electing a
		// leader among the healthy endpoints. Therefore, haPolicy cannot
		// be specified with healthChecks.
		// haPolicy can only be specified for External Passthrough Network
		// Load Balancers and Internal
		// Passthrough Network Load Balancers.
		ha_policy?: [...close({
			fast_ip_move?: string
			leader?: [...close({
				backend_group?: string
				network_endpoint?: [...close({
					instance?: string
				})]
			})]
		})]

		// The set of URLs to HealthCheck resources for health checking
		// this RegionBackendService. Currently at most one health
		// check can be specified.
		//
		// A health check must be specified unless the backend service
		// uses an internet
		// or serverless NEG as a backend.
		health_checks?: [...string]

		// Settings for enabling Cloud Identity Aware Proxy.
		// If OAuth client is not set, Google-managed OAuth client is
		// used.
		iap?: [...close({
			enabled?:                     bool
			oauth2_client_id?:            string
			oauth2_client_secret?:        string
			oauth2_client_secret_sha256?: string
		})]
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

		// This field denotes the logging options for the load balancer
		// traffic served by this backend service.
		// If logging is enabled, logs will be exported to Stackdriver.
		log_config?: [...close({
			enable?: bool
			optional_fields?: [...string]
			optional_mode?: string
			sample_rate?:   number
		})]

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

		// Settings controlling eviction of unhealthy hosts from the load
		// balancing pool.
		// This field is applicable only when the 'load_balancing_scheme'
		// is set
		// to INTERNAL_MANAGED and the 'protocol' is set to HTTP, HTTPS,
		// HTTP2 or H2C.
		outlier_detection?: [...close({
			base_ejection_time?: [...close({
				nanos?:   number
				seconds?: number
			})]
			consecutive_errors?:                    number
			consecutive_gateway_failure?:           number
			enforcing_consecutive_errors?:          number
			enforcing_consecutive_gateway_failure?: number
			enforcing_success_rate?:                number
			interval?: [...close({
				nanos?:   number
				seconds?: number
			})]
			max_ejection_percent?:        number
			success_rate_minimum_hosts?:  number
			success_rate_request_volume?: number
			success_rate_stdev_factor?:   number
		})]

		// Additional params passed with the request, but not persisted as
		// part of resource payload
		params?: [...close({
			resource_manager_tags?: [string]: string
		})]

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

		// Describes the HTTP cookie used for stateful session affinity.
		// This field is applicable and required if the sessionAffinity
		// is set to STRONG_COOKIE_AFFINITY.
		strong_session_affinity_cookie?: [...close({
			name?: string
			path?: string
			ttl?: [...close({
				nanos?:   number
				seconds?: number
			})]
		})]

		// The backend service timeout has a different meaning depending
		// on the type of load balancer.
		// For more information see, [Backend service
		// settings](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices).
		// The default is 30 seconds.
		// The full range of timeout values allowed goes from 1 through
		// 2,147,483,647 seconds.
		timeout_sec?: number

		// Configuration for Backend Authenticated TLS and mTLS. May only
		// be specified when the backend protocol is SSL, HTTPS or HTTP2.
		tls_settings?: [...close({
			authentication_config?: string
			sni?:                   string
			subject_alt_names?: [...close({
				dns_name?:                    string
				uniform_resource_identifier?: string
			})]
		})]
	})
}
