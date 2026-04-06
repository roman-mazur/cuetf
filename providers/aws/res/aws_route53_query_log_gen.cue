package res

#aws_route53_query_log: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53_query_log")
	close({
		arn?:                      string
		cloudwatch_log_group_arn!: string
		id?:                       string
		zone_id!:                  string
	})
}
