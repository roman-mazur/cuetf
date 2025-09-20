package res

#cloudflare_load_balancer_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_load_balancer_monitor")
	close({
		// Identifier.
		account_id!: string

		// Do not validate the certificate when monitor use HTTPS. This
		// parameter is currently only valid for HTTP and HTTPS monitors.
		allow_insecure?: bool

		// To be marked unhealthy the monitored origin must fail this
		// healthcheck N consecutive times.
		consecutive_down?: number

		// To be marked healthy the monitored origin must pass this
		// healthcheck N consecutive times.
		consecutive_up?: number
		created_on?:     string

		// Object description.
		description?: string

		// A case-insensitive sub-string to look for in the response body.
		// If this string is not found, the origin will be marked as
		// unhealthy. This parameter is only valid for HTTP and HTTPS
		// monitors.
		expected_body?: string

		// The expected HTTP response code or code range of the health
		// check. This parameter is only valid for HTTP and HTTPS
		// monitors.
		expected_codes?: string

		// Follow redirects if returned by the origin. This parameter is
		// only valid for HTTP and HTTPS monitors.
		follow_redirects?: bool

		// The HTTP request headers to send in the health check. It is
		// recommended you set a Host header by default. The User-Agent
		// header cannot be overridden. This parameter is only valid for
		// HTTP and HTTPS monitors.
		header?: [string]: [...string]
		id?: string

		// The interval between each health check. Shorter intervals may
		// improve failover time, but will increase load on the origins
		// as we check from multiple locations.
		interval?: number

		// The method to use for the health check. This defaults to 'GET'
		// for HTTP/HTTPS based checks and 'connection_established' for
		// TCP based health checks.
		method?:      string
		modified_on?: string

		// The endpoint path you want to conduct a health check against.
		// This parameter is only valid for HTTP and HTTPS monitors.
		path?: string

		// The port number to connect to for the health check. Required
		// for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should
		// only define the port when using a non-standard port (HTTP:
		// default 80, HTTPS: default 443).
		port?: number

		// Assign this monitor to emulate the specified zone while
		// probing. This parameter is only valid for HTTP and HTTPS
		// monitors.
		probe_zone?: string

		// The number of retries to attempt in case of a timeout before
		// marking the origin as unhealthy. Retries are attempted
		// immediately.
		retries?: number

		// The timeout (in seconds) before marking the health check as
		// failed.
		timeout?: number

		// The protocol to use for the health check. Currently supported
		// protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP',
		// and 'SMTP'.
		// Available values: "http", "https", "tcp", "udp_icmp",
		// "icmp_ping", "smtp".
		type?: string
	})
}
