package data

#aws_route53_resolver_query_log_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_route53_resolver_query_log_config")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		arn?:                          string
		destination_arn?:              string
		id?:                           string
		name?:                         string
		owner_id?:                     string
		resolver_query_log_config_id?: string
		share_status?:                 string
		tags?: [string]: string
		filter?: matchN(1, [#filter, [...#filter]])
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
