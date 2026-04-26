package res

#elasticstack_kibana_security_enable_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_security_enable_rule")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Computed attribute indicating whether all rules matching the
		// tag are currently enabled. Used for drift detection.
		all_rules_enabled?: bool

		// Whether to disable the rules when this resource is destroyed.
		// Defaults to true.
		disable_on_destroy?: bool

		// The ID of this resource.
		id?: string

		// The tag key to filter rules by (e.g., 'OS').
		key!: string

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// The tag value to filter rules by (e.g., 'Windows').
		value!: string
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
