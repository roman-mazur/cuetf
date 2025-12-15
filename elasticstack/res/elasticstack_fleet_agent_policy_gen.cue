package res

#elasticstack_fleet_agent_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_agent_policy")
	close({
		// The identifier for the data output.
		data_output_id?: string

		// The description of the agent policy.
		description?: string

		// The identifier for the Elastic Agent binary download server.
		download_source_id?: string

		// The identifier for the Fleet server host.
		fleet_server_host_id?: string

		// Determines the format of the host.name field in events. Can be
		// 'hostname' (short hostname, e.g., 'myhost') or 'fqdn' (fully
		// qualified domain name, e.g., 'myhost.example.com'). Defaults
		// to 'hostname'.
		host_name_format?: string

		// The ID of this resource.
		id?: string

		// User-defined data tags to apply to all inputs. Values can be
		// strings (string_value) or numbers (number_value) but not both.
		// Example -- key1 = {string_value = value1}, key2 =
		// {number_value = 42}
		global_data_tags?: [string]: close({
			// Number value for the field. If this is set, string_value must
			// not be defined.
			number_value?: number

			// String value for the field. If this is set, number_value must
			// not be defined.
			string_value?: string
		})

		// The inactivity timeout for the agent policy. If an agent does
		// not report within this time period, it will be considered
		// inactive. Supports duration strings (e.g., '30s', '2m', '1h').
		inactivity_timeout?: string

		// Enable collection of agent logs.
		monitor_logs?: bool

		// Enable collection of agent metrics.
		monitor_metrics?: bool

		// The identifier for monitoring output.
		monitoring_output_id?: string

		// The name of the agent policy.
		name!: string

		// The namespace of the agent policy.
		namespace!: string

		// Unique identifier of the agent policy.
		policy_id?: string

		// Map of agent versions to target percentages for automatic
		// upgrade. The key is the target version and the value is the
		// percentage of agents to upgrade to that version.
		required_versions?: [string]: number

		// Set to true if you do not wish the agent policy to be deleted
		// at destroy time, and instead just remove the agent policy from
		// the Terraform state.
		skip_destroy?: bool

		// The Kibana space IDs that this agent policy should be available
		// in. When not specified, defaults to ["default"]. Note: The
		// order of space IDs does not matter as this is a set.
		space_ids?: [...string]

		// Set to true to enable agentless data collection.
		supports_agentless?: bool

		// Enable collection of system logs and metrics.
		sys_monitoring?: bool

		// The unenrollment timeout for the agent policy. If an agent is
		// inactive for this period, it will be automatically unenrolled.
		// Supports duration strings (e.g., '30s', '2m', '1h').
		unenrollment_timeout?: string
	})
}
