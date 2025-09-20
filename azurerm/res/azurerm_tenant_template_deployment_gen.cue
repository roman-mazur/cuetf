package res

#azurerm_tenant_template_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_tenant_template_deployment")
	close({
		timeouts?:           #timeouts
		debug_level?:        string
		id?:                 string
		location!:           string
		name!:               string
		output_content?:     string
		parameters_content?: string
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
