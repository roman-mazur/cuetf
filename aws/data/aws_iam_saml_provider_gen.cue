package data

#aws_iam_saml_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_saml_provider")
	arn!:                    string
	create_date?:            string
	id?:                     string
	name?:                   string
	saml_metadata_document?: string
	tags?: [string]: string
	valid_until?: string
}
