package res

#azurerm_spring_cloud_active_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_active_deployment")
	close({
		timeouts?:            #timeouts
		deployment_name!:     string
		id?:                  string
		spring_cloud_app_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
