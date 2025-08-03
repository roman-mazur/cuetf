package res

#aws_route53_resolver_rule_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_rule_association")
	close({
		id?:               string
		timeouts?:         #timeouts
		name?:             string
		region?:           string
		resolver_rule_id!: string
		vpc_id!:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
