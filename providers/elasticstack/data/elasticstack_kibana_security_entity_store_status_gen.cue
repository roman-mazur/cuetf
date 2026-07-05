package data

elasticstack_kibana_security_entity_store_status: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_security_entity_store_status")
	close({
		// True when the Entity Store is installed.
		installed?: bool
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Per-engine status details.
		engines?: matchN(1, [close({
			// Component-level status for the engine.
			components?: matchN(1, [close({
				// Health status of the component.
				health?: string

				// Component identifier.
				id?: string

				// Whether the component is installed.
				installed?: bool

				// Type of Elasticsearch or Kibana resource backing this component.
				resource?: string
			}), [...close({
				// Health status of the component.
				health?: string

				// Component identifier.
				id?: string

				// Whether the component is installed.
				installed?: bool

				// Type of Elasticsearch or Kibana resource backing this component.
				resource?: string
			})]])

			// Delay used for log extraction.
			delay?: string

			// Action associated with the last engine error, if any.
			error_action?: string

			// Message describing the last engine error, if any.
			error_message?: string

			// Number of historical values kept per field.
			field_history_length?: number

			// Filter query applied to the engine.
			filter?: string

			// Frequency used for log extraction.
			frequency?: string

			// Index pattern used by the engine.
			index_pattern?: string

			// Lookback period used for log extraction.
			lookback_period?: string

			// Current status of the engine.
			status?: string

			// Timeout setting for the engine.
			timeout?: string

			// Timestamp field used by the engine.
			timestamp_field?: string

			// The entity type managed by this engine.
			type?: string
		}), [...close({
			// Component-level status for the engine.
			components?: matchN(1, [close({
				// Health status of the component.
				health?: string

				// Component identifier.
				id?: string

				// Whether the component is installed.
				installed?: bool

				// Type of Elasticsearch or Kibana resource backing this component.
				resource?: string
			}), [...close({
				// Health status of the component.
				health?: string

				// Component identifier.
				id?: string

				// Whether the component is installed.
				installed?: bool

				// Type of Elasticsearch or Kibana resource backing this component.
				resource?: string
			})]])

			// Delay used for log extraction.
			delay?: string

			// Action associated with the last engine error, if any.
			error_action?: string

			// Message describing the last engine error, if any.
			error_message?: string

			// Number of historical values kept per field.
			field_history_length?: number

			// Filter query applied to the engine.
			filter?: string

			// Frequency used for log extraction.
			frequency?: string

			// Index pattern used by the engine.
			index_pattern?: string

			// Lookback period used for log extraction.
			lookback_period?: string

			// Current status of the engine.
			status?: string

			// Timeout setting for the engine.
			timeout?: string

			// Timestamp field used by the engine.
			timestamp_field?: string

			// The entity type managed by this engine.
			type?: string
		})]])

		// If true, returns a detailed status of each engine including all its components.
		include_components?: bool

		// The overall operational status of the Entity Store.
		overall_status?: string

		// An identifier for the Kibana space. If omitted, the default space is used.
		space_id?: string

		// Normalized JSON of the full status response.
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
