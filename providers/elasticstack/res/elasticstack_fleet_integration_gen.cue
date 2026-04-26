package res

#elasticstack_fleet_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_integration")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Set to true to force the requested action.
		force?: bool

		// The ID of this resource.
		id?: string

		// Set to true to ignore constraint errors during package
		// installation.
		ignore_constraints?: bool

		// Set to true to ignore mapping update errors during package
		// installation.
		ignore_mapping_update_errors?: bool

		// The integration package name.
		name!: string

		// Set to true to allow installation of prerelease (beta, non-GA)
		// packages.
		prerelease?: bool

		// Set to true to skip data stream rollover during package
		// installation.
		skip_data_stream_rollover?: bool

		// Set to true if you do not wish the integration package to be
		// uninstalled at destroy time, and instead just remove the
		// integration package from the Terraform state.
		skip_destroy?: bool

		// The Kibana space ID where this integration package should be
		// installed.
		space_id?: string

		// The integration package version.
		version!: string
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
