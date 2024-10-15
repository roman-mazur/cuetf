package res

#aws_iam_saml_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iam_saml_provider")
	arn?:                    string
	id?:                     string
	name!:                   string
	saml_metadata_document!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	valid_until?: string
}
