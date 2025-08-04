package res

#aws_route53_resolver_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_resolver_rule")
	close({
		arn?:         string
		domain_name!: string
		id?:          string
		name?:        string
		owner_id?:    string
		region?:      string
		target_ip?: matchN(1, [#target_ip, [...#target_ip]])
		resolver_endpoint_id?: string
		rule_type!:            string
		timeouts?:             #timeouts
		share_status?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#target_ip: close({
		ip?:       string
		ipv6?:     string
		port?:     number
		protocol?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
