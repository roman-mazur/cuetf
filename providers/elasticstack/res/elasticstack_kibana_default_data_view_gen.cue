package res

#elasticstack_kibana_default_data_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_default_data_view")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The data view identifier to set as default. NOTE: The API does
		// not validate whether it is a valid identifier. Leave this
		// unset (or explicitly `null`) to unset the default data view.
		data_view_id?: string

		// Update an existing default data view identifier. If set to
		// false and a default data view already exists, the operation
		// will fail.
		force?: bool

		// Internal identifier of the resource.
		id?: string

		// If set to true, the default data view will not be unset when
		// the resource is destroyed. The existing default data view will
		// remain unchanged.
		skip_delete?: bool

		// The Kibana space ID to set the default data view in. Defaults
		// to `default`.
		space_id?: string
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
