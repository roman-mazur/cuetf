package res

#aws_route53_resolver_firewall_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_firewall_rule_group")
	arn?:          string
	id?:           string
	name:          string
	owner_id?:     string
	share_status?: string
	tags?: [string]: string
	tags_all?: [string]: string
}
