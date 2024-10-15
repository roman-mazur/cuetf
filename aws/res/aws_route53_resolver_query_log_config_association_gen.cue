package res

#aws_route53_resolver_query_log_config_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_query_log_config_association")
	id?:                           string
	resolver_query_log_config_id!: string
	resource_id!:                  string
}
