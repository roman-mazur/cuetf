package data

#aws_kendra_faq: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kendra_faq")
	arn?:           string
	created_at?:    string
	description?:   string
	error_message?: string
	faq_id:         string
	file_format?:   string
	id?:            string
	index_id:       string
	language_code?: string
	name?:          string
	role_arn?:      string
	s3_path?: [...{
		bucket?: string
		key?:    string
	}]
	status?: string
	tags?: [string]: string
	updated_at?: string
}
