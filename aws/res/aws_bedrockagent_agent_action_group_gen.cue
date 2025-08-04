package res

#aws_bedrockagent_agent_action_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_agent_action_group")
	close({
		action_group_id?:               string
		action_group_name!:             string
		action_group_state?:            string
		agent_id!:                      string
		agent_version!:                 string
		description?:                   string
		id?:                            string
		parent_action_group_signature?: string
		action_group_executor?: matchN(1, [#action_group_executor, [...#action_group_executor]])
		prepare_agent?: bool
		api_schema?: matchN(1, [#api_schema, [...#api_schema]])
		region?: string
		function_schema?: matchN(1, [#function_schema, [...#function_schema]])
		timeouts?:                   #timeouts
		skip_resource_in_use_check?: bool
	})

	#action_group_executor: close({
		custom_control?: string
		lambda?:         string
	})

	#api_schema: close({
		s3?: matchN(1, [_#defs."/$defs/api_schema/$defs/s3", [..._#defs."/$defs/api_schema/$defs/s3"]])
		payload?: string
	})

	#function_schema: close({
		member_functions?: matchN(1, [_#defs."/$defs/function_schema/$defs/member_functions", [..._#defs."/$defs/function_schema/$defs/member_functions"]])
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/api_schema/$defs/s3": close({
		s3_bucket_name?: string
		s3_object_key?:  string
	})

	_#defs: "/$defs/function_schema/$defs/member_functions": close({
		functions?: matchN(1, [_#defs."/$defs/function_schema/$defs/member_functions/$defs/functions", [..._#defs."/$defs/function_schema/$defs/member_functions/$defs/functions"]])
	})

	_#defs: "/$defs/function_schema/$defs/member_functions/$defs/functions": close({
		parameters?: matchN(1, [_#defs."/$defs/function_schema/$defs/member_functions/$defs/functions/$defs/parameters", [..._#defs."/$defs/function_schema/$defs/member_functions/$defs/functions/$defs/parameters"]])
		description?: string
		name!:        string
	})

	_#defs: "/$defs/function_schema/$defs/member_functions/$defs/functions/$defs/parameters": close({
		description?:   string
		map_block_key!: string
		required?:      bool
		type!:          string
	})
}
