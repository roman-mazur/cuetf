package data

#aws_organizations_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_organizations_account")
	close({
		account_id!:       string
		arn?:              string
		email?:            string
		id?:               string
		joined_method?:    string
		joined_timestamp?: string
		name?:             string
		parent_id?:        string
		state?:            string
		tags?: [string]: string
	})
}
