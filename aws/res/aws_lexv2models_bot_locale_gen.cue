package res

#aws_lexv2models_bot_locale: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lexv2models_bot_locale")
	bot_id!:                           string
	bot_version!:                      string
	description?:                      string
	id?:                               string
	locale_id!:                        string
	n_lu_intent_confidence_threshold!: number
	name?:                             string
	timeouts?:                         #timeouts
	voice_settings?: #voice_settings | [...#voice_settings]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#voice_settings: {
		engine?:   string
		voice_id!: string
	}
}
