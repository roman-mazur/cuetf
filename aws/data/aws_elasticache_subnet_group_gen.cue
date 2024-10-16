package data

#aws_elasticache_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_subnet_group")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	subnet_ids?: [...string]
	tags?: [string]: string
	vpc_id?: string
}
