package res

#aws_acmpca_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_acmpca_permission")
	actions!: [...string]
	certificate_authority_arn!: string
	id?:                        string
	policy?:                    string
	principal!:                 string
	source_account?:            string
}
