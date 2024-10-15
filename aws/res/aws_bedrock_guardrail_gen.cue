package res

#aws_bedrock_guardrail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_guardrail")
	blocked_input_messaging!:   string
	blocked_outputs_messaging!: string
	created_at?:                string
	description?:               string
	guardrail_arn?:             string
	guardrail_id?:              string
	kms_key_arn?:               string
	name!:                      string
	status?:                    string
	tags?: [string]:     string
	tags_all?: [string]: string
	version?: string
	content_policy_config?: #content_policy_config | [...#content_policy_config]
	contextual_grounding_policy_config?: #contextual_grounding_policy_config | [...#contextual_grounding_policy_config]
	sensitive_information_policy_config?: #sensitive_information_policy_config | [...#sensitive_information_policy_config]
	timeouts?: #timeouts
	topic_policy_config?: #topic_policy_config | [...#topic_policy_config]
	word_policy_config?: #word_policy_config | [...#word_policy_config]

	#content_policy_config: {
		filters_config?: #content_policy_config.#filters_config | [...#content_policy_config.#filters_config]

		#filters_config: {
			input_strength!:  string
			output_strength!: string
			type!:            string
		}
	}

	#contextual_grounding_policy_config: {
		filters_config?: #contextual_grounding_policy_config.#filters_config | [...#contextual_grounding_policy_config.#filters_config]

		#filters_config: {
			threshold!: number
			type!:      string
		}
	}

	#sensitive_information_policy_config: {
		pii_entities_config?: #sensitive_information_policy_config.#pii_entities_config | [...#sensitive_information_policy_config.#pii_entities_config]
		regexes_config?: #sensitive_information_policy_config.#regexes_config | [...#sensitive_information_policy_config.#regexes_config]

		#pii_entities_config: {
			action!: string
			type!:   string
		}

		#regexes_config: {
			action!:      string
			description?: string
			name!:        string
			pattern!:     string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#topic_policy_config: {
		topics_config?: #topic_policy_config.#topics_config | [...#topic_policy_config.#topics_config]

		#topics_config: {
			definition!: string
			examples?: [...string]
			name!: string
			type!: string
		}
	}

	#word_policy_config: {
		managed_word_lists_config?: #word_policy_config.#managed_word_lists_config | [...#word_policy_config.#managed_word_lists_config]
		words_config?: #word_policy_config.#words_config | [...#word_policy_config.#words_config]

		#managed_word_lists_config: type!: string

		#words_config: text!: string
	}
}
