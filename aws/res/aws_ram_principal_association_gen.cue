package res

#aws_ram_principal_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ram_principal_association")
	id?:                string
	principal:          string
	resource_share_arn: string
}
