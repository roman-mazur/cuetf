package res

#azurerm_spring_cloud_application_insights_application_performance_monitoring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_application_insights_application_performance_monitoring")
	close({
		timeouts?:                     #timeouts
		connection_string?:            string
		globally_enabled?:             bool
		id?:                           string
		name!:                         string
		role_instance?:                string
		role_name?:                    string
		sampling_percentage?:          number
		sampling_requests_per_second?: number
		spring_cloud_service_id!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
