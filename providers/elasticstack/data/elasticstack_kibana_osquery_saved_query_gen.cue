package data

elasticstack_kibana_osquery_saved_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_osquery_saved_query")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Human-readable description of the saved query.
		description?: string

		// Maps query result columns to ECS field paths.
		ecs_mapping?: [string]: close({
			// Query result column name to map from.
			field?: string

			// Static scalar ECS mapping value.
			value?: string

			// Static array ECS mapping values.
			values?: [...string]
		})

		// Composite identifier in the form `<space_id>/<saved_query_id>`.
		id?: string

		// Query execution interval in seconds.
		interval?: number

		// Target platforms for the query.
		platform?: [...string]

		// Whether the saved query is prebuilt by the osquery_manager integration package.
		prebuilt?: bool

		// Osquery SQL query text.
		query?: string

		// Whether the saved query is marked removed.
		removed?: bool

		// Kibana saved object identifier used by Kibana's Osquery saved query detail API.
		saved_object_id?: string

		// Stable identifier for the saved query to look up.
		saved_query_id!: string

		// Whether the saved query is a snapshot.
		snapshot?: bool

		// An identifier for the space. If space_id is not provided, the default space is used.
		space_id?: string

		// Saved query version string.
		version?: string
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
