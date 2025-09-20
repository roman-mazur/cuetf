package res

#azurerm_container_registry_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_registry_webhook")
	close({
		actions!: [...string]
		custom_headers?: [string]: string
		id?:                  string
		location!:            string
		name!:                string
		registry_name!:       string
		resource_group_name!: string
		scope?:               string
		service_uri!:         string
		timeouts?:            #timeouts
		status?:              string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
