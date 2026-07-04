package res

#aws_bedrockagentcore_harness: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_harness")
	close({
		authorizer_configuration?: matchN(1, [#authorizer_configuration, [...#authorizer_configuration]])
		environment_artifact?: matchN(1, [#environment_artifact, [...#environment_artifact]])
		memory?: matchN(1, [#memory, [...#memory]])
		model?: matchN(1, [#model, [...#model]])
		skill?: matchN(1, [#skill, [...#skill]])
		system_prompt?: matchN(1, [#system_prompt, [...#system_prompt]])
		timeouts?: #timeouts
		tool?: matchN(1, [#tool, [...#tool]])
		allowed_tools?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		arn?:    string
		environment?: [...close({
			agentcore_runtime_environment?: [...close({
				agent_runtime_arn?:  string
				agent_runtime_id?:   string
				agent_runtime_name?: string
				filesystem_configuration?: [...close({
					efs_access_point?: [...close({
						access_point_arn?: string
						mount_path?:       string
					})]
					s3_files_access_point?: [...close({
						access_point_arn?: string
						mount_path?:       string
					})]
					session_storage?: [...close({
						mount_path?: string
					})]
				})]
				lifecycle_configuration?: [...close({
					idle_runtime_session_timeout?: number
					max_lifetime?:                 number
				})]
				network_configuration?: [...close({
					network_mode?: string
					network_mode_config?: [...close({
						security_groups?: [...string]
						subnets?: [...string]
					})]
				})]
			})]
		})]
		environment_variables?: [string]: string
		execution_role_arn!: string
		harness_id?:         string
		harness_name!:       string
		max_iterations?:     number
		max_tokens?:         number
		tags?: [string]:     string
		tags_all?: [string]: string
		timeout_seconds?: number
		truncation?: [...close({
			config?: [...close({
				sliding_window?: [...close({
					messages_count?: number
				})]
				summarization?: [...close({
					preserve_recent_messages?:    number
					summarization_system_prompt?: string
					summary_ratio?:               number
				})]
			})]
			strategy?: string
		})]
	})

	#authorizer_configuration: close({
		custom_jwt_authorizer?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer"]])
	})

	#environment_artifact: close({
		container_configuration?: matchN(1, [_#defs."/$defs/environment_artifact/$defs/container_configuration", [..._#defs."/$defs/environment_artifact/$defs/container_configuration"]])
	})

	#memory: close({
		agentcore_memory_configuration?: matchN(1, [_#defs."/$defs/memory/$defs/agentcore_memory_configuration", [..._#defs."/$defs/memory/$defs/agentcore_memory_configuration"]])
	})

	#model: close({
		bedrock_model_config?: matchN(1, [_#defs."/$defs/model/$defs/bedrock_model_config", [..._#defs."/$defs/model/$defs/bedrock_model_config"]])
		gemini_model_config?: matchN(1, [_#defs."/$defs/model/$defs/gemini_model_config", [..._#defs."/$defs/model/$defs/gemini_model_config"]])
		openai_model_config?: matchN(1, [_#defs."/$defs/model/$defs/openai_model_config", [..._#defs."/$defs/model/$defs/openai_model_config"]])
	})

	#skill: close({
		path!: string
	})

	#system_prompt: close({
		text!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	#tool: close({
		config?: matchN(1, [_#defs."/$defs/tool/$defs/config", [..._#defs."/$defs/tool/$defs/config"]])
		name?: string
		type!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer": close({
		custom_claim?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim"]])
		allowed_audience?: [...string]
		allowed_clients?: [...string]
		allowed_scopes?: [...string]
		discovery_url!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim": close({
		authorizing_claim_match_value?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value"]])
		inbound_token_claim_name!:       string
		inbound_token_claim_value_type!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value": close({
		claim_match_value?: matchN(1, [_#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value", [..._#defs."/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value"]])
		claim_match_operator!: string
	})

	_#defs: "/$defs/authorizer_configuration/$defs/custom_jwt_authorizer/$defs/custom_claim/$defs/authorizing_claim_match_value/$defs/claim_match_value": close({
		match_value_string?: string
		match_value_string_list?: [...string]
	})

	_#defs: "/$defs/environment_artifact/$defs/container_configuration": close({
		container_uri!: string
	})

	_#defs: "/$defs/memory/$defs/agentcore_memory_configuration": close({
		retrieval_config?: matchN(1, [_#defs."/$defs/memory/$defs/agentcore_memory_configuration/$defs/retrieval_config", [..._#defs."/$defs/memory/$defs/agentcore_memory_configuration/$defs/retrieval_config"]])
		actor_id?:       string
		arn!:            string
		messages_count?: number
	})

	_#defs: "/$defs/memory/$defs/agentcore_memory_configuration/$defs/retrieval_config": close({
		map_block_key!:   string
		relevance_score?: number
		strategy_id?:     string
		top_k?:           number
	})

	_#defs: "/$defs/model/$defs/bedrock_model_config": close({
		max_tokens?:  number
		model_id!:    string
		temperature?: number
		top_p?:       number
	})

	_#defs: "/$defs/model/$defs/gemini_model_config": close({
		api_key_arn!: string
		max_tokens?:  number
		model_id!:    string
		temperature?: number
		top_k?:       number
		top_p?:       number
	})

	_#defs: "/$defs/model/$defs/openai_model_config": close({
		api_key_arn!: string
		max_tokens?:  number
		model_id!:    string
		temperature?: number
		top_p?:       number
	})

	_#defs: "/$defs/tool/$defs/config": close({
		agentcore_browser?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/agentcore_browser", [..._#defs."/$defs/tool/$defs/config/$defs/agentcore_browser"]])
		agentcore_code_interpreter?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/agentcore_code_interpreter", [..._#defs."/$defs/tool/$defs/config/$defs/agentcore_code_interpreter"]])
		agentcore_gateway?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/agentcore_gateway", [..._#defs."/$defs/tool/$defs/config/$defs/agentcore_gateway"]])
		inline_function?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/inline_function", [..._#defs."/$defs/tool/$defs/config/$defs/inline_function"]])
		remote_mcp?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/remote_mcp", [..._#defs."/$defs/tool/$defs/config/$defs/remote_mcp"]])
	})

	_#defs: "/$defs/tool/$defs/config/$defs/agentcore_browser": close({
		browser_arn?: string
	})

	_#defs: "/$defs/tool/$defs/config/$defs/agentcore_code_interpreter": close({
		code_interpreter_arn?: string
	})

	_#defs: "/$defs/tool/$defs/config/$defs/agentcore_gateway": close({
		outbound_auth?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/agentcore_gateway/$defs/outbound_auth", [..._#defs."/$defs/tool/$defs/config/$defs/agentcore_gateway/$defs/outbound_auth"]])
		gateway_arn!: string
	})

	_#defs: "/$defs/tool/$defs/config/$defs/agentcore_gateway/$defs/outbound_auth": close({
		oauth?: matchN(1, [_#defs."/$defs/tool/$defs/config/$defs/agentcore_gateway/$defs/outbound_auth/$defs/oauth", [..._#defs."/$defs/tool/$defs/config/$defs/agentcore_gateway/$defs/outbound_auth/$defs/oauth"]])
		aws_iam?: bool
		none?:    bool
	})

	_#defs: "/$defs/tool/$defs/config/$defs/agentcore_gateway/$defs/outbound_auth/$defs/oauth": close({
		custom_parameters?: [string]: string
		default_return_url?: string
		grant_type?:         string
		provider_arn!:       string
		scopes!: [...string]
	})

	_#defs: "/$defs/tool/$defs/config/$defs/inline_function": close({
		description!:  string
		input_schema!: string
	})

	_#defs: "/$defs/tool/$defs/config/$defs/remote_mcp": close({
		headers?: [string]: string
		url!: string
	})
}
