package data

#scaleway_lb_backend: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_backend")
	close({
		// The ID of the backend
		backend_id?: string

		// Scaleway S3 bucket website to be served in case all backend
		// servers are down
		//
		// **NOTE** : Only the host part of the Scaleway S3 bucket website
		// is expected.
		// E.g. 'failover-website.s3-website.fr-par.scw.cloud' if your
		// bucket website URL is
		// 'https://failover-website.s3-website.fr-par.scw.cloud/'.
		failover_host?: string

		// User sessions will be forwarded to this port of backend servers
		forward_port?: number

		// Load balancing algorithm
		forward_port_algorithm?: string

		// Backend protocol
		forward_protocol?: string

		// Interval between two HC requests
		health_check_delay?: string

		// HTTP Health check
		health_check_http?: [...close({
			code?:        number
			host_header?: string
			method?:      string
			uri?:         string
		})]

		// HTTPS Health check
		health_check_https?: [...close({
			code?:        number
			host_header?: string
			method?:      string
			sni?:         string
			uri?:         string
		})]

		// Number of allowed failed HC requests before the backend server
		// is marked down
		health_check_max_retries?: number

		// Port the HC requests will be send to. Default to `forward_port`
		health_check_port?: number

		// Defines whether proxy protocol should be activated for the
		// health check
		health_check_send_proxy?: bool

		// TCP Health check
		health_check_tcp?: [...close({})]

		// Timeout before we consider a HC request failed
		health_check_timeout?: string

		// Time to wait between two consecutive health checks when a
		// backend server is in a transient state (going UP or DOWN)
		health_check_transient_delay?: string
		id?:                           string

		// Specifies whether the Load Balancer should check the backend
		// server’s certificate before initiating a connection
		ignore_ssl_server_verify?: bool

		// The load-balancer ID
		lb_id?: string

		// Maximum number of connections allowed per backend server
		max_connections?: number

		// Number of retries when a backend server connection failed
		max_retries?: number

		// The name of the backend
		name?: string

		// Modify what occurs when a backend server is marked down
		on_marked_down_action?: string

		// Type of PROXY protocol to enable
		proxy_protocol?: string

		// Whether to use another backend server on each attempt
		redispatch_attempt_count?: number

		// Enables PROXY protocol version 2
		send_proxy_v2?: bool

		// Backend server IP addresses list (IPv4 or IPv6)
		server_ips?: [...string]

		// Enables SSL between load balancer and backend servers
		ssl_bridging?: bool

		// The type of sticky sessions
		sticky_sessions?: string

		// Cookie name for sticky sessions
		sticky_sessions_cookie_name?: string

		// Maximum initial server connection establishment time
		timeout_connect?: string

		// Maximum time (in seconds) for a request to be left pending in
		// queue when `max_connections` is reached
		timeout_queue?: string

		// Maximum server connection inactivity time
		timeout_server?: string

		// Maximum tunnel inactivity time
		timeout_tunnel?: string
	})
}
