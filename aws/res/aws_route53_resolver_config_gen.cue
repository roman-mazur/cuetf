package res

#aws_route53_resolver_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_config")
	autodefined_reverse_flag!: string
	id?:                       string
	owner_id?:                 string
	resource_id!:              string
}
