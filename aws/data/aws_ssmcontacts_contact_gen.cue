package data

#aws_ssmcontacts_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssmcontacts_contact")
	alias?:        string
	arn:           string
	display_name?: string
	id?:           string
	tags?: [string]: string
	type?: string
}
