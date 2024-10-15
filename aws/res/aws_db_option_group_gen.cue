package res

#aws_db_option_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_option_group")
	arn?:                      string
	engine_name!:              string
	id?:                       string
	major_engine_version!:     string
	name?:                     string
	name_prefix?:              string
	option_group_description?: string
	skip_destroy?:             bool
	tags?: [string]:     string
	tags_all?: [string]: string
	option?: #option | [...#option]
	timeouts?: #timeouts

	#option: {
		db_security_group_memberships?: [...string]
		option_name!: string
		port?:        number
		version?:     string
		vpc_security_group_memberships?: [...string]
		option_settings?: #option.#option_settings | [...#option.#option_settings]

		#option_settings: {
			name!:  string
			value!: string
		}
	}

	#timeouts: delete?: string
}
