package res

#azurerm_bot_channel_alexa: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_channel_alexa")
	close({
		timeouts?:            #timeouts
		bot_name!:            string
		id?:                  string
		location!:            string
		resource_group_name!: string
		skill_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
