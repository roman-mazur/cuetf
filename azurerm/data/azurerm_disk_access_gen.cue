package data

#azurerm_disk_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_disk_access")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
