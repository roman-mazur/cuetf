package res

elasticstack_fleet_server_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_server_host")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Set as default.
		default?: bool

		// TLS configuration Fleet Server presents to Elastic Agents. Requires Elastic
		// Stack 9.1.0 or later. Changing SSL settings on a Fleet Server host that is
		// already enrolled can disconnect connected Elastic Agents and may require
		// them to be re-enrolled. Kibana replaces the whole `ssl` object on update and
		// this resource reads any `ssl` already stored on a host, so when upgrading
		// the provider add the existing SSL settings of such a host to your
		// configuration; otherwise Terraform plans to remove them. The `agent_*` and
		// `es_*` SSL fields are not managed by this resource, and updating `ssl` on a
		// host that stores any of them is rejected so they are not erased.
		ssl?: close({
			// The TLS certificate Fleet Server presents to Elastic Agents.
			certificate?: string

			// Certificate authorities used to validate Elastic Agent client certificates. Accepts 1-10 entries.
			certificate_authorities?: [...string]

			// Whether Fleet Server requests client certificates from Elastic Agents. Valid
			// values are `none`, `optional`, and `required`.
			client_auth?: string

			// The private key for the Fleet Server TLS certificate.
			key?: string
		})

		// Unique identifier of the Fleet server host. When omitted, Fleet
		// auto-generates an ID. When set, the value must be 1-255 characters and must
		// not contain path separators ("/"), traversal sequences (".."), or reserved
		// keys ("__proto__", "constructor", "prototype"). Invalid explicit values fail
		// at plan time.
		host_id?: string
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

		// A list of hosts.
		hosts!: [...string]

		// The ID of this resource.
		id?: string

		// The name of the Fleet server host.
		name!: string

		// The ID of the Fleet proxy to use for this Fleet server host. Must not be
		// empty; omit the attribute to use no proxy.
		proxy_id?: string

		// The Kibana space IDs where this server host is available. When set, the
		// server host will be created and managed within the specified space. Note:
		// The order of space IDs does not matter as this is a set.
		space_ids?: [...string]
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
