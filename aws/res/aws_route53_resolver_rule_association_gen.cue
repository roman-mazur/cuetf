package res

#aws_route53_resolver_rule_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_rule_association")
	id?:               string
	name?:             string
	resolver_rule_id!: string
	vpc_id!:           string
	timeouts?:         #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
