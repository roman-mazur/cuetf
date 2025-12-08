package data

#azurerm_virtual_desktop_application_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_virtual_desktop_application_group")
	close({
		description?:         string
		friendly_name?:       string
		host_pool_id?:        string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		tags?: [string]: string
		type?:         string
		workspace_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
