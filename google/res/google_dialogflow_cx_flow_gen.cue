package res

import "list"

#google_dialogflow_cx_flow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_cx_flow")
	close({
		// The description of the flow. The maximum length is 500
		// characters. If exceeded, the request is rejected.
		description?: string

		// The human-readable name of the flow.
		display_name!: string
		id?:           string

		// Marks this as the [Default Start
		// Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start)
		// for an agent. When you create an agent, the Default Start Flow
		// is created automatically.
		// The Default Start Flow cannot be deleted; deleting the
		// 'google_dialogflow_cx_flow' resource does nothing to the
		// underlying GCP resources.
		//
		// ~> Avoid having multiple 'google_dialogflow_cx_flow' resources
		// linked to the same agent with 'is_default_start_flow = true'
		// because they will compete to control a single Default Start
		// Flow resource in GCP.
		is_default_start_flow?: bool

		// The language of the following fields in flow:
		// Flow.event_handlers.trigger_fulfillment.messages
		// Flow.event_handlers.trigger_fulfillment.conditional_cases
		// Flow.transition_routes.trigger_fulfillment.messages
		// Flow.transition_routes.trigger_fulfillment.conditional_cases
		// If not specified, the agent's default language is used. Many
		// languages are supported. Note: languages must be enabled in
		// the agent before they can be used.
		language_code?: string
		advanced_settings?: matchN(1, [#advanced_settings, list.MaxItems(1) & [...#advanced_settings]])

		// The unique identifier of the flow.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>.
		name?: string
		event_handlers?: matchN(1, [#event_handlers, [...#event_handlers]])
		knowledge_connector_settings?: matchN(1, [#knowledge_connector_settings, list.MaxItems(1) & [...#knowledge_connector_settings]])
		nlu_settings?: matchN(1, [#nlu_settings, list.MaxItems(1) & [...#nlu_settings]])
		timeouts?: #timeouts

		// The agent to create a flow for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string
		transition_routes?: matchN(1, [#transition_routes, [...#transition_routes]])

		// A flow's transition route group serve two purposes:
		// They are responsible for matching the user's first utterances
		// in the flow.
		// They are inherited by every page's [transition route
		// groups][Page.transition_route_groups]. Transition route groups
		// defined in the page have higher priority than those defined in
		// the flow.
		// Format:projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow
		// ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
		transition_route_groups?: [...string]
	})

	#advanced_settings: close({
		audio_export_gcs_destination?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/audio_export_gcs_destination", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/audio_export_gcs_destination"]])
		dtmf_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/dtmf_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/dtmf_settings"]])
		logging_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/logging_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/logging_settings"]])
		speech_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/speech_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/speech_settings"]])
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

	#nlu_settings: close({
		// To filter out false positive results and still get variety in
		// matched natural language inputs for your agent, you can tune
		// the machine learning classification threshold.
		// If the returned score value is less than the threshold value,
		// then a no-match event will be triggered. The score values
		// range from 0.0 (completely uncertain) to 1.0 (completely
		// certain). If set to 0.0, the default of 0.3 is used.
		classification_threshold?: number

		// Indicates NLU model training mode.
		// * MODEL_TRAINING_MODE_AUTOMATIC: NLU model training is
		// automatically triggered when a flow gets modified. User can
		// also manually trigger model training in this mode.
		// * MODEL_TRAINING_MODE_MANUAL: User needs to manually trigger
		// NLU model training. Best for large flows whose models take
		// long time to train. Possible values:
		// ["MODEL_TRAINING_MODE_AUTOMATIC",
		// "MODEL_TRAINING_MODE_MANUAL"]
		model_training_mode?: string

		// Indicates the type of NLU model.
		// * MODEL_TYPE_STANDARD: Use standard NLU model.
		// * MODEL_TYPE_ADVANCED: Use advanced NLU model. Possible values:
		// ["MODEL_TYPE_STANDARD", "MODEL_TYPE_ADVANCED"]
		model_type?: string
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

	_#defs: "/$defs/advanced_settings/$defs/audio_export_gcs_destination": close({
		// The Google Cloud Storage URI for the exported objects. Whether
		// a full object name, or just a prefix, its usage depends on the
		// Dialogflow operation.
		// Format: gs://bucket/object-name-or-prefix
		uri?: string
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

	_#defs: "/$defs/advanced_settings/$defs/logging_settings": close({
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

	_#defs: "/$defs/advanced_settings/$defs/speech_settings": close({
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
		// with 's'. Example: "3.5s".
		no_speech_timeout?: string

		// Use timeout based endpointing, interpreting endpointer
		// sensitivity as seconds of timeout value.
		use_timeout_based_endpointing?: bool
	})

	_#defs: "/$defs/event_handlers/$defs/trigger_fulfillment": close({
		// If the flag is true, the agent will utilize LLM to generate a
		// text response.
		// If LLM generation fails, the defined responses in the
		// fulfillment will be respected.
		// This flag is only useful for fulfillments associated with
		// no-match event handlers.
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

		// The tag used by the webhook to identify which fulfillment is
		// being called. This field is required if webhook is specified.
		tag?: string
		conditional_cases?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases", [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/conditional_cases"]])
		messages?: matchN(1, [_#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages", [..._#defs."/$defs/event_handlers/$defs/trigger_fulfillment/$defs/messages"]])

		// The webhook to call. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent
		// ID>/webhooks/<Webhook ID>.
		webhook?: string
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
