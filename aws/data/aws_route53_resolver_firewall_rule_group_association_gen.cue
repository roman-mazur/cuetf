package data

#aws_route53_resolver_firewall_rule_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_firewall_rule_group_association")
	arn?:                                string
	creation_time?:                      string
	creator_request_id?:                 string
	firewall_rule_group_association_id!: string
	firewall_rule_group_id?:             string
	id?:                                 string
	managed_owner_name?:                 string
	modification_time?:                  string
	mutation_protection?:                string
	name?:                               string
	priority?:                           number
	status?:                             string
	status_message?:                     string
	vpc_id?:                             string
}
