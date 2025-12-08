package res

#azurerm_portal_dashboard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_portal_dashboard")
	close({
		timeouts?:             #timeouts
		dashboard_properties!: string
		id?:                   string
		location!:             string
		name!:                 string
		resource_group_name!:  string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
