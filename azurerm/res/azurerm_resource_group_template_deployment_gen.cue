package res

#azurerm_resource_group_template_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_resource_group_template_deployment")
	close({
		debug_level?:         string
		deployment_mode!:     string
		id?:                  string
		name!:                string
		output_content?:      string
		parameters_content?:  string
		resource_group_name!: string
		timeouts?:            #timeouts
		tags?: [string]: string
		template_content?:         string
		template_spec_version_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
