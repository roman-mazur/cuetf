package res

#azurerm_bot_channel_direct_line_speech: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_channel_direct_line_speech")
	close({
		timeouts?:                     #timeouts
		bot_name!:                     string
		cognitive_account_id?:         string
		cognitive_service_access_key!: string
		cognitive_service_location!:   string
		custom_speech_model_id?:       string
		custom_voice_deployment_id?:   string
		id?:                           string
		location!:                     string
		resource_group_name!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
