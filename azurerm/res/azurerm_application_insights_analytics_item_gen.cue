package res

#azurerm_application_insights_analytics_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_application_insights_analytics_item")
	close({
		application_insights_id!: string
		content!:                 string
		function_alias?:          string
		id?:                      string
		name!:                    string
		scope!:                   string
		time_created?:            string
		timeouts?:                #timeouts
		time_modified?:           string
		type!:                    string
		version?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
