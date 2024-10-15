package res

#aws_organizations_delegated_administrator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_delegated_administrator")
	account_id!:              string
	arn?:                     string
	delegation_enabled_date?: string
	email?:                   string
	id?:                      string
	joined_method?:           string
	joined_timestamp?:        string
	name?:                    string
	service_principal!:       string
	status?:                  string
}
