package res

#aws_elasticache_user_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_user_group_association")
	id?:           string
	user_group_id: string
	user_id:       string
}
