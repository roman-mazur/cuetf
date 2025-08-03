package res

#aws_lexv2models_bot_locale: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lexv2models_bot_locale")
	close({
		bot_id!:      string
		bot_version!: string
		timeouts?:    #timeouts
		voice_settings?: matchN(1, [#voice_settings, [...#voice_settings]])
		description?:                      string
		id?:                               string
		locale_id!:                        string
		n_lu_intent_confidence_threshold!: number
		name?:                             string
		region?:                           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#voice_settings: close({
		engine?:   string
		voice_id!: string
	})
}
