package res

#azurerm_application_insights_web_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_insights_web_test")
	close({
		application_insights_id!: string
		configuration!:           string
		description?:             string
		enabled?:                 bool
		frequency?:               number
		geo_locations!: [...string]
		id?:                   string
		kind!:                 string
		location!:             string
		name!:                 string
		resource_group_name!:  string
		retry_enabled?:        bool
		timeouts?:             #timeouts
		synthetic_monitor_id?: string
		tags?: [string]: string
		timeout?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
