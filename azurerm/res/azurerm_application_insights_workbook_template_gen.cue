package res

#azurerm_application_insights_workbook_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_insights_workbook_template")
	close({
		author?:    string
		id?:        string
		localized?: string
		location!:  string
		galleries!: matchN(1, [#galleries, [_, ...] & [...#galleries]])
		name!:                string
		priority?:            number
		resource_group_name!: string
		tags?: [string]: string
		template_data!: string
		timeouts?:      #timeouts
	})

	#galleries: close({
		category!:      string
		name!:          string
		order?:         number
		resource_type?: string
		type?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
