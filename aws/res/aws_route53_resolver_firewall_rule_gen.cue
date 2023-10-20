package res

#aws_route53_resolver_firewall_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_firewall_rule")
	action:                   string
	block_override_dns_type?: string
	block_override_domain?:   string
	block_override_ttl?:      number
	block_response?:          string
	firewall_domain_list_id:  string
	firewall_rule_group_id:   string
	id?:                      string
	name:                     string
	priority:                 number
}
