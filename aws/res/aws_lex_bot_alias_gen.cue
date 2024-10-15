package res

import "list"

#aws_lex_bot_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_bot_alias")
	arn?:               string
	bot_name!:          string
	bot_version!:       string
	checksum?:          string
	created_date?:      string
	description?:       string
	id?:                string
	last_updated_date?: string
	name!:              string
	conversation_logs?: #conversation_logs | list.MaxItems(1) & [...#conversation_logs]
	timeouts?: #timeouts

	#conversation_logs: {
		iam_role_arn!: string
		log_settings?: #conversation_logs.#log_settings | [...#conversation_logs.#log_settings]

		#log_settings: {
			destination!:     string
			kms_key_arn?:     string
			log_type!:        string
			resource_arn!:    string
			resource_prefix?: string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
