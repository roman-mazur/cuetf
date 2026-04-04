package data

#aws_iam_saml_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_iam_saml_provider")
	close({
		arn!:                    string
		create_date?:            string
		id?:                     string
		name?:                   string
		saml_metadata_document?: string
		saml_provider_uuid?:     string
		tags?: [string]: string
		valid_until?: string
	})
}
