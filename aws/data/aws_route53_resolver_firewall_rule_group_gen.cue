package data

#aws_route53_resolver_firewall_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_firewall_rule_group")
	arn?:                   string
	creation_time?:         string
	creator_request_id?:    string
	firewall_rule_group_id: string
	id?:                    string
	modification_time?:     string
	name?:                  string
	owner_id?:              string
	rule_count?:            number
	share_status?:          string
	status?:                string
	status_message?:        string
}
