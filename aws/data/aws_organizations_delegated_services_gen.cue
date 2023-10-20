package data

#aws_organizations_delegated_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_delegated_services")
	account_id: string
	delegated_services?: [...{
		delegation_enabled_date?: string
		service_principal?:       string
	}]
	id?: string
}
