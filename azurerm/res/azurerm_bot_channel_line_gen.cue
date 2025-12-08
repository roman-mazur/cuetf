package res

#azurerm_bot_channel_line: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_channel_line")
	close({
		line_channel!: matchN(1, [#line_channel, [_, ...] & [...#line_channel]])
		bot_name!:            string
		id?:                  string
		location!:            string
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#line_channel: close({
		access_token!: string
		secret!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
