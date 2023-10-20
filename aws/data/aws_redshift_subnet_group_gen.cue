package data

#aws_redshift_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_subnet_group")
	arn?:         string
	description?: string
	id?:          string
	name:         string
	subnet_ids?: [...string]
	tags?: [string]: string
}
