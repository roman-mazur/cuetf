package data

#aws_organizations_delegated_administrators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_delegated_administrators")
	delegated_administrators?: [...{
		arn?:                     string
		delegation_enabled_date?: string
		email?:                   string
		id?:                      string
		joined_method?:           string
		joined_timestamp?:        string
		name?:                    string
		status?:                  string
	}]
	id?:                string
	service_principal?: string
}
