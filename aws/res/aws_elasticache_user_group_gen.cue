package res

#aws_elasticache_user_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_user_group")
	arn?:    string
	engine!: string
	id?:     string
	tags?: [string]:     string
	tags_all?: [string]: string
	user_group_id!: string
	user_ids?: [...string]
}
