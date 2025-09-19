package res

#aws_bedrockagent_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrockagent_agent")
	close({
		agent_arn?:               string
		agent_collaboration?:     string
		agent_id?:                string
		agent_name!:              string
		agent_resource_role_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		agent_version?:               string
		customer_encryption_key_arn?: string
		description?:                 string
		foundation_model!:            string
		guardrail_configuration?: [...close({
			guardrail_identifier?: string
			guardrail_version?:    string
		})]
		timeouts?:                    #timeouts
		id?:                          string
		idle_session_ttl_in_seconds?: number
		instruction?:                 string
		memory_configuration?: [...close({
			enabled_memory_types?: [...string]
			storage_days?: number
		})]
		prepare_agent?: bool
		prepared_at?:   string
		prompt_override_configuration?: [...close({
			override_lambda?: string
			prompt_configurations?: [...close({
				base_prompt_template?: string
				inference_configuration?: [...close({
					max_length?: number
					stop_sequences?: [...string]
					temperature?: number
					top_k?:       number
					top_p?:       number
				})]
				parser_mode?:          string
				prompt_creation_mode?: string
				prompt_state?:         string
				prompt_type?:          string
			})]
		})]
		skip_resource_in_use_check?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
