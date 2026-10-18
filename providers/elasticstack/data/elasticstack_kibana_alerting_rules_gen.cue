package data

elasticstack_kibana_alerting_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_alerting_rules")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// KQL filter passed to Kibana unmodified. Mutually exclusive with `rule_id`.
		// When both `rule_id` and `filter` are omitted, every rule in the space is
		// returned. Set `filter` in spaces with many rules.
		filter?: string

		// Rules returned by the lookup or search. `last_execution_status`,
		// `last_execution_date`, and `scheduled_task_id` are null when Kibana does not
		// report them.
		rules?: matchN(1, [close({
			// Kibana application that owns the rule.
			consumer?: string

			// Whether the rule is enabled.
			enabled?: bool

			// Rule ID.
			id?: string

			// UTC RFC3339 timestamp of the rule's last execution, with exactly three
			// fractional-second digits. Null when Kibana reports no last execution time or
			// the time cannot be parsed.
			last_execution_date?: string

			// Status of the rule's last execution, such as `ok` or `active`. Null when
			// Kibana reports no execution status.
			last_execution_status?: string

			// Rule name.
			name?: string

			// Rule type identifier.
			rule_type_id?: string

			// Identifier of the rule's scheduled task. Null when Kibana omits it.
			scheduled_task_id?: string

			// Tags on the rule. An empty set when the rule has no tags.
			tags?: [...string]
		}), [...close({
			// Kibana application that owns the rule.
			consumer?: string

			// Whether the rule is enabled.
			enabled?: bool

			// Rule ID.
			id?: string

			// UTC RFC3339 timestamp of the rule's last execution, with exactly three
			// fractional-second digits. Null when Kibana reports no last execution time or
			// the time cannot be parsed.
			last_execution_date?: string

			// Status of the rule's last execution, such as `ok` or `active`. Null when
			// Kibana reports no execution status.
			last_execution_status?: string

			// Rule name.
			name?: string

			// Rule type identifier.
			rule_type_id?: string

			// Identifier of the rule's scheduled task. Null when Kibana omits it.
			scheduled_task_id?: string

			// Tags on the rule. An empty set when the rule has no tags.
			tags?: [...string]
		})]])

		// Space and, for a single-rule lookup, rule ID. `<space_id>/<rule_id>` when
		// `rule_id` is set, otherwise `<space_id>`.
		id?: string

		// Plain Kibana rule ID to look up in `space_id`. Mutually exclusive with `filter`.
		rule_id?: string

		// Kibana space identifier. When omitted, the default space is used and stored in state.
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
