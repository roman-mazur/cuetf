package res

#aws_route53_resolver_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_resolver_rule")
	arn?:                  string
	domain_name!:          string
	id?:                   string
	name?:                 string
	owner_id?:             string
	resolver_endpoint_id?: string
	rule_type!:            string
	share_status?:         string
	tags?: [string]: string
	tags_all?: [string]: string
	target_ip?: #target_ip | [...#target_ip]
	timeouts?: #timeouts

	#target_ip: {
		ip?:       string
		ipv6?:     string
		port?:     number
		protocol?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
