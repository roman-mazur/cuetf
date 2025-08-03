package data

#aws_route53_resolver_query_log_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_query_log_config")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		destination_arn?:              string
		id?:                           string
		name?:                         string
		owner_id?:                     string
		region?:                       string
		resolver_query_log_config_id?: string
		share_status?:                 string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
