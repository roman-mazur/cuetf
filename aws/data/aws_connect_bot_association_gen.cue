package data

import "list"

#aws_connect_bot_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_bot_association")
	id?:          string
	instance_id!: string
	lex_bot?: #lex_bot | list.MaxItems(1) & [_, ...] & [...#lex_bot]

	#lex_bot: {
		lex_region?: string
		name!:       string
	}
}
