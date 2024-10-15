package res

#aws_lexv2models_bot_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lexv2models_bot_version")
	bot_id!:      string
	bot_version?: string
	description?: string
	id?:          string
	locale_specification!: [string]: source_bot_version?: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
