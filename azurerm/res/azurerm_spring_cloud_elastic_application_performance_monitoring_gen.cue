package res

#azurerm_spring_cloud_elastic_application_performance_monitoring: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_elastic_application_performance_monitoring")
	close({
		timeouts?: #timeouts
		application_packages!: [...string]
		globally_enabled?:        bool
		id?:                      string
		name!:                    string
		server_url!:              string
		service_name!:            string
		spring_cloud_service_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
