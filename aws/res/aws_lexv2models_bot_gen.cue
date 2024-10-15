package res

#aws_lexv2models_bot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lexv2models_bot")
	arn?:                         string
	description?:                 string
	id?:                          string
	idle_session_ttl_in_seconds!: number
	name!:                        string
	role_arn!:                    string
	tags?: [string]:                string
	tags_all?: [string]:            string
	test_bot_alias_tags?: [string]: string
	type?: string
	data_privacy?: #data_privacy | [...#data_privacy]
	members?: #members | [...#members]
	timeouts?: #timeouts

	#data_privacy: child_directed!: bool

	#members: {
		alias_id!:   string
		alias_name!: string
		id!:         string
		name!:       string
		version!:    string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
