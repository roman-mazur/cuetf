package res

#azurerm_bot_web_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bot_web_app")
	close({
		developer_app_insights_api_key?:        string
		developer_app_insights_application_id?: string
		developer_app_insights_key?:            string
		display_name?:                          string
		endpoint?:                              string
		id?:                                    string
		location!:                              string
		luis_app_ids?: [...string]
		luis_key?:            string
		microsoft_app_id!:    string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		sku!:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
