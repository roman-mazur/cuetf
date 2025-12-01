package data

#aws_route53_resolver_firewall_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_route53_resolver_firewall_rule_group")
	close({
		arn?:                    string
		creation_time?:          string
		creator_request_id?:     string
		firewall_rule_group_id!: string
		id?:                     string
		modification_time?:      string
		name?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		owner_id?:       string
		rule_count?:     number
		share_status?:   string
		status?:         string
		status_message?: string
	})
}
