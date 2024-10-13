package res

#aws_cloudtrail_organization_delegated_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudtrail_organization_delegated_admin_account")
	account_id!:        string
	arn?:               string
	email?:             string
	id?:                string
	name?:              string
	service_principal?: string
}
