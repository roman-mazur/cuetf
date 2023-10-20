package data

#aws_route53_resolver_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_rules")
	id?:                   string
	name_regex?:           string
	owner_id?:             string
	resolver_endpoint_id?: string
	resolver_rule_ids?: [...string]
	rule_type?:    string
	share_status?: string
}
