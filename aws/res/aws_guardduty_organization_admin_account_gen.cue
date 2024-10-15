package res

#aws_guardduty_organization_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_organization_admin_account")
	admin_account_id!: string
	id?:               string
}
