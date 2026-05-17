package res

#elasticstack_fleet_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_proxy")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The proxy certificate.
		certificate?: string

		// The proxy certificate authorities.
		certificate_authorities?: string

		// The proxy certificate key.
		certificate_key?: string

		// The composite ID of the proxy: `<space_id>/<proxy_id>`.
		id?: string

		// Whether the proxy is preconfigured.
		is_preconfigured?: bool

		// The proxy name.
		name!: string

		// Additional headers to send to the proxy during CONNECT
		// requests.
		proxy_headers?: [string]: string

		// The proxy ID.
		proxy_id?: string

		// An identifier for the space. If not provided, the default space
		// is used.
		space_id?: string

		// The proxy URL.
		url!: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
