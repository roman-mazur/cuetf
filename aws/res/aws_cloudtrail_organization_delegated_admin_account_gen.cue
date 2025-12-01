package res

#aws_cloudtrail_organization_delegated_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudtrail_organization_delegated_admin_account")
	close({
		account_id!:        string
		arn?:               string
		email?:             string
		id?:                string
		name?:              string
		service_principal?: string
	})
}
