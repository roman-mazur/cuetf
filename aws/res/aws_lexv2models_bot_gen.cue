package res

#aws_lexv2models_bot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lexv2models_bot")
	close({
		arn?:         string
		description?: string
		data_privacy?: matchN(1, [#data_privacy, [...#data_privacy]])
		members?: matchN(1, [#members, [...#members]])
		id?:                          string
		idle_session_ttl_in_seconds!: number
		timeouts?:                    #timeouts
		name!:                        string
		region?:                      string
		role_arn!:                    string
		tags?: [string]:                string
		tags_all?: [string]:            string
		test_bot_alias_tags?: [string]: string
		type?: string
	})

	#data_privacy: close({
		child_directed!: bool
	})

	#members: close({
		alias_id!:   string
		alias_name!: string
		id!:         string
		name!:       string
		version!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
