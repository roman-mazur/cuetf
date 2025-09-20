package data

#azurerm_tenant_template_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_tenant_template_deployment")
	close({
		timeouts?:       #timeouts
		id?:             string
		name!:           string
		output_content?: string
	})

	#timeouts: close({
		read?: string
	})
}
