package res

#aws_lexv2models_slot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lexv2models_slot")
	close({
		bot_id!:      string
		bot_version!: string
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		intent_id!: string
		locale_id!: string
		name!:      string
		multiple_values_setting?: matchN(1, [#multiple_values_setting, [...#multiple_values_setting]])
		obfuscation_setting?: matchN(1, [#obfuscation_setting, [...#obfuscation_setting]])
		slot_id?: string
		sub_slot_setting?: matchN(1, [#sub_slot_setting, [...#sub_slot_setting]])
		timeouts?: #timeouts
		value_elicitation_setting?: matchN(1, [#value_elicitation_setting, [...#value_elicitation_setting]])
		slot_type_id?: string
	})

	#multiple_values_setting: close({
		allow_multiple_values?: bool
	})

	#obfuscation_setting: close({
		obfuscation_setting_type!: string
	})

	#sub_slot_setting: close({
		slot_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification"]])
		expression?: string
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

	#value_elicitation_setting: close({
		default_value_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/default_value_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/default_value_specification"]])
		prompt_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification"]])
		sample_utterance?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/sample_utterance", [..._#defs."/$defs/value_elicitation_setting/$defs/sample_utterance"]])
		slot_resolution_setting?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/slot_resolution_setting", [..._#defs."/$defs/value_elicitation_setting/$defs/slot_resolution_setting"]])
		wait_and_continue_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification"]])
		slot_constraint!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification": close({
		value_elicitation_setting?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting"]])
		map_block_key!: string
		slot_type_id!:  string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting": close({
		default_value_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/default_value_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/default_value_specification"]])
		prompt_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification"]])
		sample_utterance?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/sample_utterance", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/sample_utterance"]])
		wait_and_continue_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/default_value_specification": close({
		default_value_list?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/default_value_specification/$defs/default_value_list", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/default_value_specification/$defs/default_value_list"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/default_value_specification/$defs/default_value_list": close({
		default_value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification": close({
		message_group?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group"]])
		prompt_attempts_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification"]])
		allow_interrupt?:            bool
		max_retries!:                number
		message_selection_strategy?: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification": close({
		allowed_input_types?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types"]])
		audio_and_dtmf_input_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification"]])
		text_input_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification"]])
		allow_interrupt?: bool
		map_block_key!:   string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types": close({
		allow_audio_input!: bool
		allow_dtmf_input!:  bool
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification": close({
		audio_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification"]])
		dtmf_specification?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification"]])
		start_timeout_ms!: number
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification": close({
		end_timeout_ms!: number
		max_length_ms!:  number
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification": close({
		deletion_character!: string
		end_character!:      string
		end_timeout_ms!:     number
		max_length!:         number
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification": close({
		start_timeout_ms!: number
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/sample_utterance": close({
		utterance!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification": close({
		continue_response?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response"]])
		still_waiting_response?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response"]])
		waiting_response?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response"]])
		active?: bool
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response": close({
		message_group?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response": close({
		message_group?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group"]])
		allow_interrupt?:      bool
		frequency_in_seconds!: number
		timeout_in_seconds!:   number
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response": close({
		message_group?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/sub_slot_setting/$defs/slot_specification/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/default_value_specification": close({
		default_value_list?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/default_value_specification/$defs/default_value_list", [..._#defs."/$defs/value_elicitation_setting/$defs/default_value_specification/$defs/default_value_list"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/default_value_specification/$defs/default_value_list": close({
		default_value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification": close({
		message_group?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group"]])
		prompt_attempts_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification"]])
		allow_interrupt?:            bool
		max_retries!:                number
		message_selection_strategy?: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification": close({
		allowed_input_types?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types"]])
		audio_and_dtmf_input_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification"]])
		text_input_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification"]])
		allow_interrupt?: bool
		map_block_key!:   string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/allowed_input_types": close({
		allow_audio_input!: bool
		allow_dtmf_input!:  bool
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification": close({
		audio_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification"]])
		dtmf_specification?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification", [..._#defs."/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification"]])
		start_timeout_ms!: number
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/audio_specification": close({
		end_timeout_ms!: number
		max_length_ms!:  number
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/audio_and_dtmf_input_specification/$defs/dtmf_specification": close({
		deletion_character!: string
		end_character!:      string
		end_timeout_ms!:     number
		max_length!:         number
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/prompt_specification/$defs/prompt_attempts_specification/$defs/text_input_specification": close({
		start_timeout_ms!: number
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/sample_utterance": close({
		utterance!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/slot_resolution_setting": close({
		slot_resolution_strategy!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification": close({
		continue_response?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response"]])
		still_waiting_response?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response"]])
		waiting_response?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response"]])
		active?: bool
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response": close({
		message_group?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/continue_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response": close({
		message_group?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group"]])
		allow_interrupt?:      bool
		frequency_in_seconds!: number
		timeout_in_seconds!:   number
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/still_waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response": close({
		message_group?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group"]])
		allow_interrupt?: bool
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group": close({
		message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message"]])
		variation?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/message/$defs/ssml_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation": close({
		custom_payload?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload"]])
		image_response_card?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card"]])
		plain_text_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message"]])
		ssml_message?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message"]])
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/custom_payload": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card": close({
		button?: matchN(1, [_#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button", [..._#defs."/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button"]])
		image_url?: string
		subtitle?:  string
		title!:     string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/image_response_card/$defs/button": close({
		text!:  string
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/plain_text_message": close({
		value!: string
	})

	_#defs: "/$defs/value_elicitation_setting/$defs/wait_and_continue_specification/$defs/waiting_response/$defs/message_group/$defs/variation/$defs/ssml_message": close({
		value!: string
	})
}
