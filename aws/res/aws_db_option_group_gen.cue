package res

#aws_db_option_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_db_option_group")
	close({
		arn?:                  string
		engine_name!:          string
		id?:                   string
		major_engine_version!: string
		option?: matchN(1, [#option, [...#option]])
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		name_prefix?:              string
		option_group_description?: string
		skip_destroy?:             bool
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#option: close({
		option_settings?: matchN(1, [_#defs."/$defs/option/$defs/option_settings", [..._#defs."/$defs/option/$defs/option_settings"]])
		db_security_group_memberships?: [...string]
		option_name!: string
		port?:        number
		version?:     string
		vpc_security_group_memberships?: [...string]
	})

	#timeouts: close({
		delete?: string
	})

	_#defs: "/$defs/option/$defs/option_settings": close({
		name!:  string
		value!: string
	})
}
