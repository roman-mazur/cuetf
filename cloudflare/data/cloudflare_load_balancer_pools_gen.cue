package data

#cloudflare_load_balancer_pools: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_load_balancer_pools")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// A list of regions from which to run health checks. Null means
			// every Cloudflare data center.
			check_regions?: [...string]
			created_on?: string

			// Configures load shedding policies and percentages for the pool.
			load_shedding?: close({
				// The percent of traffic to shed from the pool, according to the
				// default policy. Applies to new sessions and traffic without
				// session affinity.
				default_percent?: number

				// The default policy to use when load shedding. A random policy
				// randomly sheds a given percent of requests. A hash policy
				// computes a hash over the CF-Connecting-IP address and sheds
				// all requests originating from a percent of IPs.
				// Available values: "random", "hash".
				default_policy?: string

				// The percent of existing sessions to shed from the pool,
				// according to the session policy.
				session_percent?: number

				// Only the hash policy is supported for existing sessions (to
				// avoid exponential decay).
				// Available values: "hash".
				session_policy?: string
			})

			// A human-readable description of the pool.
			description?: string

			// Filter pool and origin health notifications by resource type or
			// health status. Use null to reset.
			notification_filter?: close({
				// Filter options for a particular resource type (pool or origin).
				// Use null to reset.
				origin?: close({
					// If set true, disable notifications for this type of resource
					// (pool or origin).
					disable?: bool

					// If present, send notifications only for this health status
					// (e.g. false for only DOWN events). Use null to reset (all
					// events).
					healthy?: bool
				})

				// Filter options for a particular resource type (pool or origin).
				// Use null to reset.
				pool?: close({
					// If set true, disable notifications for this type of resource
					// (pool or origin).
					disable?: bool

					// If present, send notifications only for this health status
					// (e.g. false for only DOWN events). Use null to reset (all
					// events).
					healthy?: bool
				})
			})

			// This field shows up only if the pool is disabled. This field is
			// set with the time the pool was disabled at.
			disabled_at?: string

			// Configures origin steering for the pool. Controls how origins
			// are selected for new sessions and traffic without session
			// affinity.
			origin_steering?: close({
				// The type of origin steering policy to use.
				// - `"random"`: Select an origin randomly.
				// - `"hash"`: Select an origin by computing a hash over the
				// CF-Connecting-IP address.
				// - `"least_outstanding_requests"`: Select an origin by taking
				// into consideration origin weights, as well as each origin's
				// number of outstanding requests. Origins with more pending
				// requests are weighted proportionately less relative to others.
				// - `"least_connections"`: Select an origin by taking into
				// consideration origin weights, as well as each origin's number
				// of open connections. Origins with more open connections are
				// weighted proportionately less relative to others. Supported
				// for HTTP/1 and HTTP/2 connections.
				// Available values: "random", "hash",
				// "least_outstanding_requests", "least_connections".
				policy?: string
			})

			// Whether to enable (the default) or disable this pool. Disabled
			// pools will not receive traffic and are excluded from health
			// checks. Disabling a pool will cause any load balancers using
			// it to failover to the next pool (if any).
			enabled?: bool

			// The latitude of the data center containing the origins used in
			// this pool in decimal degrees. If this is set, longitude must
			// also be set.
			latitude?: number

			// The longitude of the data center containing the origins used in
			// this pool in decimal degrees. If this is set, latitude must
			// also be set.
			longitude?: number

			// The minimum number of origins that must be healthy for this
			// pool to serve traffic. If the number of healthy origins falls
			// below this number, the pool will be marked unhealthy and will
			// failover to the next available pool.
			minimum_origins?: number

			// The ID of the Monitor to use for checking the health of origins
			// within this pool.
			monitor?: string
			id?:      string

			// The ID of the Monitor Group to use for checking the health of
			// origins within this pool.
			monitor_group?: string
			modified_on?:   string

			// A short name (tag) for the pool. Only alphanumeric characters,
			// hyphens, and underscores are allowed.
			name?: string

			// List of networks where Load Balancer or Pool is enabled.
			networks?: [...string]

			// This field is now deprecated. It has been moved to Cloudflare's
			// Centralized Notification service
			// https://developers.cloudflare.com/fundamentals/notifications/.
			// The email address to send health status notifications to. This
			// can be an individual mailbox or a mailing list. Multiple
			// emails can be supplied as a comma delimited list.
			notification_email?: string

			// The list of origins within this pool. Traffic directed at this
			// pool is balanced across all currently healthy origins,
			// provided the pool itself is healthy.
			origins?: matchN(1, [close({
				// The IP address (IPv4 or IPv6) of the origin, or its publicly
				// addressable hostname. Hostnames entered here should resolve
				// directly to the origin, and not be a hostname proxied by
				// Cloudflare. To set an internal/reserved address,
				// virtual_network_id must also be set.
				address?: string

				// This field shows up only if the origin is disabled. This field
				// is set with the time the origin was disabled.
				disabled_at?: string

				// Whether to enable (the default) this origin within the pool.
				// Disabled origins will not receive traffic and are excluded
				// from health checks. The origin will only be disabled for the
				// current pool.
				enabled?: bool

				// A human-identifiable name for the origin.
				name?: string

				// The port for upstream connections. A value of 0 means the
				// default port for the protocol will be used.
				port?: number

				// The request header is used to pass additional information with
				// an HTTP request. Currently supported header is 'Host'.
				header?: close({
					// The 'Host' header allows to override the hostname set in the
					// HTTP request. Current support is 1 'Host' header override per
					// origin.
					host?: [...string]
				})

				// The virtual network subnet ID the origin belongs in. Virtual
				// network must also belong to the account.
				virtual_network_id?: string

				// The weight of this origin relative to other origins in the
				// pool. Based on the configured weight the total traffic is
				// distributed among origins within the pool.
				// - `origin_steering.policy="least_outstanding_requests"`: Use
				// weight to scale the origin's outstanding requests.
				// - `origin_steering.policy="least_connections"`: Use weight to
				// scale the origin's open connections.
				weight?: number
			}), [...close({
				// The IP address (IPv4 or IPv6) of the origin, or its publicly
				// addressable hostname. Hostnames entered here should resolve
				// directly to the origin, and not be a hostname proxied by
				// Cloudflare. To set an internal/reserved address,
				// virtual_network_id must also be set.
				address?: string

				// This field shows up only if the origin is disabled. This field
				// is set with the time the origin was disabled.
				disabled_at?: string

				// Whether to enable (the default) this origin within the pool.
				// Disabled origins will not receive traffic and are excluded
				// from health checks. The origin will only be disabled for the
				// current pool.
				enabled?: bool

				// A human-identifiable name for the origin.
				name?: string

				// The port for upstream connections. A value of 0 means the
				// default port for the protocol will be used.
				port?: number

				// The request header is used to pass additional information with
				// an HTTP request. Currently supported header is 'Host'.
				header?: close({
					// The 'Host' header allows to override the hostname set in the
					// HTTP request. Current support is 1 'Host' header override per
					// origin.
					host?: [...string]
				})

				// The virtual network subnet ID the origin belongs in. Virtual
				// network must also belong to the account.
				virtual_network_id?: string

				// The weight of this origin relative to other origins in the
				// pool. Based on the configured weight the total traffic is
				// distributed among origins within the pool.
				// - `origin_steering.policy="least_outstanding_requests"`: Use
				// weight to scale the origin's outstanding requests.
				// - `origin_steering.policy="least_connections"`: Use weight to
				// scale the origin's open connections.
				weight?: number
			})]])
		}), [...close({
			// A list of regions from which to run health checks. Null means
			// every Cloudflare data center.
			check_regions?: [...string]
			created_on?: string

			// Configures load shedding policies and percentages for the pool.
			load_shedding?: close({
				// The percent of traffic to shed from the pool, according to the
				// default policy. Applies to new sessions and traffic without
				// session affinity.
				default_percent?: number

				// The default policy to use when load shedding. A random policy
				// randomly sheds a given percent of requests. A hash policy
				// computes a hash over the CF-Connecting-IP address and sheds
				// all requests originating from a percent of IPs.
				// Available values: "random", "hash".
				default_policy?: string

				// The percent of existing sessions to shed from the pool,
				// according to the session policy.
				session_percent?: number

				// Only the hash policy is supported for existing sessions (to
				// avoid exponential decay).
				// Available values: "hash".
				session_policy?: string
			})

			// A human-readable description of the pool.
			description?: string

			// Filter pool and origin health notifications by resource type or
			// health status. Use null to reset.
			notification_filter?: close({
				// Filter options for a particular resource type (pool or origin).
				// Use null to reset.
				origin?: close({
					// If set true, disable notifications for this type of resource
					// (pool or origin).
					disable?: bool

					// If present, send notifications only for this health status
					// (e.g. false for only DOWN events). Use null to reset (all
					// events).
					healthy?: bool
				})

				// Filter options for a particular resource type (pool or origin).
				// Use null to reset.
				pool?: close({
					// If set true, disable notifications for this type of resource
					// (pool or origin).
					disable?: bool

					// If present, send notifications only for this health status
					// (e.g. false for only DOWN events). Use null to reset (all
					// events).
					healthy?: bool
				})
			})

			// This field shows up only if the pool is disabled. This field is
			// set with the time the pool was disabled at.
			disabled_at?: string

			// Configures origin steering for the pool. Controls how origins
			// are selected for new sessions and traffic without session
			// affinity.
			origin_steering?: close({
				// The type of origin steering policy to use.
				// - `"random"`: Select an origin randomly.
				// - `"hash"`: Select an origin by computing a hash over the
				// CF-Connecting-IP address.
				// - `"least_outstanding_requests"`: Select an origin by taking
				// into consideration origin weights, as well as each origin's
				// number of outstanding requests. Origins with more pending
				// requests are weighted proportionately less relative to others.
				// - `"least_connections"`: Select an origin by taking into
				// consideration origin weights, as well as each origin's number
				// of open connections. Origins with more open connections are
				// weighted proportionately less relative to others. Supported
				// for HTTP/1 and HTTP/2 connections.
				// Available values: "random", "hash",
				// "least_outstanding_requests", "least_connections".
				policy?: string
			})

			// Whether to enable (the default) or disable this pool. Disabled
			// pools will not receive traffic and are excluded from health
			// checks. Disabling a pool will cause any load balancers using
			// it to failover to the next pool (if any).
			enabled?: bool

			// The latitude of the data center containing the origins used in
			// this pool in decimal degrees. If this is set, longitude must
			// also be set.
			latitude?: number

			// The longitude of the data center containing the origins used in
			// this pool in decimal degrees. If this is set, latitude must
			// also be set.
			longitude?: number

			// The minimum number of origins that must be healthy for this
			// pool to serve traffic. If the number of healthy origins falls
			// below this number, the pool will be marked unhealthy and will
			// failover to the next available pool.
			minimum_origins?: number

			// The ID of the Monitor to use for checking the health of origins
			// within this pool.
			monitor?: string
			id?:      string

			// The ID of the Monitor Group to use for checking the health of
			// origins within this pool.
			monitor_group?: string
			modified_on?:   string

			// A short name (tag) for the pool. Only alphanumeric characters,
			// hyphens, and underscores are allowed.
			name?: string

			// List of networks where Load Balancer or Pool is enabled.
			networks?: [...string]

			// This field is now deprecated. It has been moved to Cloudflare's
			// Centralized Notification service
			// https://developers.cloudflare.com/fundamentals/notifications/.
			// The email address to send health status notifications to. This
			// can be an individual mailbox or a mailing list. Multiple
			// emails can be supplied as a comma delimited list.
			notification_email?: string

			// The list of origins within this pool. Traffic directed at this
			// pool is balanced across all currently healthy origins,
			// provided the pool itself is healthy.
			origins?: matchN(1, [close({
				// The IP address (IPv4 or IPv6) of the origin, or its publicly
				// addressable hostname. Hostnames entered here should resolve
				// directly to the origin, and not be a hostname proxied by
				// Cloudflare. To set an internal/reserved address,
				// virtual_network_id must also be set.
				address?: string

				// This field shows up only if the origin is disabled. This field
				// is set with the time the origin was disabled.
				disabled_at?: string

				// Whether to enable (the default) this origin within the pool.
				// Disabled origins will not receive traffic and are excluded
				// from health checks. The origin will only be disabled for the
				// current pool.
				enabled?: bool

				// A human-identifiable name for the origin.
				name?: string

				// The port for upstream connections. A value of 0 means the
				// default port for the protocol will be used.
				port?: number

				// The request header is used to pass additional information with
				// an HTTP request. Currently supported header is 'Host'.
				header?: close({
					// The 'Host' header allows to override the hostname set in the
					// HTTP request. Current support is 1 'Host' header override per
					// origin.
					host?: [...string]
				})

				// The virtual network subnet ID the origin belongs in. Virtual
				// network must also belong to the account.
				virtual_network_id?: string

				// The weight of this origin relative to other origins in the
				// pool. Based on the configured weight the total traffic is
				// distributed among origins within the pool.
				// - `origin_steering.policy="least_outstanding_requests"`: Use
				// weight to scale the origin's outstanding requests.
				// - `origin_steering.policy="least_connections"`: Use weight to
				// scale the origin's open connections.
				weight?: number
			}), [...close({
				// The IP address (IPv4 or IPv6) of the origin, or its publicly
				// addressable hostname. Hostnames entered here should resolve
				// directly to the origin, and not be a hostname proxied by
				// Cloudflare. To set an internal/reserved address,
				// virtual_network_id must also be set.
				address?: string

				// This field shows up only if the origin is disabled. This field
				// is set with the time the origin was disabled.
				disabled_at?: string

				// Whether to enable (the default) this origin within the pool.
				// Disabled origins will not receive traffic and are excluded
				// from health checks. The origin will only be disabled for the
				// current pool.
				enabled?: bool

				// A human-identifiable name for the origin.
				name?: string

				// The port for upstream connections. A value of 0 means the
				// default port for the protocol will be used.
				port?: number

				// The request header is used to pass additional information with
				// an HTTP request. Currently supported header is 'Host'.
				header?: close({
					// The 'Host' header allows to override the hostname set in the
					// HTTP request. Current support is 1 'Host' header override per
					// origin.
					host?: [...string]
				})

				// The virtual network subnet ID the origin belongs in. Virtual
				// network must also belong to the account.
				virtual_network_id?: string

				// The weight of this origin relative to other origins in the
				// pool. Based on the configured weight the total traffic is
				// distributed among origins within the pool.
				// - `origin_steering.policy="least_outstanding_requests"`: Use
				// weight to scale the origin's outstanding requests.
				// - `origin_steering.policy="least_connections"`: Use weight to
				// scale the origin's open connections.
				weight?: number
			})]])
		})]])

		// The ID of the Monitor to use for checking the health of origins
		// within this pool.
		monitor?: string
	})
}
