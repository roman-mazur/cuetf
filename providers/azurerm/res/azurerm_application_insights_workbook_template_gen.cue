package res

#azurerm_application_insights_workbook_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_application_insights_workbook_template")
	close({
		galleries!: matchN(1, [#galleries, [_, ...] & [...#galleries]])
		timeouts?:            #timeouts
		author?:              string
		id?:                  string
		localized?:           string
		location!:            string
		name!:                string
		priority?:            number
		resource_group_name!: string
		tags?: [string]: string
		template_data!: string
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
