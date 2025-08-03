package res

#aws_auditmanager_organization_admin_account_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_organization_admin_account_registration")
	close({
		admin_account_id!: string
		id?:               string
		organization_id?:  string
		region?:           string
	})
}
