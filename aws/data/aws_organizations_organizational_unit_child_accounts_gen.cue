package data

#aws_organizations_organizational_unit_child_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_organizations_organizational_unit_child_accounts")
	close({
		accounts?: [...close({
			arn?:              string
			email?:            string
			id?:               string
			joined_method?:    string
			joined_timestamp?: string
			name?:             string
			state?:            string
			status?:           string
		})]
		id?:        string
		parent_id!: string
	})
}
