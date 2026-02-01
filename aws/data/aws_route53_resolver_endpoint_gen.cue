package data

#aws_route53_resolver_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_route53_resolver_endpoint")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		direction?: string
		id?:        string
		ip_addresses?: [...string]
		name?: string
		protocols?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		resolver_endpoint_id?:               string
		resolver_endpoint_type?:             string
		rni_enhanced_metrics_enabled?:       bool
		status?:                             string
		target_name_server_metrics_enabled?: bool
		vpc_id?:                             string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
