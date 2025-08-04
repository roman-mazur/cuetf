package res

#aws_bedrockagent_flow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_flow")
	close({
		arn?:                         string
		created_at?:                  string
		customer_encryption_key_arn?: string
		description?:                 string
		execution_role_arn!:          string
		id?:                          string
		name!:                        string
		definition?: matchN(1, [#definition, [...#definition]])
		region?:   string
		status?:   string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
		version?:    string
	})

	#definition: close({
		connection?: matchN(1, [_#defs."/$defs/definition/$defs/connection", [..._#defs."/$defs/definition/$defs/connection"]])
		node?: matchN(1, [_#defs."/$defs/definition/$defs/node", [..._#defs."/$defs/definition/$defs/node"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/definition/$defs/connection": close({
		configuration?: matchN(1, [_#defs."/$defs/definition/$defs/connection/$defs/configuration", [..._#defs."/$defs/definition/$defs/connection/$defs/configuration"]])
		name!:   string
		source!: string
		target!: string
		type!:   string
	})

	_#defs: "/$defs/definition/$defs/connection/$defs/configuration": close({
		conditional?: matchN(1, [_#defs."/$defs/definition/$defs/connection/$defs/configuration/$defs/conditional", [..._#defs."/$defs/definition/$defs/connection/$defs/configuration/$defs/conditional"]])
		data?: matchN(1, [_#defs."/$defs/definition/$defs/connection/$defs/configuration/$defs/data", [..._#defs."/$defs/definition/$defs/connection/$defs/configuration/$defs/data"]])
	})

	_#defs: "/$defs/definition/$defs/connection/$defs/configuration/$defs/conditional": close({
		condition!: string
	})

	_#defs: "/$defs/definition/$defs/connection/$defs/configuration/$defs/data": close({
		source_output!: string
		target_input!:  string
	})

	_#defs: "/$defs/definition/$defs/node": close({
		configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration"]])
		input?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/input", [..._#defs."/$defs/definition/$defs/node/$defs/input"]])
		output?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/output", [..._#defs."/$defs/definition/$defs/node/$defs/output"]])
		name!: string
		type!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration": close({
		agent?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/agent", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/agent"]])
		collector?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/collector", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/collector"]])
		condition?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/condition", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/condition"]])
		inline_code?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/inline_code", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/inline_code"]])
		input?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/input", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/input"]])
		iterator?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/iterator", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/iterator"]])
		knowledge_base?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base"]])
		lambda_function?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/lambda_function", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/lambda_function"]])
		lex?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/lex", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/lex"]])
		output?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/output", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/output"]])
		prompt?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt"]])
		retrieval?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval"]])
		storage?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/storage", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/storage"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/agent": close({
		agent_alias_arn!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/collector": close({})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/condition": close({
		condition?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/condition/$defs/condition", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/condition/$defs/condition"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/condition/$defs/condition": close({
		expression?: string
		name!:       string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/inline_code": close({
		code!:     string
		language!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/input": close({})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/iterator": close({})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base": close({
		guardrail_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/guardrail_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/guardrail_configuration"]])
		inference_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/inference_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/inference_configuration"]])
		knowledge_base_id!: string
		model_id!:          string
		number_of_results?: number
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/guardrail_configuration": close({
		guardrail_identifier!: string
		guardrail_version!:    string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/inference_configuration": close({
		text?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/inference_configuration/$defs/text", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/inference_configuration/$defs/text"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/knowledge_base/$defs/inference_configuration/$defs/text": close({
		max_tokens?: number
		stop_sequences?: [...string]
		temperature?: number
		top_p?:       number
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/lambda_function": close({
		lambda_arn!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/lex": close({
		bot_alias_arn!: string
		locale_id!:     string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/output": close({})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt": close({
		guardrail_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/guardrail_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/guardrail_configuration"]])
		source_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/guardrail_configuration": close({
		guardrail_identifier!: string
		guardrail_version!:    string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration": close({
		inline?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline"]])
		resource?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/resource", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/resource"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline": close({
		inference_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/inference_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/inference_configuration"]])
		template_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration"]])
		additional_model_request_fields?: string
		model_id!:                        string
		template_type!:                   string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/inference_configuration": close({
		text?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/inference_configuration/$defs/text", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/inference_configuration/$defs/text"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/inference_configuration/$defs/text": close({
		max_tokens?: number
		stop_sequences?: [...string]
		temperature?: number
		top_p?:       number
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration": close({
		chat?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat"]])
		text?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat": close({
		input_variable?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/input_variable", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/input_variable"]])
		message?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message"]])
		system?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/system", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/system"]])
		tool_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/input_variable": close({
		name!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message": close({
		content?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message/$defs/content", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message/$defs/content"]])
		role!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message/$defs/content": close({
		cache_point?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message/$defs/content/$defs/cache_point", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message/$defs/content/$defs/cache_point"]])
		text?: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/message/$defs/content/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/system": close({
		cache_point?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/system/$defs/cache_point", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/system/$defs/cache_point"]])
		text?: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/system/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration": close({
		tool?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool"]])
		tool_choice?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool": close({
		cache_point?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/cache_point", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/cache_point"]])
		tool_spec?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec": close({
		input_schema?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec/$defs/input_schema", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec/$defs/input_schema"]])
		description?: string
		name!:        string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool/$defs/tool_spec/$defs/input_schema": close({
		json?: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice": close({
		any?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/any", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/any"]])
		auto?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/auto", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/auto"]])
		tool?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/tool", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/tool"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/any": close({})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/auto": close({})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/chat/$defs/tool_configuration/$defs/tool_choice/$defs/tool": close({
		name!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text": close({
		cache_point?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text/$defs/cache_point", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text/$defs/cache_point"]])
		input_variable?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text/$defs/input_variable", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text/$defs/input_variable"]])
		text!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text/$defs/cache_point": close({
		type!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/inline/$defs/template_configuration/$defs/text/$defs/input_variable": close({
		name!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/prompt/$defs/source_configuration/$defs/resource": close({
		prompt_arn!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval": close({
		service_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval/$defs/service_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval/$defs/service_configuration"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval/$defs/service_configuration": close({
		s3?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval/$defs/service_configuration/$defs/s3", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval/$defs/service_configuration/$defs/s3"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/retrieval/$defs/service_configuration/$defs/s3": close({
		bucket_name!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/storage": close({
		service_configuration?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/storage/$defs/service_configuration", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/storage/$defs/service_configuration"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/storage/$defs/service_configuration": close({
		s3?: matchN(1, [_#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/storage/$defs/service_configuration/$defs/s3", [..._#defs."/$defs/definition/$defs/node/$defs/configuration/$defs/storage/$defs/service_configuration/$defs/s3"]])
	})

	_#defs: "/$defs/definition/$defs/node/$defs/configuration/$defs/storage/$defs/service_configuration/$defs/s3": close({
		bucket_name!: string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/input": close({
		category?:   string
		expression!: string
		name!:       string
		type!:       string
	})

	_#defs: "/$defs/definition/$defs/node/$defs/output": close({
		name!: string
		type!: string
	})
}
