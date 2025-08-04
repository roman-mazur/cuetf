package res

#aws_db_option_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_option_group")
	close({
		arn?:                  string
		engine_name!:          string
		id?:                   string
		major_engine_version!: string
		name?:                 string
		name_prefix?:          string
		option?: matchN(1, [#option, [...#option]])
		option_group_description?: string
		region?:                   string
		timeouts?:                 #timeouts
		skip_destroy?:             bool
		tags?: [string]:     string
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
