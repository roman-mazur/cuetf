package res

#aws_organizations_aws_service_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_organizations_aws_service_access")
	close({
		date_enabled?:      string
		service_principal!: string
	})
}
