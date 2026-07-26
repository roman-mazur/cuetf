package res

elasticstack_kibana_osquery_saved_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_osquery_saved_query")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Human-readable description of the saved query.
		description?: string

		// Maps query result columns to ECS field paths. Each map value must set exactly
		// one of `field`, `value`, or `values`.
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

		// Query execution interval in seconds. Required by the Kibana Osquery API on create and update.
		interval!: number

		// Target platforms for the query. Allowed values: `linux`, `darwin`, `windows`.
		platform?: [...string]

		// Osquery SQL query text.
		query!: string

		// Whether the saved query is marked removed. Returned by the API and may be set
		// explicitly in configuration. When omitted or unknown at plan time, the prior
		// state value is preserved (`UseStateForUnknown`).
		removed?: bool

		// Kibana saved object identifier used internally by Kibana's Osquery saved
		// query detail, update, and delete APIs.
		saved_object_id?: string

		// Stable user-facing identifier for the saved query. Forces replacement when changed.
		saved_query_id!: string

		// Whether the saved query is a snapshot. Returned by the API and may be set
		// explicitly in configuration. When omitted or unknown at plan time, the prior
		// state value is preserved (`UseStateForUnknown`).
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
