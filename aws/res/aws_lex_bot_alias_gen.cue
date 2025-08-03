package res

import "list"

#aws_lex_bot_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_bot_alias")
	close({
		arn?:      string
		bot_name!: string
		conversation_logs?: matchN(1, [#conversation_logs, list.MaxItems(1) & [...#conversation_logs]])
		timeouts?:          #timeouts
		bot_version!:       string
		checksum?:          string
		created_date?:      string
		description?:       string
		id?:                string
		last_updated_date?: string
		name!:              string
		region?:            string
	})

	#conversation_logs: close({
		iam_role_arn!: string
		log_settings?: matchN(1, [_#defs."/$defs/conversation_logs/$defs/log_settings", [..._#defs."/$defs/conversation_logs/$defs/log_settings"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/conversation_logs/$defs/log_settings": close({
		destination!:     string
		kms_key_arn?:     string
		log_type!:        string
		resource_arn!:    string
		resource_prefix?: string
	})
}
