package res

#aws_ses_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ses_template")
	arn?:     string
	html?:    string
	id?:      string
	name!:    string
	subject?: string
	text?:    string
}
