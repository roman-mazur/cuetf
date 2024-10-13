package res

#elasticstack_fleet_agent_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_fleet_agent_policy")
	data_output_id?:       string
	description?:          string
	download_source_id?:   string
	fleet_server_host_id?: string
	id?:                   string
	monitor_logs?:         bool
	monitor_metrics?:      bool
	monitoring_output_id?: string
	name!:                 string
	namespace!:            string
	policy_id?:            string
	skip_destroy?:         bool
	sys_monitoring?:       bool
}
