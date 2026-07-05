package res

elasticstack_kibana_security_entity_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_security_entity_store")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Terraform-only guard that permits removing installed entity types when true.
		// Removing an entity type will also remove any registered entities of that
		// type.
		allow_entity_type_shrink?: bool

		// Install-only history snapshot settings.
		history_snapshot?: close({
			// History snapshot frequency used during installation.
			frequency?: string
		})

		// Entity types to install and manage. Valid values are user, host, service, and generic.
		entity_types?: [...string]

		// Optional log extraction settings for the entity store.
		log_extraction?: close({
			additional_index_patterns?: [...string]
			delay?:      string
			docs_limit?: number
			excluded_index_patterns?: [...string]
			field_history_length?:             number
			frequency?:                        string
			lookback_period?:                  string
			max_logs_per_page?:                number
			max_logs_per_window?:              number
			max_logs_per_window_cap_behavior?: string
			max_time_window_size?:             string
		})

		// Computed resource identifier in the format <space_id>/entity_store.
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

		// An identifier for the Kibana space. If omitted, the default space is used.
		space_id?: string

		// Whether any managed entity engine should be running after reconciliation.
		started?: bool

		// Normalized JSON representation of the most recent entity store status response.
		status_json?: string
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
