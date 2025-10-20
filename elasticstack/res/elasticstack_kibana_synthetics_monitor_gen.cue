package res

#elasticstack_kibana_synthetics_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_synthetics_monitor")
	close({
		// Whether the monitor is enabled. Default: `true`
		enabled?: bool

		// Generated identifier for the monitor
		id?: string

		// Alert configuration. Default: `{ status: { enabled: true },
		// tls: { enabled: true } }`.
		alert?: close({
			status?: close({
				enabled?: bool
			})
			tls?: close({
				enabled?: bool
			})
		})

		// Key-value pairs of labels to associate with the monitor. Labels
		// can be used for filtering and grouping monitors.
		labels?: [string]: string

		// Browser Monitor specific fields
		browser?: close({
			// Whether to ignore HTTPS errors.
			ignore_https_errors?: bool

			// The inline script.
			inline_script!: string

			// Playwright options.. Raw JSON object, use `jsonencode` function
			// to represent JSON
			playwright_options?: string

			// Controls the behavior of the screenshots feature.
			screenshots?: string

			// Synthetics agent CLI arguments.
			synthetics_args?: [...string]
		})

		// Where to deploy the monitor. Monitors can be deployed in
		// multiple locations so that you can detect differences in
		// availability and response times across those locations.
		locations?: [...string]

		// HTTP Monitor specific fields
		http?: close({
			// The check request settings.. Raw JSON object, use `jsonencode`
			// function to represent JSON
			check?: string

			// Whether to ping using the ipv4 protocol.
			ipv4?: bool

			// Whether to ping using the ipv6 protocol.
			ipv6?: bool

			// The maximum number of redirects to follow. Default: `0`
			max_redirects?: number

			// The mode of the monitor. Can be "all" or "any". If you’re using
			// a DNS-load balancer and want to ping every IP address for the
			// specified hostname, you should use all.
			mode?: string

			// The password for authenticating with the server. The
			// credentials are passed with the request.
			password?: string

			// Additional headers to send to proxies during CONNECT requests..
			// Raw JSON object, use `jsonencode` function to represent JSON
			proxy_header?: string

			// The URL of the proxy to use for this monitor.
			proxy_url?: string

			// Controls the indexing of the HTTP response body contents to the
			// `http.response.body.contents` field.. Raw JSON object, use
			// `jsonencode` function to represent JSON
			response?: string

			// Certificate.
			ssl_certificate?: string

			// The list of root certificates for verifications is required.
			ssl_certificate_authorities?: [...string]

			// Certificate key.
			ssl_key?: string

			// Key passphrase.
			ssl_key_passphrase?: string

			// List of allowed SSL/TLS versions.
			ssl_supported_protocols?: [...string]

			// Controls the verification of server certificates.
			ssl_verification_mode?: string

			// URL to monitor.
			url!: string

			// The username for authenticating with the server. The
			// credentials are passed with the request.
			username?: string
		})

		// The monitor’s name.
		name!: string

		// ICMP Monitor specific fields
		icmp?: close({
			// Host to ping; it can be an IP address or a hostname.
			host!: string

			// Wait time in seconds. Default: `1`
			wait?: number
		})

		// The data stream namespace. Note: if you change its value,
		// kibana creates new datastream. A user needs permissions for
		// new/old datastream in update case to be able to see full
		// monitor history. The `namespace` field should be lowercase and
		// not contain spaces. The namespace must not include any of the
		// following characters: *, \, /, ?, ", <, >, |, whitespace, ,,
		// #, :, or -. Default: `default`
		namespace?: string

		// Monitor parameters. Raw JSON object, use `jsonencode` function
		// to represent JSON
		params?: string

		// These Private Locations refer to locations hosted and managed
		// by you, whereas locations are hosted by Elastic. You can
		// specify a Private Location using the location’s name.
		private_locations?: [...string]

		// Enable or disable retesting when a monitor fails. By default,
		// monitors are automatically retested if the monitor goes from
		// "up" to "down". If the result of the retest is also "down", an
		// error will be created, and if configured, an alert sent. Then
		// the monitor will resume running according to the defined
		// schedule. Using retest_on_failure can reduce noise related to
		// transient problems. Default: `true`.
		retest_on_failure?: bool

		// The monitor’s schedule in minutes. Supported values are 1, 3,
		// 5, 10, 15, 30, 60, 120 and 240.
		schedule?: number

		// TCP Monitor specific fields
		tcp?: close({
			// The expected answer.
			check_receive?: string

			// An optional payload string to send to the remote host.
			check_send?: string

			// The host to monitor; it can be an IP address or a hostname. The
			// host can include the port using a colon (e.g.,
			// "example.com:9200").
			host!: string

			// The URL of the SOCKS5 proxy to use when connecting to the
			// server. The value must be a URL with a scheme of `socks5://`.
			// If the SOCKS5 proxy server requires client authentication,
			// then a username and password can be embedded in the URL. When
			// using a proxy, hostnames are resolved on the proxy server
			// instead of on the client. You can change this behavior by
			// setting the `proxy_use_local_resolver` option.
			proxy_url?: string

			// A Boolean value that determines whether hostnames are resolved
			// locally instead of being resolved on the proxy server. The
			// default value is false, which means that name resolution
			// occurs on the proxy server.
			proxy_use_local_resolver?: bool

			// Certificate.
			ssl_certificate?: string

			// The list of root certificates for verifications is required.
			ssl_certificate_authorities?: [...string]

			// Certificate key.
			ssl_key?: string

			// Key passphrase.
			ssl_key_passphrase?: string

			// List of allowed SSL/TLS versions.
			ssl_supported_protocols?: [...string]

			// Controls the verification of server certificates.
			ssl_verification_mode?: string
		})

		// The APM service name.
		service_name?: string

		// Kibana space. The space ID that is part of the Kibana URL when
		// inside the space. Space IDs are limited to lowercase
		// alphanumeric, underscore, and hyphen characters (a-z, 0-9, _,
		// and -). You are cannot change the ID with the update
		// operation.
		space_id?: string

		// An array of tags.
		tags?: [...string]

		// The monitor timeout in seconds, monitor will fail if it doesn’t
		// complete within this time. Default: `16`
		timeout?: number
	})
}
