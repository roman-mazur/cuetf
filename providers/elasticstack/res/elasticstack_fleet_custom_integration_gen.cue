package res

elasticstack_fleet_custom_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_custom_integration")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// SHA256 hex digest of the uploaded package file.
		checksum?: string
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

		// The ID of this resource, derived from the package name and version.
		id?: string

		// Set to true to ignore mapping update errors during package installation.
		ignore_mapping_update_errors?: bool

		// The integration package name, populated from the upload response.
		package_name?: string

		// Path to the local zip or tar.gz file containing the integration package.
		package_path!: string

		// The integration package version, populated after upload.
		package_version?: string

		// Set to true to skip data stream rollover during package installation.
		skip_data_stream_rollover?: bool

		// Set to true if you do not wish the integration package to be uninstalled at
		// destroy time, and instead just remove the integration package from the
		// Terraform state.
		skip_destroy?: bool

		// The Kibana space ID where this integration package should be installed.
		// Changing this value forces resource replacement.
		space_id?: string
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

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
