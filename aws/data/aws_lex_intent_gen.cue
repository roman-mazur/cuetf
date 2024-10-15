package data

#aws_lex_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_intent")
	arn?:                     string
	checksum?:                string
	created_date?:            string
	description?:             string
	id?:                      string
	last_updated_date?:       string
	name!:                    string
	parent_intent_signature?: string
	version?:                 string
}
