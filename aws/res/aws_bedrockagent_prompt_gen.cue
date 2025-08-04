package res

#aws_bedrockagent_prompt: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_prompt")
	close({
		arn?:                         string
		created_at?:                  string
		customer_encryption_key_arn?: string
		default_variant?:             string
		description?:                 string
		id?:                          string
		name!:                        string
		region?:                      string
		variant?: matchN(1, [#variant, [...#variant]])
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
		version?:    string
	})

	#variant: close({
		gen_ai_resource?: matchN(1, [_#defs."/$defs/variant/$defs/gen_ai_resource", [..._#defs."/$defs/variant/$defs/gen_ai_resource"]])
		additional_model_request_fields?: string
		model_id?:                        string
		name!:                            string
		template_type!:                   string
		inference_configuration?: matchN(1, [_#defs."/$defs/variant/$defs/inference_configuration", [..._#defs."/$defs/variant/$defs/inference_configuration"]])
		metadata?: matchN(1, [_#defs."/$defs/variant/$defs/metadata", [..._#defs."/$defs/variant/$defs/metadata"]])
		template_configuration?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration", [..._#defs."/$defs/variant/$defs/template_configuration"]])
	})

	_#defs: "/$defs/variant/$defs/gen_ai_resource": close({
		agent?: matchN(1, [_#defs."/$defs/variant/$defs/gen_ai_resource/$defs/agent", [..._#defs."/$defs/variant/$defs/gen_ai_resource/$defs/agent"]])
	})

	_#defs: "/$defs/variant/$defs/gen_ai_resource/$defs/agent": close({
		agent_identifier!: string
	})

	_#defs: "/$defs/variant/$defs/inference_configuration": close({
		text?: matchN(1, [_#defs."/$defs/variant/$defs/inference_configuration/$defs/text", [..._#defs."/$defs/variant/$defs/inference_configuration/$defs/text"]])
	})

	_#defs: "/$defs/variant/$defs/inference_configuration/$defs/text": close({
		max_tokens?: number
		stop_sequences?: [...string]
		temperature?: number
		top_p?:       number
	})

	_#defs: "/$defs/variant/$defs/metadata": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration": close({
		chat?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat"]])
		text?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/text", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/text"]])
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat": close({
		input_variable?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/input_variable", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/input_variable"]])
		message?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message"]])
		system?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/system", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/system"]])
		tool_configuration?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration"]])
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/input_variable": close({
		name!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message": close({
		content?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message/$defs/content", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message/$defs/content"]])
		role!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message/$defs/content": close({
		cache_point?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message/$defs/content/$defs/cache_point", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message/$defs/content/$defs/cache_point"]])
		text?: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/message/$defs/content/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/system": close({
		cache_point?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/system/$defs/cache_point", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/system/$defs/cache_point"]])
		text?: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/system/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration": close({
		tool?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool"]])
		tool_choice?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice"]])
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool": close({
		cache_point?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/cache_point", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/cache_point"]])
		tool_spec?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec"]])
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec": close({
		input_schema?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec/$defs/input_schema", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec/$defs/input_schema"]])
		description?: string
		name!:        string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec/$defs/input_schema": close({
		json?: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice": close({
		any?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/any", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/any"]])
		auto?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/auto", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/auto"]])
		tool?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/tool", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/tool"]])
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/any": close({})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/auto": close({})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/tool": close({
		name!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/text": close({
		cache_point?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/text/$defs/cache_point", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/text/$defs/cache_point"]])
		input_variable?: matchN(1, [_#defs."/$defs/variant/$defs/template_configuration/$defs/text/$defs/input_variable", [..._#defs."/$defs/variant/$defs/template_configuration/$defs/text/$defs/input_variable"]])
		text!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/text/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/variant/$defs/template_configuration/$defs/text/$defs/input_variable": close({
		name!: string
	})
}
