package data

#elasticstack_fleet_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_fleet_integration")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The ID of this resource.
		id?: string

		// The integration package name.
		name!: string

		// Include prerelease packages.
		prerelease?: bool

		// The Kibana space ID to scope the request to. When not
		// specified, the default space is used.
		space_id?: string

		// The integration package version.
		version?: string
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
