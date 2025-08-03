package res

#aws_ses_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ses_template")
	close({
		arn?:     string
		html?:    string
		id?:      string
		name!:    string
		region?:  string
		subject?: string
		text?:    string
	})
}
