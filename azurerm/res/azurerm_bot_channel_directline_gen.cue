package res

#azurerm_bot_channel_directline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bot_channel_directline")
	close({
		site!: matchN(1, [#site, [_, ...] & [...#site]])
		bot_name!:            string
		id?:                  string
		location!:            string
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#site: close({
		enabled?:                         bool
		endpoint_parameters_enabled?:     bool
		enhanced_authentication_enabled?: bool
		id?:                              string
		key?:                             string
		key2?:                            string
		name!:                            string
		storage_enabled?:                 bool
		trusted_origins?: [...string]
		user_upload_enabled?: bool
		v1_allowed?:          bool
		v3_allowed?:          bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
