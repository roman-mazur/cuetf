package res

#cloudflare_healthcheck: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_healthcheck")
	close({
		// The hostname or IP address of the origin server to run health
		// checks on.
		address!: string

		// A list of regions from which to run health checks. Null means
		// Cloudflare will pick a default region.
		check_regions?: [...string]

		// The number of consecutive fails required from a health check
		// before changing the health to unhealthy.
		consecutive_fails?: number

		// The number of consecutive successes required from a health
		// check before changing the health to healthy.
		consecutive_successes?: number
		created_on?:            string

		// Parameters specific to an HTTP or HTTPS health check.
		http_config?: close({
			// Do not validate the certificate when the health check uses
			// HTTPS.
			allow_insecure?: bool

			// A case-insensitive sub-string to look for in the response body.
			// If this string is not found, the origin will be marked as
			// unhealthy.
			expected_body?: string

			// The expected HTTP response codes (e.g. "200") or code ranges
			// (e.g. "2xx" for all codes starting with 2) of the health
			// check.
			expected_codes?: [...string]

			// Follow redirects if the origin returns a 3xx status code.
			follow_redirects?: bool

			// The HTTP request headers to send in the health check. It is
			// recommended you set a Host header by default. The User-Agent
			// header cannot be overridden.
			header?: [string]: [...string]

			// The HTTP method to use for the health check.
			// Available values: "GET", "HEAD".
			method?: string

			// The endpoint path to health check against.
			path?: string

			// Port number to connect to for the health check. Defaults to 80
			// if type is HTTP or 443 if type is HTTPS.
			port?: number
		})

		// A human-readable description of the health check.
		description?: string

		// The current failure reason if status is unhealthy.
		failure_reason?: string

		// Identifier
		id?: string

		// The interval between each health check. Shorter intervals may
		// give quicker notifications if the origin status changes, but
		// will increase load on the origin as we check from multiple
		// locations.
		interval?:    number
		modified_on?: string

		// A short name to identify the health check. Only alphanumeric
		// characters, hyphens and underscores are allowed.
		name!: string

		// The number of retries to attempt in case of a timeout before
		// marking the origin as unhealthy. Retries are attempted
		// immediately.
		retries?: number

		// The current status of the origin server according to the health
		// check.
		// Available values: "unknown", "healthy", "unhealthy",
		// "suspended".
		status?: string

		// If suspended, no health checks are sent to the origin.
		suspended?: bool

		// The timeout (in seconds) before marking the health check as
		// failed.
		timeout?: number

		// The protocol to use for the health check. Currently supported
		// protocols are 'HTTP', 'HTTPS' and 'TCP'.
		type?: string

		// Parameters specific to TCP health check.
		tcp_config?: close({
			// The TCP connection method to use for the health check.
			// Available values: "connection_established".
			method?: string

			// Port number to connect to for the health check. Defaults to 80.
			port?: number
		})

		// Identifier
		zone_id!: string
	})
}
