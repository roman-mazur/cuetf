package res

aws_networksecuritymanager_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networksecuritymanager_policy")
	close({
		configuration?: matchN(1, [#configuration, [...#configuration]])
		template_or_rule?: matchN(1, [#template_or_rule, [...#template_or_rule]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		description?:   string
		firewall_type!: string
		is_published?:  bool
		name!:          string
		priority!:      number
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#configuration: close({
		waf_config?: matchN(1, [_#defs."/$defs/configuration/$defs/waf_config", [..._#defs."/$defs/configuration/$defs/waf_config"]])
		remediation_enabled!: bool
		resources_clean_up!:  bool
	})

	#template_or_rule: close({
		rule_identifier?:     string
		template_identifier?: string
	})

	_#defs: "/$defs/configuration/$defs/waf_config": close({
		conflict_resolution!:                  string
		existing_customer_web_acl_resolution!: string
	})
}
