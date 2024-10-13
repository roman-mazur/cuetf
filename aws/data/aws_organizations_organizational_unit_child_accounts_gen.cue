package data

#aws_organizations_organizational_unit_child_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_organizations_organizational_unit_child_accounts")
	accounts?: [...{
		arn?:    string
		email?:  string
		id?:     string
		name?:   string
		status?: string
	}]
	id?:        string
	parent_id!: string
}
