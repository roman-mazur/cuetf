package data

#aws_outposts_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_outposts_site")
	account_id?:  string
	description?: string
	id?:          string
	name?:        string
}
