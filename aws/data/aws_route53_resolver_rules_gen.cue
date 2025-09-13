package data

#aws_route53_resolver_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_rules")
	close({
		id?:         string
		name_regex?: string
		owner_id?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		resolver_endpoint_id?: string
		resolver_rule_ids?: [...string]
		rule_type?:    string
		share_status?: string
	})
}
