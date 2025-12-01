package data

#aws_route53_resolver_firewall_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_route53_resolver_firewall_rules")
	close({
		action?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		firewall_rule_group_id!: string
		firewall_rules?: [...close({
			action?:                  string
			block_override_dns_type?: string
			block_override_domain?:   string
			block_override_ttl?:      number
			block_response?:          string
			creation_time?:           string
			creator_request_id?:      string
			firewall_domain_list_id?: string
			firewall_rule_group_id?:  string
			modification_time?:       string
			name?:                    string
			priority?:                number
		})]
		id?:       string
		priority?: number
	})
}
