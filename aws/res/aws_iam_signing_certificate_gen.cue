package res

#aws_iam_signing_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_signing_certificate")
	certificate_body: string
	certificate_id?:  string
	id?:              string
	status?:          string
	user_name:        string
}
