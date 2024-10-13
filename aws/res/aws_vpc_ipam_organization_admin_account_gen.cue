package res

#aws_vpc_ipam_organization_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam_organization_admin_account")
	arn?:                        string
	delegated_admin_account_id!: string
	email?:                      string
	id?:                         string
	name?:                       string
	service_principal?:          string
}
