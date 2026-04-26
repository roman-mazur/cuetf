package res

#elasticstack_kibana_install_prebuilt_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_install_prebuilt_rules")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The ID of this resource.
		id?: string

		// Number of prebuilt rules that are installed.
		rules_installed?: number

		// Number of prebuilt rules that are not installed.
		rules_not_installed?: number

		// Number of prebuilt rules that have updates available.
		rules_not_updated?: number

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// Number of prebuilt timelines that are installed.
		timelines_installed?: number

		// Number of prebuilt timelines that are not installed.
		timelines_not_installed?: number

		// Number of prebuilt timelines that have updates available.
		timelines_not_updated?: number
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
