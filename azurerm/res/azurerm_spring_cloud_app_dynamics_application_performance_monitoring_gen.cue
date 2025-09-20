package res

#azurerm_spring_cloud_app_dynamics_application_performance_monitoring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_app_dynamics_application_performance_monitoring")
	close({
		agent_account_access_key!: string
		agent_account_name!:       string
		agent_application_name?:   string
		agent_node_name?:          string
		agent_tier_name?:          string
		agent_unique_host_id?:     string
		controller_host_name!:     string
		controller_port?:          number
		timeouts?:                 #timeouts
		controller_ssl_enabled?:   bool
		globally_enabled?:         bool
		id?:                       string
		name!:                     string
		spring_cloud_service_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
