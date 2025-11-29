package res

import "list"

#google_dialogflow_cx_page: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_cx_page")
	close({
		// The human-readable name of the page, unique within the agent.
		display_name!: string
		id?:           string

		// The language of the following fields in page:
		//
		// Page.entry_fulfillment.messages
		// Page.entry_fulfillment.conditional_cases
		// Page.event_handlers.trigger_fulfillment.messages
		// Page.event_handlers.trigger_fulfillment.conditional_cases
		// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
		// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
		// Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
		// Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
		// Page.transition_routes.trigger_fulfillment.messages
		// Page.transition_routes.trigger_fulfillment.conditional_cases
		// If not specified, the agent's default language is used. Many
		// languages are supported. Note: languages must be enabled in
		// the agent before they can be used.
		language_code?: string
		advanced_settings?: matchN(1, [#advanced_settings, list.MaxItems(1) & [...#advanced_settings]])

		// The unique identifier of the page.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
		name?: string

		// The flow to create a page for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>.
		parent?: string
		entry_fulfillment?: matchN(1, [#entry_fulfillment, list.MaxItems(1) & [...#entry_fulfillment]])
		event_handlers?: matchN(1, [#event_handlers, [...#event_handlers]])
		form?: matchN(1, [#form, list.MaxItems(1) & [...#form]])
		knowledge_connector_settings?: matchN(1, [#knowledge_connector_settings, list.MaxItems(1) & [...#knowledge_connector_settings]])
		timeouts?: #timeouts
		transition_routes?: matchN(1, [#transition_routes, [...#transition_routes]])

		// Ordered list of TransitionRouteGroups associated with the page.
		// Transition route groups must be unique within a page.
		// If multiple transition routes within a page scope refer to the
		// same intent, then the precedence order is: page's transition
		// route -> page's transition route group -> flow's transition
		// routes.
		// If multiple transition route groups within a page contain the
		// same intent, then the first group in the ordered list takes
		// precedence.
		// Format:projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow
		// ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
		transition_route_groups?: [...string]
	})

	#advanced_settings: close({
		dtmf_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/dtmf_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/dtmf_settings"]])
	})

	#entry_fulfillment: close({
		// Whether Dialogflow should return currently queued fulfillment
		// response messages in streaming APIs. If a webhook is
		// specified, it happens before Dialogflow invokes webhook.
		// Warning: 1) This flag only affects streaming API. Responses
		// are still queued and returned once in non-streaming API. 2)
		// The flag can be enabled in any fulfillment but only the first
		// 3 partial responses will be returned. You may only want to
		// apply it to fulfillments that have slow webhooks.
		return_partial_responses?: bool
		conditional_cases?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/entry_fulfillment/$defs/conditional_cases"]])

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
		messages?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages", [..._#defs."/$defs/entry_fulfillment/$defs/messages"]])
		set_parameter_actions?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/set_parameter_actions", [..._#defs."/$defs/entry_fulfillment/$defs/set_parameter_actions"]])
	})

	#event_handlers: close({
		// The name of the event to handle.
		event?: string

		// The unique identifier of this event handler.
		name?: string

		// The target flow to transition to.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>.
		target_flow?: string
		trigger_fulfillment?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment"]])

		// The target page to transition to.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
		target_page?: string
	})

	#form: close({
		parameters?: matchN(1, [_#defs."/$defs/form/$defs/parameters", [..._#defs."/$defs/form/$defs/parameters"]])
	})

	#knowledge_connector_settings: close({
		// Whether Knowledge Connector is enabled or not.
		enabled?: bool

		// The target flow to transition to. Format:
		// projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>.
		// This field is part of a union field 'target': Only one of
		// 'targetPage' or 'targetFlow' may be set.
		target_flow?: string
		data_store_connections?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/data_store_connections", [..._#defs."/$defs/knowledge_connector_settings/$defs/data_store_connections"]])

		// The target page to transition to. Format:
		// projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>/pages/<PageID>.
		// The page must be in the same host flow (the flow that owns this
		// 'KnowledgeConnectorSettings').
		// This field is part of a union field 'target': Only one of
		// 'targetPage' or 'targetFlow' may be set.
		target_page?: string
		trigger_fulfillment?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#transition_routes: close({
		// The condition to evaluate against form parameters or session
		// parameters.
		// At least one of intent or condition must be specified. When
		// both intent and condition are specified, the transition can
		// only happen when both are fulfilled.
		condition?: string

		// The unique identifier of an Intent.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/intents/<Intent ID>. Indicates that the
		// transition can only happen when the given intent is matched.
		// At least one of intent or condition must be specified. When
		// both intent and condition are specified, the transition can
		// only happen when both are fulfilled.
		intent?: string

		// The unique identifier of this transition route.
		name?: string

		// The target flow to transition to.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>.
		target_flow?: string
		trigger_fulfillment?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment"]])

		// The target page to transition to.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
		target_page?: string
	})

	_#defs: "/$defs/advanced_settings/$defs/dtmf_settings": close({
		// If true, incoming audio is processed for DTMF (dual tone multi
		// frequency) events. For example, if the caller presses a button
		// on their telephone keypad and DTMF processing is enabled,
		// Dialogflow will detect the event (e.g. a "3" was pressed) in
		// the incoming audio and pass the event to the bot to drive
		// business logic (e.g. when 3 is pressed, return the account
		// balance).
		enabled?: bool

		// The digit that terminates a DTMF digit sequence.
		finish_digit?: string

		// Max length of DTMF digits.
		max_digits?: number
	})

	_#defs: "/$defs/entry_fulfillment/$defs/conditional_cases": close({
		// A JSON encoded list of cascading if-else conditions. Cases are
		// mutually exclusive. The first one with a matching condition is
		// selected, all the rest ignored.
		// See
		// [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case)
		// for the schema.
		cases?: string
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages": close({
		conversation_success?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages/$defs/conversation_success", list.MaxItems(1) & [..._#defs."/$defs/entry_fulfillment/$defs/messages/$defs/conversation_success"]])
		live_agent_handoff?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages/$defs/live_agent_handoff", list.MaxItems(1) & [..._#defs."/$defs/entry_fulfillment/$defs/messages/$defs/live_agent_handoff"]])

		// The channel which the response is associated with. Clients can
		// specify the channel via QueryParameters.channel, and only
		// associated channel response will be returned.
		channel?: string

		// A custom, platform-specific payload.
		payload?: string
		output_audio_text?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages/$defs/output_audio_text", list.MaxItems(1) & [..._#defs."/$defs/entry_fulfillment/$defs/messages/$defs/output_audio_text"]])
		play_audio?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages/$defs/play_audio", list.MaxItems(1) & [..._#defs."/$defs/entry_fulfillment/$defs/messages/$defs/play_audio"]])
		telephony_transfer_call?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages/$defs/telephony_transfer_call", list.MaxItems(1) & [..._#defs."/$defs/entry_fulfillment/$defs/messages/$defs/telephony_transfer_call"]])
		text?: matchN(1, [_#defs."/$defs/entry_fulfillment/$defs/messages/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/entry_fulfillment/$defs/messages/$defs/text"]])
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages/$defs/conversation_success": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages/$defs/live_agent_handoff": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages/$defs/output_audio_text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// The SSML text to be synthesized. For more information, see
		// SSML.
		ssml?: string

		// The raw text to be synthesized.
		text?: string
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages/$defs/play_audio": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// URI of the audio clip. Dialogflow does not impose any
		// validation on this value. It is specific to the client that
		// reads it.
		audio_uri!: string
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages/$defs/telephony_transfer_call": close({
		// Transfer the call to a phone number in E.164 format.
		phone_number!: string
	})

	_#defs: "/$defs/entry_fulfillment/$defs/messages/$defs/text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// A collection of text responses.
		text?: [...string]
	})

	_#defs: "/$defs/entry_fulfillment/$defs/set_parameter_actions": close({
		// Display name of the parameter.
		parameter?: string

		// The new JSON-encoded value of the parameter. A null value
		// clears the parameter.
		value?: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment": close({
		// Whether Dialogflow should return currently queued fulfillment
		// response messages in streaming APIs. If a webhook is
		// specified, it happens before Dialogflow invokes webhook.
		// Warning: 1) This flag only affects streaming API. Responses
		// are still queued and returned once in non-streaming API. 2)
		// The flag can be enabled in any fulfillment but only the first
		// 3 partial responses will be returned. You may only want to
		// apply it to fulfillments that have slow webhooks.
		return_partial_responses?: bool
		conditional_cases?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases"]])

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
		messages?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages", [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages"]])
		set_parameter_actions?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/set_parameter_actions", [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/set_parameter_actions"]])
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases": close({
		// A JSON encoded list of cascading if-else conditions. Cases are
		// mutually exclusive. The first one with a matching condition is
		// selected, all the rest ignored.
		// See
		// [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case)
		// for the schema.
		cases?: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages": close({
		conversation_success?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success"]])
		live_agent_handoff?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff"]])

		// The channel which the response is associated with. Clients can
		// specify the channel via QueryParameters.channel, and only
		// associated channel response will be returned.
		channel?: string

		// A custom, platform-specific payload.
		payload?: string
		output_audio_text?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text"]])
		play_audio?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio"]])
		telephony_transfer_call?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call"]])
		text?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/text"]])
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// The SSML text to be synthesized. For more information, see
		// SSML.
		ssml?: string

		// The raw text to be synthesized.
		text?: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// URI of the audio clip. Dialogflow does not impose any
		// validation on this value. It is specific to the client that
		// reads it.
		audio_uri!: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call": close({
		// Transfer the call to a phone number in E.164 format.
		phone_number!: string
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// A collection of text responses.
		text?: [...string]
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment/$defs/set_parameter_actions": close({
		// Display name of the parameter.
		parameter?: string

		// The new JSON-encoded value of the parameter. A null value
		// clears the parameter.
		value?: string
	})

	_#defs: "/$defs/form/$defs/parameters": close({
		// The default value of an optional parameter. If the parameter is
		// required, the default value will be ignored.
		default_value?: string

		// The human-readable name of the parameter, unique within the
		// form.
		display_name?: string

		// The entity type of the parameter.
		// Format: projects/-/locations/-/agents/-/entityTypes/<System
		// Entity Type ID> for system entity types (for example,
		// projects/-/locations/-/agents/-/entityTypes/sys.date), or
		// projects/<Project ID>/locations/<Location ID>/agents/<Agent
		// ID>/entityTypes/<Entity Type ID> for developer entity types.
		entity_type?: string
		advanced_settings?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/advanced_settings", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/advanced_settings"]])

		// Indicates whether the parameter represents a list of values.
		is_list?: bool
		fill_behavior?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior"]])

		// Indicates whether the parameter content should be redacted in
		// log.
		// If redaction is enabled, the parameter content will be replaced
		// by parameter name during logging. Note: the parameter content
		// is subject to redaction if either parameter level redaction or
		// entity type level redaction is enabled.
		redact?: bool

		// Indicates whether the parameter is required. Optional
		// parameters will not trigger prompts; however, they are filled
		// if the user specifies them.
		// Required parameters must be filled before form filling
		// concludes.
		required?: bool
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/advanced_settings": close({
		dtmf_settings?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/advanced_settings/$defs/dtmf_settings", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/advanced_settings/$defs/dtmf_settings"]])
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/advanced_settings/$defs/dtmf_settings": close({
		// If true, incoming audio is processed for DTMF (dual tone multi
		// frequency) events. For example, if the caller presses a button
		// on their telephone keypad and DTMF processing is enabled,
		// Dialogflow will detect the event (e.g. a "3" was pressed) in
		// the incoming audio and pass the event to the bot to drive
		// business logic (e.g. when 3 is pressed, return the account
		// balance).
		enabled?: bool

		// The digit that terminates a DTMF digit sequence.
		finish_digit?: string

		// Max length of DTMF digits.
		max_digits?: number
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior": close({
		initial_prompt_fulfillment?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment"]])
		reprompt_event_handlers?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers"]])
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment": close({
		// Whether Dialogflow should return currently queued fulfillment
		// response messages in streaming APIs. If a webhook is
		// specified, it happens before Dialogflow invokes webhook.
		// Warning: 1) This flag only affects streaming API. Responses
		// are still queued and returned once in non-streaming API. 2)
		// The flag can be enabled in any fulfillment but only the first
		// 3 partial responses will be returned. You may only want to
		// apply it to fulfillments that have slow webhooks.
		return_partial_responses?: bool
		conditional_cases?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/conditional_cases"]])

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
		messages?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages"]])
		set_parameter_actions?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/set_parameter_actions", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/set_parameter_actions"]])
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/conditional_cases": close({
		// A JSON encoded list of cascading if-else conditions. Cases are
		// mutually exclusive. The first one with a matching condition is
		// selected, all the rest ignored.
		// See
		// [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case)
		// for the schema.
		cases?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages": close({
		conversation_success?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/conversation_success", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/conversation_success"]])
		live_agent_handoff?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/live_agent_handoff", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/live_agent_handoff"]])

		// The channel which the response is associated with. Clients can
		// specify the channel via QueryParameters.channel, and only
		// associated channel response will be returned.
		channel?: string

		// A custom, platform-specific payload.
		payload?: string
		output_audio_text?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/output_audio_text", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/output_audio_text"]])
		play_audio?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/play_audio", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/play_audio"]])
		telephony_transfer_call?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/telephony_transfer_call", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/telephony_transfer_call"]])
		text?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/text"]])
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/conversation_success": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/live_agent_handoff": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/output_audio_text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// The SSML text to be synthesized. For more information, see
		// SSML.
		ssml?: string

		// The raw text to be synthesized.
		text?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/play_audio": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// URI of the audio clip. Dialogflow does not impose any
		// validation on this value. It is specific to the client that
		// reads it.
		audio_uri!: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/telephony_transfer_call": close({
		// Transfer the call to a phone number in E.164 format.
		phone_number!: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/messages/$defs/text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// A collection of text responses.
		text?: [...string]
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/initial_prompt_fulfillment/$defs/set_parameter_actions": close({
		// Display name of the parameter.
		parameter?: string

		// The new JSON-encoded value of the parameter. A null value
		// clears the parameter.
		value?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers": close({
		// The name of the event to handle.
		event?: string

		// The unique identifier of this event handler.
		name?: string

		// The target flow to transition to.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>.
		target_flow?: string
		trigger_fulfillment?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment"]])

		// The target page to transition to.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
		target_page?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment": close({
		// Whether Dialogflow should return currently queued fulfillment
		// response messages in streaming APIs. If a webhook is
		// specified, it happens before Dialogflow invokes webhook.
		// Warning: 1) This flag only affects streaming API. Responses
		// are still queued and returned once in non-streaming API. 2)
		// The flag can be enabled in any fulfillment but only the first
		// 3 partial responses will be returned. You may only want to
		// apply it to fulfillments that have slow webhooks.
		return_partial_responses?: bool
		conditional_cases?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases"]])

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
		messages?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages"]])
		set_parameter_actions?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/set_parameter_actions", [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/set_parameter_actions"]])
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases": close({
		// A JSON encoded list of cascading if-else conditions. Cases are
		// mutually exclusive. The first one with a matching condition is
		// selected, all the rest ignored.
		// See
		// [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case)
		// for the schema.
		cases?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages": close({
		conversation_success?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success"]])
		live_agent_handoff?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff"]])

		// The channel which the response is associated with. Clients can
		// specify the channel via QueryParameters.channel, and only
		// associated channel response will be returned.
		channel?: string

		// A custom, platform-specific payload.
		payload?: string
		output_audio_text?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text"]])
		play_audio?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio"]])
		telephony_transfer_call?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call"]])
		text?: matchN(1, [_#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/text"]])
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// The SSML text to be synthesized. For more information, see
		// SSML.
		ssml?: string

		// The raw text to be synthesized.
		text?: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// URI of the audio clip. Dialogflow does not impose any
		// validation on this value. It is specific to the client that
		// reads it.
		audio_uri!: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call": close({
		// Transfer the call to a phone number in E.164 format.
		phone_number!: string
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/messages/$defs/text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// A collection of text responses.
		text?: [...string]
	})

	_#defs: "/$defs/form/$defs/parameters/$defs/fill_behavior/$defs/reprompt_event_handlers/$defs/trigger_fulfillment/$defs/set_parameter_actions": close({
		// Display name of the parameter.
		parameter?: string

		// The new JSON-encoded value of the parameter. A null value
		// clears the parameter.
		value?: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/data_store_connections": close({
		// The full name of the referenced data store. Formats:
		// projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}
		// projects/{project}/locations/{location}/dataStores/{dataStore}
		data_store?: string

		// The type of the connected data store.
		// * PUBLIC_WEB: A data store that contains public web content.
		// * UNSTRUCTURED: A data store that contains unstructured private
		// data.
		// * STRUCTURED: A data store that contains structured data (for
		// example FAQ). Possible values: ["PUBLIC_WEB", "UNSTRUCTURED",
		// "STRUCTURED"]
		data_store_type?: string

		// The document processing mode for the data store connection.
		// Should only be set for PUBLIC_WEB and UNSTRUCTURED data
		// stores. If not set it is considered as DOCUMENTS, as this is
		// the legacy mode.
		// * DOCUMENTS: Documents are processed as documents.
		// * CHUNKS: Documents are converted to chunks. Possible values:
		// ["DOCUMENTS", "CHUNKS"]
		document_processing_mode?: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment": close({
		// If the flag is true, the agent will utilize LLM to generate a
		// text response. If LLM generation fails, the defined responses
		// in the fulfillment will be respected. This flag is only useful
		// for fulfillments associated with no-match event handlers.
		enable_generative_fallback?: bool

		// Whether Dialogflow should return currently queued fulfillment
		// response messages in streaming APIs. If a webhook is
		// specified, it happens before Dialogflow invokes webhook.
		// Warning: 1) This flag only affects streaming API. Responses
		// are still queued and returned once in non-streaming API. 2)
		// The flag can be enabled in any fulfillment but only the first
		// 3 partial responses will be returned. You may only want to
		// apply it to fulfillments that have slow webhooks.
		return_partial_responses?: bool
		advanced_settings?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings"]])

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string
		conditional_cases?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/conditional_cases"]])

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
		messages?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages", [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages"]])
		set_parameter_actions?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/set_parameter_actions", [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/set_parameter_actions"]])
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings": close({
		dtmf_settings?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/dtmf_settings", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/dtmf_settings"]])
		logging_settings?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/logging_settings", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/logging_settings"]])
		speech_settings?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/speech_settings", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/speech_settings"]])
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/dtmf_settings": close({
		// If true, incoming audio is processed for DTMF (dual tone multi
		// frequtectency) events. For example, if the caller presses a
		// button on their telephone keypad and DTMF processing is
		// enabled, Dialogflow will de the event (e.g. a "3" was pressed)
		// in the incoming audio and pass the event to the bot to drive
		// business logic (e.g. when 3 is pressed, return the account
		// balance).
		enabled?: bool

		// Endpoint timeout setting for matching dtmf input to regex.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.500s".
		endpointing_timeout_duration?: string

		// The digit that terminates a DTMF digit sequence.
		finish_digit?: string

		// Interdigit timeout setting for matching dtmf input to regex.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.500s".
		interdigit_timeout_duration?: string

		// Max length of DTMF digits.
		max_digits?: number
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/logging_settings": close({
		// Enables consent-based end-user input redaction, if true, a
		// pre-defined session parameter
		// **$session.params.conversation-redaction** will be used to
		// determine if the utterance should be redacted.
		enable_consent_based_redaction?: bool

		// Enables DF Interaction logging.
		enable_interaction_logging?: bool

		// Enables Google Cloud Logging.
		enable_stackdriver_logging?: bool
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/advanced_settings/$defs/speech_settings": close({
		// Sensitivity of the speech model that detects the end of speech.
		// Scale from 0 to 100.
		endpointer_sensitivity?: number

		// Mapping from language to Speech-to-Text model. The mapped
		// Speech-to-Text model will be selected for requests from its
		// corresponding language. For more information, see [Speech
		// models](https://cloud.google.com/dialogflow/cx/docs/concept/speech-models).
		// An object containing a list of **"key": value** pairs. Example:
		// **{ "name": "wrench", "mass": "1.3kg", "count": "3" }**.
		models?: [string]: string

		// Timeout before detecting no speech.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.500s".
		no_speech_timeout?: string

		// Use timeout based endpointing, interpreting endpointer
		// sensitivity as seconds of timeout value.
		use_timeout_based_endpointing?: bool
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/conditional_cases": close({
		// A JSON encoded list of cascading if-else conditions. Cases are
		// mutually exclusive. The first one with a matching condition is
		// selected, all the rest ignored.
		// See
		// [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case)
		// for the schema.
		cases?: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages": close({
		// The channel which the response is associated with. Clients can
		// specify the channel via QueryParameters.channel, and only
		// associated channel response will be returned.
		channel?: string

		// This type has no fields.
		// Indicates that interaction with the Dialogflow agent has ended.
		// This message is generated by Dialogflow only and not supposed
		// to be defined by the user.
		// This field is part of a union field 'message': Only one of
		// 'text', 'payload', 'conversationSuccess', 'outputAudioText',
		// 'liveAgentHandoff', 'endInteraction', 'playAudio',
		// 'mixedAudio', 'telephonyTransferCall', or 'knowledgeInfoCard'
		// may be set.
		end_interaction?: [...close({})]

		// Represents an audio message that is composed of both segments
		// synthesized from the Dialogflow agent prompts and ones hosted
		// externally at the specified URIs. The external URIs are
		// specified via playAudio. This message is generated by
		// Dialogflow only and not supposed to be defined by the user.
		// This field is part of a union field 'message': Only one of
		// 'text', 'payload', 'conversationSuccess', 'outputAudioText',
		// 'liveAgentHandoff', 'endInteraction', 'playAudio',
		// 'mixedAudio', 'telephonyTransferCall', or 'knowledgeInfoCard'
		// may be set.
		mixed_audio?: [...close({
			segments?: [...close({
				allow_playback_interruption?: bool
				audio?:                       string
				uri?:                         string
			})]
		})]

		// Returns a response containing a custom, platform-specific
		// payload.
		// This field is part of a union field 'message': Only one of
		// 'text', 'payload', 'conversationSuccess', 'outputAudioText',
		// 'liveAgentHandoff', 'endInteraction', 'playAudio',
		// 'mixedAudio', 'telephonyTransferCall', or 'knowledgeInfoCard'
		// may be set.
		payload?: string
		conversation_success?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success"]])
		knowledge_info_card?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/knowledge_info_card", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/knowledge_info_card"]])
		live_agent_handoff?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff"]])
		output_audio_text?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text"]])
		play_audio?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio"]])
		telephony_transfer_call?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call"]])
		text?: matchN(1, [_#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/text"]])
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/knowledge_info_card": close({})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// The SSML text to be synthesized. For more information, see
		// SSML.
		// This field is part of a union field 'source': Only one of
		// 'text' or 'ssml' may be set.
		ssml?: string

		// The raw text to be synthesized.
		// This field is part of a union field 'source': Only one of
		// 'text' or 'ssml' may be set.
		text?: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// URI of the audio clip. Dialogflow does not impose any
		// validation on this value. It is specific to the client that
		// reads it.
		audio_uri!: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call": close({
		// Transfer the call to a phone number in E.164 format.
		phone_number!: string
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/messages/$defs/text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// A collection of text response variants. If multiple variants
		// are defined, only one text response variant is returned at
		// runtime.
		// required: true
		text?: [...string]
	})

	_#defs: "/$defs/knowledge_connector_settings/$defs/trigger_fulfillment/$defs/set_parameter_actions": close({
		// Display name of the parameter.
		parameter?: string

		// The new JSON-encoded value of the parameter. A null value
		// clears the parameter.
		value?: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment": close({
		// Whether Dialogflow should return currently queued fulfillment
		// response messages in streaming APIs. If a webhook is
		// specified, it happens before Dialogflow invokes webhook.
		// Warning: 1) This flag only affects streaming API. Responses
		// are still queued and returned once in non-streaming API. 2)
		// The flag can be enabled in any fulfillment but only the first
		// 3 partial responses will be returned. You may only want to
		// apply it to fulfillments that have slow webhooks.
		return_partial_responses?: bool
		conditional_cases?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/conditional_cases"]])

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
		messages?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages", [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages"]])
		set_parameter_actions?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/set_parameter_actions", [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/set_parameter_actions"]])
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/conditional_cases": close({
		// A JSON encoded list of cascading if-else conditions. Cases are
		// mutually exclusive. The first one with a matching condition is
		// selected, all the rest ignored.
		// See
		// [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case)
		// for the schema.
		cases?: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages": close({
		conversation_success?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success"]])
		live_agent_handoff?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff"]])

		// The channel which the response is associated with. Clients can
		// specify the channel via QueryParameters.channel, and only
		// associated channel response will be returned.
		channel?: string

		// A custom, platform-specific payload.
		payload?: string
		output_audio_text?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text"]])
		play_audio?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio"]])
		telephony_transfer_call?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call"]])
		text?: matchN(1, [_#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/text"]])
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/conversation_success": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/live_agent_handoff": close({
		// Custom metadata. Dialogflow doesn't impose any structure on
		// this.
		metadata?: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/output_audio_text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// The SSML text to be synthesized. For more information, see
		// SSML.
		ssml?: string

		// The raw text to be synthesized.
		text?: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/play_audio": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// URI of the audio clip. Dialogflow does not impose any
		// validation on this value. It is specific to the client that
		// reads it.
		audio_uri!: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/telephony_transfer_call": close({
		// Transfer the call to a phone number in E.164 format.
		phone_number!: string
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/messages/$defs/text": close({
		// Whether the playback of this message can be interrupted by the
		// end user's speech and the client can then starts the next
		// Dialogflow request.
		allow_playback_interruption?: bool

		// A collection of text responses.
		text?: [...string]
	})

	_#defs: "/$defs/transition_routes/$defs/trigger_fulfillment/$defs/set_parameter_actions": close({
		// Display name of the parameter.
		parameter?: string

		// The new JSON-encoded value of the parameter. A null value
		// clears the parameter.
		value?: string
	})
}
