package data

#aws_ssm_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_document")
	arn?:              string
	content?:          string
	document_format?:  string
	document_type?:    string
	document_version?: string
	id?:               string
	name!:             string
}
