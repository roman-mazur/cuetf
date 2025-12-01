package res

#aws_lexv2models_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lexv2models_intent")
	close({
		bot_id!:      string
		bot_version!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		creation_date_time?: string
		description?:        string
		closing_setting?: matchN(1, [#closing_setting, [...#closing_setting]])
		id?:                     string
		intent_id?:              string
		last_updated_date_time?: string
		locale_id!:              string
		name!:                   string
		confirmation_setting?: matchN(1, [#confirmation_setting, [...#confirmation_setting]])
		parent_intent_signature?: string
		dialog_code_hook?: matchN(1, [#dialog_code_hook, [...#dialog_code_hook]])
		fulfillment_code_hook?: matchN(1, [#fulfillment_code_hook, [...#fulfillment_code_hook]])
		initial_response_setting?: matchN(1, [#initial_response_setting, [...#initial_response_setting]])
		input_context?: matchN(1, [#input_context, [...#input_context]])
		kendra_configuration?: matchN(1, [#kendra_configuration, [...#kendra_configuration]])
		output_context?: matchN(1, [#output_context, [...#output_context]])
		sample_utterance?: matchN(1, [#sample_utterance, [...#sample_utterance]])
		slot_priority?: matchN(1, [#slot_priority, [...#slot_priority]])
		timeouts?: #timeouts
	})

	#closing_setting: close({
		closing_response?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response", [..._#defs."/$defs/closing_setting/$defs/closing_response"]])
		conditional?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional", [..._#defs."/$defs/closing_setting/$defs/conditional"]])
		next_step?: matchN(1, [_#defs."/$defs/closing_setting/$defs/next_step", [..._#defs."/$defs/closing_setting/$defs/next_step"]])
		active?: bool
	})

	#confirmation_setting: close({
		code_hook?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook", [..._#defs."/$defs/confirmation_setting/$defs/code_hook"]])
		confirmation_conditional?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional"]])
		active?: bool
		confirmation_next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_next_step", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_next_step"]])
		confirmation_response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response"]])
		declination_conditional?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional"]])
		declination_next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_next_step", [..._#defs."/$defs/confirmation_setting/$defs/declination_next_step"]])
		declination_response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response", [..._#defs."/$defs/confirmation_setting/$defs/declination_response"]])
		elicitation_code_hook?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/elicitation_code_hook", [..._#defs."/$defs/confirmation_setting/$defs/elicitation_code_hook"]])
		failure_conditional?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional"]])
		failure_next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_next_step", [..._#defs."/$defs/confirmation_setting/$defs/failure_next_step"]])
		failure_response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response", [..._#defs."/$defs/confirmation_setting/$defs/failure_response"]])
		prompt_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification"]])
	})

	#dialog_code_hook: close({
		enabled!: bool
	})

	#fulfillment_code_hook: close({
		fulfillment_updates_specification?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification"]])
		post_fulfillment_status_specification?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification"]])
		active?:  bool
		enabled!: bool
	})

	#initial_response_setting: close({
		code_hook?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook", [..._#defs."/$defs/initial_response_setting/$defs/code_hook"]])
		conditional?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional", [..._#defs."/$defs/initial_response_setting/$defs/conditional"]])
		initial_response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response", [..._#defs."/$defs/initial_response_setting/$defs/initial_response"]])
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/next_step"]])
	})

	#input_context: close({
		name!: string
	})

	#kendra_configuration: close({
		kendra_index!:                string
		query_filter_string?:         string
		query_filter_string_enabled?: bool
	})

	#output_context: close({
		name!:                    string
		time_to_live_in_seconds!: number
		turns_to_live!:           number
	})

	#sample_utterance: close({
		utterance!: string
	})

	#slot_priority: close({
		priority!: number
		slot_id!:  string
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

	_#defs: "/$defs/closing_setting/$defs/closing_response": close({
		message_group?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/closing_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/closing_setting/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/closing_setting/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/closing_setting/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/closing_setting/$defs/next_step/$defs/intent", [..._#defs."/$defs/closing_setting/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/closing_setting/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/closing_setting/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/closing_setting/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/closing_setting/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/closing_setting/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/closing_setting/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/closing_setting/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/closing_setting/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook": close({
		post_code_hook_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification"]])
		active!:                      bool
		enable_code_hook_invocation!: bool
		invocation_label?:            string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification": close({
		failure_conditional?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional"]])
		failure_next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step"]])
		failure_response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response"]])
		success_conditional?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional"]])
		success_next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step"]])
		success_response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response"]])
		timeout_conditional?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional"]])
		timeout_next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step"]])
		timeout_response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/confirmation_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/declination_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/elicitation_code_hook": close({
		enable_code_hook_invocation?: bool
		invocation_label?:            string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/dialog_action", [..._#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent", [..._#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification": close({
		message_group?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group"]])
		prompt_attempts_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification"]])
		allow_interrupt?:            bool
		max_retries!:                number
		message_selection_strategy?: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification": close({
		allowed_input_types?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types"]])
		audio_and_dtmf_input_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification"]])
		text_input_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification"]])
		allow_interrupt?: bool
		map_block_key!:   string
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types": close({
		allow_audio_input!: bool
		allow_dtmf_input!:  bool
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification": close({
		audio_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification"]])
		dtmf_specification?: matchN(1, [_#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification", [..._#defs."/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification"]])
		start_timeout_ms!: number
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification": close({
		end_timeout_ms!: number
		max_length_ms!:  number
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification": close({
		deletion_character!: string
		end_character!:      string
		end_timeout_ms!:     number
		max_length!:         number
	})

	_#defs: "/$defs/confirmation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification": close({
		start_timeout_ms!: number
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification": close({
		start_response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response"]])
		update_response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response"]])
		active!:             bool
		timeout_in_seconds?: number
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group"]])
		allow_interrupt?:  bool
		delay_in_seconds?: number
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/start_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group"]])
		allow_interrupt?:      bool
		frequency_in_seconds!: number
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/fulfillment_updates_specification/$defs/update_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification": close({
		failure_conditional?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional"]])
		failure_next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step"]])
		failure_response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response"]])
		success_conditional?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional"]])
		success_next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step"]])
		success_response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response"]])
		timeout_conditional?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional"]])
		timeout_next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step"]])
		timeout_response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/dialog_action", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response": close({
		message_group?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/fulfillment_code_hook/$defs/post_fulfillment_status_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook": close({
		post_code_hook_specification?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification"]])
		active!:                      bool
		enable_code_hook_invocation!: bool
		invocation_label?:            string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification": close({
		failure_conditional?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional"]])
		failure_next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step"]])
		failure_response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response"]])
		success_conditional?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional"]])
		success_next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step"]])
		success_response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response"]])
		timeout_conditional?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional"]])
		timeout_next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step"]])
		timeout_response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/failure_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/success_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/code_hook/$defs/post_code_hook_specification/$defs/timeout_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional": close({
		conditional_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch"]])
		default_branch?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch"]])
		active!: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch": close({
		condition?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/condition", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/condition"]])
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response"]])
		name!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/condition": close({
		expression_string!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/conditional_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch": close({
		next_step?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step"]])
		response?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/conditional/$defs/default_branch/$defs/response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response": close({
		message_group?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/initial_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/next_step": close({
		dialog_action?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/next_step/$defs/dialog_action", [..._#defs."/$defs/initial_response_setting/$defs/next_step/$defs/dialog_action"]])
		intent?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/next_step/$defs/intent", [..._#defs."/$defs/initial_response_setting/$defs/next_step/$defs/intent"]])
		session_attributes?: [string]: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/next_step/$defs/dialog_action": close({
		slot_to_elicit?:        string
		suppress_next_message?: bool
		type!:                  string
	})

	_#defs: "/$defs/initial_response_setting/$defs/next_step/$defs/intent": close({
		slot?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/next_step/$defs/intent/$defs/slot", [..._#defs."/$defs/initial_response_setting/$defs/next_step/$defs/intent/$defs/slot"]])
		name?: string
	})

	_#defs: "/$defs/initial_response_setting/$defs/next_step/$defs/intent/$defs/slot": close({
		value?: matchN(1, [_#defs."/$defs/initial_response_setting/$defs/next_step/$defs/intent/$defs/slot/$defs/value", [..._#defs."/$defs/initial_response_setting/$defs/next_step/$defs/intent/$defs/slot/$defs/value"]])
		map_block_key!: string
		shape?:         string
	})

	_#defs: "/$defs/initial_response_setting/$defs/next_step/$defs/intent/$defs/slot/$defs/value": close({
		interpreted_value?: string
	})
}
