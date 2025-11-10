package res

import "list"

#aws_lex_bot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lex_bot")
	close({
		arn?:            string
		checksum?:       string
		child_directed!: bool
		create_version?: bool
		created_date?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		description?:               string
		detect_sentiment?:          bool
		enable_model_improvements?: bool
		abort_statement!: matchN(1, [#abort_statement, list.MaxItems(1) & [_, ...] & [...#abort_statement]])
		clarification_prompt?: matchN(1, [#clarification_prompt, list.MaxItems(1) & [...#clarification_prompt]])
		failure_reason?:              string
		id?:                          string
		idle_session_ttl_in_seconds?: number
		last_updated_date?:           string
		intent!: matchN(1, [#intent, list.MaxItems(250) & [_, ...] & [...#intent]])
		locale?:                          string
		name!:                            string
		nlu_intent_confidence_threshold?: number
		process_behavior?:                string
		status?:                          string
		timeouts?:                        #timeouts
		version?:                         string
		voice_id?:                        string
	})

	#abort_statement: close({
		message!: matchN(1, [_#defs."/$defs/abort_statement/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/abort_statement/$defs/message"]])
		response_card?: string
	})

	#clarification_prompt: close({
		message!: matchN(1, [_#defs."/$defs/clarification_prompt/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/clarification_prompt/$defs/message"]])
		max_attempts!:  number
		response_card?: string
	})

	#intent: close({
		intent_name!:    string
		intent_version!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/abort_statement/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})

	_#defs: "/$defs/clarification_prompt/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})
}
