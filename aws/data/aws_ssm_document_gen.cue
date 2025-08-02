package data

#aws_ssm_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_document")
	close({
		arn?:              string
		content?:          string
		document_format?:  string
		document_type?:    string
		document_version?: string
		id?:               string
		name!:             string
		region?:           string
	})
}
