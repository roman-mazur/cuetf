package res

#aws_route53_resolver_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53_resolver_rule")
	close({
		arn?:         string
		domain_name!: string
		id?:          string
		name?:        string
		target_ip?: matchN(1, [#target_ip, [...#target_ip]])
		owner_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		resolver_endpoint_id?: string
		rule_type!:            string
		share_status?:         string
		tags?: [string]: string
		timeouts?: #timeouts
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
