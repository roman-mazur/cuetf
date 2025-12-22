package res

import "list"

#aws_lex_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lex_intent")
	close({
		arn?:            string
		checksum?:       string
		create_version?: bool
		created_date?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		description?:       string
		id?:                string
		last_updated_date?: string
		name!:              string
		conclusion_statement?: matchN(1, [#conclusion_statement, list.MaxItems(1) & [...#conclusion_statement]])
		confirmation_prompt?: matchN(1, [#confirmation_prompt, list.MaxItems(1) & [...#confirmation_prompt]])
		dialog_code_hook?: matchN(1, [#dialog_code_hook, list.MaxItems(1) & [...#dialog_code_hook]])
		parent_intent_signature?: string
		sample_utterances?: [...string]
		follow_up_prompt?: matchN(1, [#follow_up_prompt, list.MaxItems(1) & [...#follow_up_prompt]])
		fulfillment_activity!: matchN(1, [#fulfillment_activity, list.MaxItems(1) & [_, ...] & [...#fulfillment_activity]])
		rejection_statement?: matchN(1, [#rejection_statement, list.MaxItems(1) & [...#rejection_statement]])
		version?: string
		slot?: matchN(1, [#slot, list.MaxItems(100) & [...#slot]])
		timeouts?: #timeouts
	})

	#conclusion_statement: close({
		message!: matchN(1, [_#defs."/$defs/conclusion_statement/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/conclusion_statement/$defs/message"]])
		response_card?: string
	})

	#confirmation_prompt: close({
		message!: matchN(1, [_#defs."/$defs/confirmation_prompt/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/confirmation_prompt/$defs/message"]])
		max_attempts!:  number
		response_card?: string
	})

	#dialog_code_hook: close({
		message_version!: string
		uri!:             string
	})

	#follow_up_prompt: close({
		prompt!: matchN(1, [_#defs."/$defs/follow_up_prompt/$defs/prompt", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/follow_up_prompt/$defs/prompt"]])
		rejection_statement!: matchN(1, [_#defs."/$defs/follow_up_prompt/$defs/rejection_statement", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/follow_up_prompt/$defs/rejection_statement"]])
	})

	#fulfillment_activity: close({
		code_hook?: matchN(1, [_#defs."/$defs/fulfillment_activity/$defs/code_hook", list.MaxItems(1) & [..._#defs."/$defs/fulfillment_activity/$defs/code_hook"]])
		type!: string
	})

	#rejection_statement: close({
		message!: matchN(1, [_#defs."/$defs/rejection_statement/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/rejection_statement/$defs/message"]])
		response_card?: string
	})

	#slot: close({
		value_elicitation_prompt?: matchN(1, [_#defs."/$defs/slot/$defs/value_elicitation_prompt", list.MaxItems(1) & [..._#defs."/$defs/slot/$defs/value_elicitation_prompt"]])
		description?:   string
		name!:          string
		priority?:      number
		response_card?: string
		sample_utterances?: [...string]
		slot_constraint!:   string
		slot_type!:         string
		slot_type_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/conclusion_statement/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})

	_#defs: "/$defs/confirmation_prompt/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})

	_#defs: "/$defs/follow_up_prompt/$defs/prompt": close({
		message!: matchN(1, [_#defs."/$defs/follow_up_prompt/$defs/prompt/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/follow_up_prompt/$defs/prompt/$defs/message"]])
		max_attempts!:  number
		response_card?: string
	})

	_#defs: "/$defs/follow_up_prompt/$defs/prompt/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})

	_#defs: "/$defs/follow_up_prompt/$defs/rejection_statement": close({
		message!: matchN(1, [_#defs."/$defs/follow_up_prompt/$defs/rejection_statement/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/follow_up_prompt/$defs/rejection_statement/$defs/message"]])
		response_card?: string
	})

	_#defs: "/$defs/follow_up_prompt/$defs/rejection_statement/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})

	_#defs: "/$defs/fulfillment_activity/$defs/code_hook": close({
		message_version!: string
		uri!:             string
	})

	_#defs: "/$defs/rejection_statement/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})

	_#defs: "/$defs/slot/$defs/value_elicitation_prompt": close({
		message!: matchN(1, [_#defs."/$defs/slot/$defs/value_elicitation_prompt/$defs/message", list.MaxItems(15) & [_, ...] & [..._#defs."/$defs/slot/$defs/value_elicitation_prompt/$defs/message"]])
		max_attempts!:  number
		response_card?: string
	})

	_#defs: "/$defs/slot/$defs/value_elicitation_prompt/$defs/message": close({
		content!:      string
		content_type!: string
		group_number?: number
	})
}
