package res

import "list"

#aws_lex_bot_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_bot_alias")
	close({
		arn?:      string
		bot_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		bot_version!:  string
		checksum?:     string
		created_date?: string
		conversation_logs?: matchN(1, [#conversation_logs, list.MaxItems(1) & [...#conversation_logs]])
		description?:       string
		timeouts?:          #timeouts
		id?:                string
		last_updated_date?: string
		name!:              string
	})

	#conversation_logs: close({
		log_settings?: matchN(1, [_#defs."/$defs/conversation_logs/$defs/log_settings", [..._#defs."/$defs/conversation_logs/$defs/log_settings"]])
		iam_role_arn!: string
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
