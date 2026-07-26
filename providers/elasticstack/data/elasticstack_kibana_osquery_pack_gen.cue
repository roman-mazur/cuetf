package data

elasticstack_kibana_osquery_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_osquery_pack")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Description of the Osquery pack.
		description?: string

		// Osquery queries in the pack. Map keys are query names (canonical identifiers in Kibana).
		queries?: [string]: close({
			// Maps query result columns to ECS field paths.
			ecs_mapping?: [string]: close({
				// Query result column name to map from.
				field?: string

				// Static scalar ECS mapping value.
				value?: string

				// Static array ECS mapping values.
				values?: [...string]
			})

			// Target platforms for the query. Allowed values: `linux`, `darwin`, `windows`.
			platform?: [...string]

			// Osquery SQL query text.
			query?: string

			// Whether the query is marked removed.
			removed?: bool

			// References an `elasticstack_kibana_osquery_saved_query` resource.
			saved_query_id?: string

			// Whether the query is a snapshot.
			snapshot?: bool

			// Query version string.
			version?: string
		})

		// Whether the pack is enabled.
		enabled?: bool

		// Composite identifier in the form `<space_id>/<pack_id>`.
		id?: string

		// Human-readable name of the Osquery pack.
		name?: string

		// Kibana saved object identifier for the pack (`saved_object_id`).
		pack_id!: string

		// Fleet agent policy IDs this pack is deployed to.
		policy_ids?: [...string]

		// Whether the pack is prebuilt and read-only. Prebuilt packs can be read by
		// this data source but not managed by the resource.
		read_only?: bool

		// Percent (1-100) of hosts per policy ID that receive the pack.
		shards?: [string]: number

		// Kibana space identifier. When omitted, the default space is used.
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
