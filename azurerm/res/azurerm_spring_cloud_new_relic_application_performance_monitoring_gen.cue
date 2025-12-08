package res

#azurerm_spring_cloud_new_relic_application_performance_monitoring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_new_relic_application_performance_monitoring")
	close({
		agent_enabled?:                   bool
		app_name!:                        string
		app_server_port?:                 number
		audit_mode_enabled?:              bool
		auto_app_naming_enabled?:         bool
		auto_transaction_naming_enabled?: bool
		custom_tracing_enabled?:          bool
		globally_enabled?:                bool
		timeouts?:                        #timeouts
		id?:                              string
		labels?: [string]: string
		license_key!:             string
		name!:                    string
		spring_cloud_service_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
