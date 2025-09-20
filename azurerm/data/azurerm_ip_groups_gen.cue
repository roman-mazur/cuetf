package data

#azurerm_ip_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_ip_groups")
	close({
		timeouts?: #timeouts
		id?:       string
		ids?: [...string]
		location?: string
		name!:     string
		names?: [...string]
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
