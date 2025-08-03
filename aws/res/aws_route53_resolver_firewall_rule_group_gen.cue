package res

#aws_route53_resolver_firewall_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_firewall_rule_group")
	close({
		arn?:          string
		id?:           string
		name!:         string
		owner_id?:     string
		region?:       string
		share_status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
