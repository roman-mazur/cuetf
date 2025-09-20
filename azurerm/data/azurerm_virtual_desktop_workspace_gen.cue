package data

#azurerm_virtual_desktop_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_desktop_workspace")
	close({
		timeouts?:                      #timeouts
		description?:                   string
		friendly_name?:                 string
		id?:                            string
		location?:                      string
		name!:                          string
		public_network_access_enabled?: bool
		resource_group_name!:           string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
