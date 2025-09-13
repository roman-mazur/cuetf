package data

#aws_route53_resolver_firewall_rule_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_firewall_rule_group_association")
	close({
		arn?:                                string
		creation_time?:                      string
		creator_request_id?:                 string
		firewall_rule_group_association_id!: string
		firewall_rule_group_id?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		id?:                  string
		managed_owner_name?:  string
		modification_time?:   string
		mutation_protection?: string
		name?:                string
		priority?:            number
		status?:              string
		status_message?:      string
		vpc_id?:              string
	})
}
