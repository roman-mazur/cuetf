package res

#aws_ecs_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_tag")
	id?:          string
	key:          string
	resource_arn: string
	value:        string
}
