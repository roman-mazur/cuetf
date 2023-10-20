package data

#aws_route53_resolver_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_rule")
	arn?:                  string
	domain_name?:          string
	id?:                   string
	name?:                 string
	owner_id?:             string
	resolver_endpoint_id?: string
	resolver_rule_id?:     string
	rule_type?:            string
	share_status?:         string
	tags?: [string]: string
}
