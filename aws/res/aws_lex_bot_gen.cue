package res

import "list"

#aws_lex_bot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lex_bot")
	arn?:                             string
	checksum?:                        string
	child_directed:                   bool
	create_version?:                  bool
	created_date?:                    string
	description?:                     string
	detect_sentiment?:                bool
	enable_model_improvements?:       bool
	failure_reason?:                  string
	id?:                              string
	idle_session_ttl_in_seconds?:     number
	last_updated_date?:               string
	locale?:                          string
	name:                             string
	nlu_intent_confidence_threshold?: number
	process_behavior?:                string
	status?:                          string
	version?:                         string
	voice_id?:                        string
	abort_statement?:                 #abort_statement | list.MaxItems(1) & [_, ...] & [...#abort_statement]
	clarification_prompt?:            #clarification_prompt | list.MaxItems(1) & [...#clarification_prompt]
	intent?:                          #intent | list.MaxItems(250) & [_, ...] & [...#intent]
	timeouts?:                        #timeouts

	#abort_statement: {
		response_card?: string
		message?:       #abort_statement.#message | list.MaxItems(15) & [_, ...] & [...#abort_statement.#message]

		#message: {
			content:       string
			content_type:  string
			group_number?: number
		}
	}

	#clarification_prompt: {
		max_attempts:   number
		response_card?: string
		message?:       #clarification_prompt.#message | list.MaxItems(15) & [_, ...] & [...#clarification_prompt.#message]

		#message: {
			content:       string
			content_type:  string
			group_number?: number
		}
	}

	#intent: {
		intent_name:    string
		intent_version: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
