package res

#aws_macie2_organization_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_organization_admin_account")
	close({
		admin_account_id!: string
		id?:               string
		region?:           string
	})
}
