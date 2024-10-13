package data

#aws_db_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_subnet_group")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	status?:      string
	subnet_ids?: [...string]
	supported_network_types?: [...string]
	vpc_id?: string
}
