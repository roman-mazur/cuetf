package data

#aws_caller_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_caller_identity")
	account_id?: string
	arn?:        string
	id?:         string
	user_id?:    string
}
