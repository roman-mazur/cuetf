package res

#aws_default_security_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_default_security_group")
	close({
		arn?:         string
		description?: string
		egress?: [...close({
			cidr_blocks?: [...string]
			description?: string
			from_port?:   number
			ipv6_cidr_blocks?: [...string]
			prefix_list_ids?: [...string]
			protocol?: string
			security_groups?: [...string]
			self?:    bool
			to_port?: number
		})]
		id?: string
		ingress?: [...close({
			cidr_blocks?: [...string]
			description?: string
			from_port?:   number
			ipv6_cidr_blocks?: [...string]
			prefix_list_ids?: [...string]
			protocol?: string
			security_groups?: [...string]
			self?:    bool
			to_port?: number
		})]
		name?:        string
		name_prefix?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		owner_id?:               string
		revoke_rules_on_delete?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})
}
