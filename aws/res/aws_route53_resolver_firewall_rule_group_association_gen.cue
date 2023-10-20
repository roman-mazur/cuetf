package res

#aws_route53_resolver_firewall_rule_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_firewall_rule_group_association")
	arn?:                   string
	firewall_rule_group_id: string
	id?:                    string
	mutation_protection?:   string
	name:                   string
	priority:               number
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id: string
}
