package res

#aws_detective_organization_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_detective_organization_admin_account")
	close({
		account_id!: string
		id?:         string
		region?:     string
	})
}
