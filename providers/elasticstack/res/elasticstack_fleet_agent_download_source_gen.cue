package res

elasticstack_fleet_agent_download_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_agent_download_source")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Authentication used by Elastic Agents when downloading binaries from this source.
		auth?: close({
			// API key used to authenticate download requests. Conflicts with api_key_wo and
			// the password attributes.
			api_key?: string

			// Custom HTTP headers sent with every download request.
			headers?: matchN(1, [close({
				// HTTP header name.
				key!: string

				// HTTP header value.
				value!: string
			}), [...close({
				// HTTP header name.
				key!: string

				// HTTP header value.
				value!: string
			})]])

			// Write-only API key used to authenticate download requests. Never stored in
			// Terraform state; changes are detected from a hash kept in private state.
			// Conflicts with api_key and the password attributes.
			api_key_wo?: string

			// Password for HTTP Basic authentication. Required when username is set.
			// Conflicts with password_wo and the api_key attributes.
			password?: string

			// Write-only password for HTTP Basic authentication. Never stored in Terraform
			// state; changes are detected from a hash kept in private state. Required when
			// username is set. Conflicts with password and the api_key attributes.
			password_wo?: string

			// Username for HTTP Basic authentication. Required when password or password_wo is set.
			username?: string
		})

		// Set this download source as the default for agents.
		default?: bool

		// The name of the Fleet agent download source.
		name!: string

		// The ID of the proxy to use for this download source.
		proxy_id?: string

		// Unique identifier of the Fleet agent download source.
		source_id?: string

		// The Kibana space IDs where this download source is available. When set, the
		// download source will be created and managed within the specified space.
		// Note: The order of space IDs does not matter as this is a set.
		space_ids?: [...string]

		// SSL/TLS configuration for the download source host.
		ssl?: close({
			// Client SSL certificate for the download source host.
			certificate?: string

			// Server SSL certificate authorities trusted for the download source host.
			certificate_authorities?: [...string]

			// Client SSL certificate key for the download source host. Sent to Fleet as a managed secret.
			key?: string

			// Write-only client SSL certificate key for the download source host. Never
			// stored in Terraform state; changes are detected from a hash kept in private
			// state. Conflicts with `key`.
			key_wo?: string
		})

		// The base URL from which Elastic Agents will download binaries.
		host!: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// The ID of this resource.
		id?: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform provider will point
		// to, this must include the http(s) schema and port number.
		endpoints?: [...string]

		// A map of headers to be sent with each request to Kibana. Custom header values
		// may appear in provider debug logs: Authorization is masked, but arbitrary
		// custom proxy-token headers are not generally redacted.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
