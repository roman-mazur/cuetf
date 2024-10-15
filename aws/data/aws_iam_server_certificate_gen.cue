package data

#aws_iam_server_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_server_certificate")
	arn?:               string
	certificate_body?:  string
	certificate_chain?: string
	expiration_date?:   string
	id?:                string
	latest?:            bool
	name?:              string
	name_prefix?:       string
	path?:              string
	path_prefix?:       string
	upload_date?:       string
}
