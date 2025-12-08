package data

#azurerm_template_spec_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_template_spec_version")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		template_body?: string
		version!:       string
	})

	#timeouts: close({
		read?: string
	})
}
