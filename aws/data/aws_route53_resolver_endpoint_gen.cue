package data

#aws_route53_resolver_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_endpoint")
	close({
		arn?:       string
		direction?: string
		id?:        string
		ip_addresses?: [...string]
		name?: string
		protocols?: [...string]
		region?:                 string
		resolver_endpoint_id?:   string
		resolver_endpoint_type?: string
		filter?: matchN(1, [#filter, [...#filter]])
		status?: string
		vpc_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
