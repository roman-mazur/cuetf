package res

#aws_security_group_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_security_group_rule")
	close({
		cidr_blocks?: [...string]
		description?: string
		from_port!:   number
		id?:          string
		ipv6_cidr_blocks?: [...string]
		prefix_list_ids?: [...string]
		protocol!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		timeouts?:                 #timeouts
		security_group_id!:        string
		security_group_rule_id?:   string
		self?:                     bool
		source_security_group_id?: string
		to_port!:                  number
		type!:                     string
	})

	#timeouts: close({
		create?: string
	})
}
