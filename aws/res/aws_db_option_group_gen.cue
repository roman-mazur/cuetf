package res

#aws_db_option_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_option_group")
	close({
		arn?:         string
		engine_name!: string
		option?: matchN(1, [#option, [...#option]])
		id?:                       string
		major_engine_version!:     string
		name?:                     string
		name_prefix?:              string
		option_group_description?: string
		timeouts?:                 #timeouts
		region?:                   string
		skip_destroy?:             bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#option: close({
		db_security_group_memberships?: [...string]
		option_settings?: matchN(1, [_#defs."/$defs/option/$defs/option_settings", [..._#defs."/$defs/option/$defs/option_settings"]])
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
