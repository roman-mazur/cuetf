package res

#aws_bedrockagentcore_evaluator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_evaluator")
	close({
		evaluator_config?: matchN(1, [#evaluator_config, [...#evaluator_config]])
		timeouts?:   #timeouts
		created_at?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		description?:             string
		evaluator_arn?:           string
		evaluator_id?:            string
		evaluator_name!:          string
		kms_key_arn?:             string
		level!:                   string
		locked_for_modification?: bool
		status?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#evaluator_config: close({
		code_based?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/code_based", [..._#defs."/$defs/evaluator_config/$defs/code_based"]])
		llm_as_a_judge?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge"]])
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

	_#defs: "/$defs/evaluator_config/$defs/code_based": close({
		lambda_config?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/code_based/$defs/lambda_config", [..._#defs."/$defs/evaluator_config/$defs/code_based/$defs/lambda_config"]])
	})

	_#defs: "/$defs/evaluator_config/$defs/code_based/$defs/lambda_config": close({
		lambda_arn!:                string
		lambda_timeout_in_seconds?: number
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge": close({
		model_config?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config"]])
		rating_scale?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale"]])
		instructions!: string
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config": close({
		bedrock_evaluator_model_config?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config/$defs/bedrock_evaluator_model_config", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config/$defs/bedrock_evaluator_model_config"]])
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config/$defs/bedrock_evaluator_model_config": close({
		inference_config?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config/$defs/bedrock_evaluator_model_config/$defs/inference_config", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config/$defs/bedrock_evaluator_model_config/$defs/inference_config"]])
		additional_model_request_fields?: string
		model_id!:                        string
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/model_config/$defs/bedrock_evaluator_model_config/$defs/inference_config": close({
		max_tokens?: number
		stop_sequences?: [...string]
		temperature?: number
		top_p?:       number
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale": close({
		categorical?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale/$defs/categorical", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale/$defs/categorical"]])
		numerical?: matchN(1, [_#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale/$defs/numerical", [..._#defs."/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale/$defs/numerical"]])
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale/$defs/categorical": close({
		definition!: string
		label!:      string
	})

	_#defs: "/$defs/evaluator_config/$defs/llm_as_a_judge/$defs/rating_scale/$defs/numerical": close({
		definition!: string
		label!:      string
		value!:      number
	})
}
