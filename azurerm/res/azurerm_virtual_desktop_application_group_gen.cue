package res

#azurerm_virtual_desktop_application_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_desktop_application_group")
	close({
		default_desktop_display_name?: string
		description?:                  string
		friendly_name?:                string
		host_pool_id!:                 string
		id?:                           string
		location!:                     string
		name!:                         string
		timeouts?:                     #timeouts
		resource_group_name!:          string
		tags?: [string]: string
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
