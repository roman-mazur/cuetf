package data

#aws_arn: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_arn")
	account?:   string
	arn:        string
	id?:        string
	partition?: string
	region?:    string
	resource?:  string
	service?:   string
}
