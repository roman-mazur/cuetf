package res

import "list"

#google_ces_guardrail: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_guardrail")
	close({
		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		app!: string
		action?: matchN(1, [#action, list.MaxItems(1) & [...#action]])

		// Timestamp when the guardrail was created.
		create_time?: string

		// Description of the guardrail.
		description?: string

		// Display name of the guardrail.
		display_name!: string

		// Whether the guardrail is enabled.
		enabled?: bool

		// Etag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string

		// The ID to use for the guardrail, which will become the final
		// component of
		// the guardrail's resource name. If not provided, a unique ID
		// will be
		// automatically assigned for the guardrail.
		guardrail_id!: string
		id?:           string
		code_callback?: matchN(1, [#code_callback, list.MaxItems(1) & [...#code_callback]])
		content_filter?: matchN(1, [#content_filter, list.MaxItems(1) & [...#content_filter]])
		llm_policy?: matchN(1, [#llm_policy, list.MaxItems(1) & [...#llm_policy]])
		llm_prompt_security?: matchN(1, [#llm_prompt_security, list.MaxItems(1) & [...#llm_prompt_security]])

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		model_safety?: matchN(1, [#model_safety, list.MaxItems(1) & [...#model_safety]])
		timeouts?: #timeouts

		// Identifier. The unique identifier of the guardrail.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}'
		name?:    string
		project?: string

		// Timestamp when the guardrail was last updated.
		update_time?: string
	})

	#action: close({
		generative_answer?: matchN(1, [_#defs."/$defs/action/$defs/generative_answer", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/generative_answer"]])
		respond_immediately?: matchN(1, [_#defs."/$defs/action/$defs/respond_immediately", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/respond_immediately"]])
		transfer_agent?: matchN(1, [_#defs."/$defs/action/$defs/transfer_agent", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/transfer_agent"]])
	})

	#code_callback: close({
		after_agent_callback?: matchN(1, [_#defs."/$defs/code_callback/$defs/after_agent_callback", list.MaxItems(1) & [..._#defs."/$defs/code_callback/$defs/after_agent_callback"]])
		after_model_callback?: matchN(1, [_#defs."/$defs/code_callback/$defs/after_model_callback", list.MaxItems(1) & [..._#defs."/$defs/code_callback/$defs/after_model_callback"]])
		before_agent_callback?: matchN(1, [_#defs."/$defs/code_callback/$defs/before_agent_callback", list.MaxItems(1) & [..._#defs."/$defs/code_callback/$defs/before_agent_callback"]])
		before_model_callback?: matchN(1, [_#defs."/$defs/code_callback/$defs/before_model_callback", list.MaxItems(1) & [..._#defs."/$defs/code_callback/$defs/before_model_callback"]])
	})

	#content_filter: close({
		// List of banned phrases. Applies to both user inputs and agent
		// responses.
		banned_contents?: [...string]

		// List of banned phrases. Applies only to agent responses.
		banned_contents_in_agent_response?: [...string]

		// List of banned phrases. Applies only to user inputs.
		banned_contents_in_user_input?: [...string]

		// If true, diacritics are ignored during matching.
		disregard_diacritics?: bool

		// Match type for the content filter.
		// Possible values:
		// SIMPLE_STRING_MATCH
		// WORD_BOUNDARY_STRING_MATCH
		// REGEXP_MATCH
		match_type!: string
	})

	#llm_policy: close({
		// By default, the LLM policy check is bypassed for short
		// utterances.
		// Enabling this setting applies the policy check to all
		// utterances,
		// including those that would normally be skipped.
		allow_short_utterance?: bool

		// If an error occurs during the policy check, fail open and do
		// not trigger
		// the guardrail.
		fail_open?: bool

		// When checking this policy, consider the last 'n' messages in
		// the
		// conversation.
		// When not set a default value of 10 will be used.
		max_conversation_messages?: number

		// Defines when to apply the policy check during the conversation.
		// If set to
		// 'POLICY_SCOPE_UNSPECIFIED', the policy will be applied to the
		// user input.
		// When applying the policy to the agent response, additional
		// latency will
		// be introduced before the agent can respond.
		// Possible values:
		// USER_QUERY
		// AGENT_RESPONSE
		// USER_QUERY_AND_AGENT_RESPONSE Possible values: ["USER_QUERY",
		// "AGENT_RESPONSE", "USER_QUERY_AND_AGENT_RESPONSE"]
		policy_scope!: string
		model_settings?: matchN(1, [_#defs."/$defs/llm_policy/$defs/model_settings", list.MaxItems(1) & [..._#defs."/$defs/llm_policy/$defs/model_settings"]])

		// Policy prompt.
		prompt!: string
	})

	#llm_prompt_security: close({
		custom_policy?: matchN(1, [_#defs."/$defs/llm_prompt_security/$defs/custom_policy", list.MaxItems(1) & [..._#defs."/$defs/llm_prompt_security/$defs/custom_policy"]])
		default_settings?: matchN(1, [_#defs."/$defs/llm_prompt_security/$defs/default_settings", list.MaxItems(1) & [..._#defs."/$defs/llm_prompt_security/$defs/default_settings"]])
	})

	#model_safety: close({
		safety_settings!: matchN(1, [_#defs."/$defs/model_safety/$defs/safety_settings", [_, ...] & [..._#defs."/$defs/model_safety/$defs/safety_settings"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/action/$defs/generative_answer": close({
		// The prompt to use for the generative answer.
		prompt!: string
	})

	_#defs: "/$defs/action/$defs/respond_immediately": close({
		responses!: matchN(1, [_#defs."/$defs/action/$defs/respond_immediately/$defs/responses", [_, ...] & [..._#defs."/$defs/action/$defs/respond_immediately/$defs/responses"]])
	})

	_#defs: "/$defs/action/$defs/respond_immediately/$defs/responses": close({
		// Whether the response is disabled. Disabled responses are not
		// used by the
		// agent.
		disabled?: bool

		// Text for the agent to respond with.
		text!: string
	})

	_#defs: "/$defs/action/$defs/transfer_agent": close({
		// The name of the agent to transfer the conversation to. The
		// agent must be
		// in the same app as the current agent.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/agents/{agent}'
		agent!: string
	})

	_#defs: "/$defs/code_callback/$defs/after_agent_callback": close({
		// Human-readable description of the callback.
		description?: string

		// Whether the callback is disabled. Disabled callbacks are
		// ignored by the
		// agent.
		disabled?: bool

		// The python code to execute for the callback.
		python_code!: string
	})

	_#defs: "/$defs/code_callback/$defs/after_model_callback": close({
		// Human-readable description of the callback.
		description?: string

		// Whether the callback is disabled. Disabled callbacks are
		// ignored by the
		// agent.
		disabled?: bool

		// The python code to execute for the callback.
		python_code!: string
	})

	_#defs: "/$defs/code_callback/$defs/before_agent_callback": close({
		// Human-readable description of the callback.
		description?: string

		// Whether the callback is disabled. Disabled callbacks are
		// ignored by the
		// agent.
		disabled?: bool

		// The python code to execute for the callback.
		python_code!: string
	})

	_#defs: "/$defs/code_callback/$defs/before_model_callback": close({
		// Human-readable description of the callback.
		description?: string

		// Whether the callback is disabled. Disabled callbacks are
		// ignored by the
		// agent.
		disabled?: bool

		// The python code to execute for the callback.
		python_code!: string
	})

	_#defs: "/$defs/llm_policy/$defs/model_settings": close({
		// The LLM model that the agent should use.
		// If not set, the agent will inherit the model from its parent
		// agent.
		model?: string

		// If set, this temperature will be used for the LLM model.
		// Temperature
		// controls the randomness of the model's responses. Lower
		// temperatures
		// produce responses that are more predictable. Higher
		// temperatures produce
		// responses that are more creative.
		temperature?: number
	})

	_#defs: "/$defs/llm_prompt_security/$defs/custom_policy": close({
		// By default, the LLM policy check is bypassed for short
		// utterances.
		// Enabling this setting applies the policy check to all
		// utterances,
		// including those that would normally be skipped.
		allow_short_utterance?: bool

		// If an error occurs during the policy check, fail open and do
		// not trigger
		// the guardrail.
		fail_open?: bool

		// When checking this policy, consider the last 'n' messages in
		// the
		// conversation.
		// When not set a default value of 10 will be used.
		max_conversation_messages?: number

		// Defines when to apply the policy check during the conversation.
		// If set to
		// 'POLICY_SCOPE_UNSPECIFIED', the policy will be applied to the
		// user input.
		// When applying the policy to the agent response, additional
		// latency will
		// be introduced before the agent can respond.
		// Possible values:
		// USER_QUERY
		// AGENT_RESPONSE
		// USER_QUERY_AND_AGENT_RESPONSE
		policy_scope!: string
		model_settings?: matchN(1, [_#defs."/$defs/llm_prompt_security/$defs/custom_policy/$defs/model_settings", list.MaxItems(1) & [..._#defs."/$defs/llm_prompt_security/$defs/custom_policy/$defs/model_settings"]])

		// Policy prompt.
		prompt!: string
	})

	_#defs: "/$defs/llm_prompt_security/$defs/custom_policy/$defs/model_settings": close({
		// The LLM model that the agent should use.
		// If not set, the agent will inherit the model from its parent
		// agent.
		model?: string

		// If set, this temperature will be used for the LLM model.
		// Temperature
		// controls the randomness of the model's responses. Lower
		// temperatures
		// produce responses that are more predictable. Higher
		// temperatures produce
		// responses that are more creative.
		temperature?: number
	})

	_#defs: "/$defs/llm_prompt_security/$defs/default_settings": close({
		// The default prompt template used by the system.
		// This field is for display purposes to show the user what prompt
		// the system uses by default. It is OUTPUT_ONLY.
		default_prompt_template?: string
	})

	_#defs: "/$defs/model_safety/$defs/safety_settings": close({
		// The harm category.
		// Possible values:
		// HARM_CATEGORY_HATE_SPEECH
		// HARM_CATEGORY_DANGEROUS_CONTENT
		// HARM_CATEGORY_HARASSMENT
		// HARM_CATEGORY_SEXUALLY_EXPLICIT Possible values:
		// ["HARM_CATEGORY_HATE_SPEECH",
		// "HARM_CATEGORY_DANGEROUS_CONTENT", "HARM_CATEGORY_HARASSMENT",
		// "HARM_CATEGORY_SEXUALLY_EXPLICIT"]
		category!: string

		// The harm block threshold.
		// Possible values:
		// BLOCK_LOW_AND_ABOVE
		// BLOCK_MEDIUM_AND_ABOVE
		// BLOCK_ONLY_HIGH
		// BLOCK_NONE
		// OFF Possible values: ["BLOCK_LOW_AND_ABOVE",
		// "BLOCK_MEDIUM_AND_ABOVE", "BLOCK_ONLY_HIGH", "BLOCK_NONE",
		// "OFF"]
		threshold!: string
	})
}
