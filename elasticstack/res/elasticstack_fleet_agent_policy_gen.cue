package res

#elasticstack_fleet_agent_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_agent_policy")
	close({
		// The identifier for the data output.
		data_output_id?: string

		// The description of the agent policy.
		description?: string

		// The identifier for the Elastic Agent binary download server.
		download_source_id?: string

		// The identifier for the Fleet server host.
		fleet_server_host_id?: string

		// User-defined data tags to apply to all inputs. Values can be
		// strings (string_value) or numbers (number_value) but not both.
		// Example -- key1 = {string_value = value1}, key2 =
		// {number_value = 42}
		global_data_tags?: _

		// The ID of this resource.
		id?: string

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

		// Set to true if you do not wish the agent policy to be deleted
		// at destroy time, and instead just remove the agent policy from
		// the Terraform state.
		skip_destroy?: bool

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
