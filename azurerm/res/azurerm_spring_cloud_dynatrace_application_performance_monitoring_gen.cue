package res

#azurerm_spring_cloud_dynatrace_application_performance_monitoring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_dynatrace_application_performance_monitoring")
	close({
		api_token?:               string
		api_url?:                 string
		connection_point!:        string
		environment_id?:          string
		globally_enabled?:        bool
		id?:                      string
		name!:                    string
		timeouts?:                #timeouts
		spring_cloud_service_id!: string
		tenant!:                  string
		tenant_token!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
