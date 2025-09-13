package res

import "list"

#google_dialogflow_conversation_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_conversation_profile")
	close({
		// Required. Human readable name for this profile. Max length 1024
		// bytes.
		display_name!: string

		// Language code for the conversation profile. This should be a
		// BCP-47 language tag.
		language_code?: string
		id?:            string

		// desc
		location!: string

		// name
		name?: string

		// Name of the CX SecuritySettings reference for the agent.
		security_settings?: string
		automated_agent_config?: matchN(1, [#automated_agent_config, list.MaxItems(1) & [...#automated_agent_config]])
		human_agent_assistant_config?: matchN(1, [#human_agent_assistant_config, list.MaxItems(1) & [...#human_agent_assistant_config]])
		human_agent_handoff_config?: matchN(1, [#human_agent_handoff_config, list.MaxItems(1) & [...#human_agent_handoff_config]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		new_message_event_notification_config?: matchN(1, [#new_message_event_notification_config, list.MaxItems(1) & [...#new_message_event_notification_config]])
		notification_config?: matchN(1, [#notification_config, list.MaxItems(1) & [...#notification_config]])
		stt_config?: matchN(1, [#stt_config, list.MaxItems(1) & [...#stt_config]])
		timeouts?: #timeouts
		project?:  string
		tts_config?: matchN(1, [#tts_config, list.MaxItems(1) & [...#tts_config]])

		// The time zone of this conversational profile.
		time_zone?: string
	})

	#automated_agent_config: close({
		// ID of the Dialogflow agent environment to use.
		// Expects the format "projects/<Project ID>/locations/<Location
		// ID>/agent/environments/<EnvironmentID>"
		agent!: string

		// Configure lifetime of the Dialogflow session.
		session_ttl?: string
	})

	#human_agent_assistant_config: close({
		end_user_suggestion_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config"]])
		human_agent_suggestion_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config"]])
		message_analysis_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/message_analysis_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/message_analysis_config"]])
		notification_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/notification_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/notification_config"]])
	})

	#human_agent_handoff_config: close({
		live_person_config?: matchN(1, [_#defs."/$defs/human_agent_handoff_config/$defs/live_person_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_handoff_config/$defs/live_person_config"]])
	})

	#logging_config: close({
		// Whether to log conversation events
		enable_stackdriver_logging?: bool
	})

	#new_message_event_notification_config: close({
		// Format of the message Possible values:
		// ["MESSAGE_FORMAT_UNSPECIFIED", "PROTO", "JSON"]
		message_format?: string

		// Name of the Pub/Sub topic to publish conversation events
		topic?: string
	})

	#notification_config: close({
		// Format of the message Possible values:
		// ["MESSAGE_FORMAT_UNSPECIFIED", "PROTO", "JSON"]
		message_format?: string

		// Name of the Pub/Sub topic to publish conversation events
		topic?: string
	})

	#stt_config: close({
		// Audio encoding of the audio content to process. Possible
		// values: ["AUDIO_ENCODING_UNSPECIFIED",
		// "AUDIO_ENCODING_LINEAR_16", "AUDIO_ENCODING_FLAC",
		// "AUDIO_ENCODING_MULAW", "AUDIO_ENCODING_AMR",
		// "AUDIO_ENCODING_AMR_WB", "AUDIO_ENCODING_OGG_OPUS",
		// "AUDIOENCODING_SPEEX_WITH_HEADER_BYTE"]
		audio_encoding?: string

		// If true, Dialogflow returns SpeechWordInfo in
		// StreamingRecognitionResult with information about the
		// recognized speech words.
		enable_word_info?: bool

		// The language of the supplied audio.
		language_code?: string

		// Which Speech model to select.
		// Leave this field unspecified to use Agent Speech settings for
		// model selection.
		model?: string

		// Sample rate (in Hertz) of the audio content sent in the query.
		sample_rate_hertz?: number

		// The speech model used in speech to text. Possible values:
		// ["SPEECH_MODEL_VARIANT_UNSPECIFIED", "USE_BEST_AVAILABLE",
		// "USE_STANDARD", "USE_ENHANCED"]
		speech_model_variant?: string

		// Use timeout based endpointing, interpreting endpointer
		// sensitivy as seconds of timeout value.
		use_timeout_based_endpointing?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#tts_config: close({
		// An identifier which selects 'audio effects' profiles that are
		// applied on (post synthesized) text to speech. Effects are
		// applied on top of each other in the order they are given.
		effects_profile_id?: [...string]

		// Speaking pitch, in the range [-20.0, 20.0]. 20 means increase
		// 20 semitones from the original pitch. -20 means decrease 20
		// semitones from the original pitch.
		pitch?: number

		// Speaking rate/speed, in the range [0.25, 4.0].
		speaking_rate?: number
		voice?: matchN(1, [_#defs."/$defs/tts_config/$defs/voice", list.MaxItems(1) & [..._#defs."/$defs/tts_config/$defs/voice"]])

		// Volume gain (in dB) of the normal native volume supported by
		// the specific voice.
		volume_gain_db?: number
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config": close({
		// When disableHighLatencyFeaturesSyncDelivery is true and using
		// the AnalyzeContent API, we will not deliver the responses from
		// high latency features in the API response. The
		// humanAgentAssistantConfig.notification_config must be
		// configured and enableEventBasedSuggestion must be set to true
		// to receive the responses from high latency features in
		// Pub/Sub. High latency feature(s): KNOWLEDGE_ASSIST
		disable_high_latency_features_sync_delivery?: bool
		feature_configs?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs", [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs"]])

		// List of various generator resource names used in the
		// conversation profile.
		generators?: [...string]

		// If groupSuggestionResponses is false, and there are multiple
		// featureConfigs in event based suggestion or
		// StreamingAnalyzeContent, we will try to deliver suggestions to
		// customers as soon as we get new suggestion. Different type of
		// suggestions based on the same context will be in separate
		// Pub/Sub event or StreamingAnalyzeContentResponse.
		//
		// If groupSuggestionResponses set to true. All the suggestions to
		// the same participant based on the same context will be grouped
		// into a single Pub/Sub event or
		// StreamingAnalyzeContentResponse.
		group_suggestion_responses?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs": close({
		// Disable the logging of search queries sent by human agents. It
		// can prevent those queries from being stored at answer records.
		// This feature is only supported for types: KNOWLEDGE_SEARCH.
		disable_agent_query_logging?: bool

		// Enable including conversation context during query answer
		// generation.
		// This feature is only supported for types: KNOWLEDGE_SEARCH.
		enable_conversation_augmented_query?: bool

		// Automatically iterates all participants and tries to compile
		// suggestions.
		// This feature is only supported for types: ARTICLE_SUGGESTION,
		// FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
		enable_event_based_suggestion?: bool

		// Enable query suggestion only.
		// This feature is only supported for types: KNOWLEDGE_ASSIST
		enable_query_suggestion_only?: bool
		conversation_model_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/conversation_model_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/conversation_model_config"]])
		conversation_process_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/conversation_process_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/conversation_process_config"]])
		query_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config"]])
		suggestion_feature?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/suggestion_feature", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/suggestion_feature"]])
		suggestion_trigger_settings?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/suggestion_trigger_settings", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/suggestion_trigger_settings"]])

		// Enable query suggestion even if we can't find its answer. By
		// default, queries are suggested only if we find its answer.
		// This feature is only supported for types: KNOWLEDGE_ASSIST.
		enable_query_suggestion_when_no_answer?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/conversation_model_config": close({
		// Version of current baseline model. It will be ignored if model
		// is set. Valid versions are: Article Suggestion baseline model:
		// - 0.9 - 1.0 (default) Summarization baseline model: - 1.0
		baseline_model_version?: string

		// Conversation model resource name. Format: projects/<Project
		// ID>/conversationModels/<Model ID>.
		model?: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/conversation_process_config": close({
		// Number of recent non-small-talk sentences to use as context for
		// article and FAQ suggestion
		recent_sentences_count?: number
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config": close({
		context_filter_settings?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/context_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/context_filter_settings"]])

		// Confidence threshold of query result.
		// This feature is only supported for types: ARTICLE_SUGGESTION,
		// FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH,
		// KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
		confidence_threshold?: number
		dialogflow_query_source?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source"]])

		// Maximum number of results to return.
		max_results?: number
		document_query_source?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/document_query_source", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/document_query_source"]])
		knowledge_base_query_source?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/knowledge_base_query_source", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/knowledge_base_query_source"]])
		sections?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/sections", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/sections"]])
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/context_filter_settings": close({
		// If set to true, the last message from virtual agent (hand off
		// message) and the message before it (trigger message of hand
		// off) are dropped.
		drop_handoff_messages?: bool

		// If set to true, all messages from ivr stage are dropped.
		drop_ivr_messages?: bool

		// If set to true, all messages from virtual agent are dropped.
		drop_virtual_agent_messages?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source": close({
		human_agent_side_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source/$defs/human_agent_side_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source/$defs/human_agent_side_config"]])

		// he name of a Dialogflow virtual agent used for end user side
		// intent detection and suggestion. Format: projects/<Project
		// ID>/locations/<Location ID>/agent.
		agent!: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source/$defs/human_agent_side_config": close({
		// The name of a dialogflow virtual agent used for intent
		// detection and suggestion triggered by human agent. Format:
		// projects/<Project ID>/locations/<Location ID>/agent.
		agent?: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/document_query_source": close({
		// Knowledge documents to query from. Format: projects/<Project
		// ID>/locations/<Location ID>/knowledgeBases/<KnowledgeBase
		// ID>/documents/<Document ID>.
		documents!: [...string]
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/knowledge_base_query_source": close({
		// Knowledge bases to query. Format: projects/<Project
		// ID>/locations/<Location ID>/knowledgeBases/<Knowledge Base
		// ID>.
		knowledge_bases!: [...string]
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/sections": close({
		// The selected sections chosen to return when requesting a
		// summary of a conversation
		// If not provided the default selection will be "{SITUATION,
		// ACTION, RESULT}". Possible values:
		// ["SECTION_TYPE_UNSPECIFIED", "SITUATION", "ACTION",
		// "RESOLUTION", "REASON_FOR_CANCELLATION",
		// "CUSTOMER_SATISFACTION", "ENTITIES"]
		section_types?: [...string]
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/suggestion_feature": close({
		// Type of Human Agent Assistant API feature to request.
		type?: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/end_user_suggestion_config/$defs/feature_configs/$defs/suggestion_trigger_settings": close({
		// Do not trigger if last utterance is small talk.
		no_small_talk?: bool

		// Only trigger suggestion if participant role of last utterance
		// is END_USER.
		only_end_user?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config": close({
		// When disableHighLatencyFeaturesSyncDelivery is true and using
		// the AnalyzeContent API, we will not deliver the responses from
		// high latency features in the API response. The
		// humanAgentAssistantConfig.notification_config must be
		// configured and enableEventBasedSuggestion must be set to true
		// to receive the responses from high latency features in
		// Pub/Sub. High latency feature(s): KNOWLEDGE_ASSIST
		disable_high_latency_features_sync_delivery?: bool
		feature_configs?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs", [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs"]])

		// List of various generator resource names used in the
		// conversation profile.
		generators?: [...string]

		// If groupSuggestionResponses is false, and there are multiple
		// featureConfigs in event based suggestion or
		// StreamingAnalyzeContent, we will try to deliver suggestions to
		// customers as soon as we get new suggestion. Different type of
		// suggestions based on the same context will be in separate
		// Pub/Sub event or StreamingAnalyzeContentResponse.
		//
		// If groupSuggestionResponses set to true. All the suggestions to
		// the same participant based on the same context will be grouped
		// into a single Pub/Sub event or
		// StreamingAnalyzeContentResponse.
		group_suggestion_responses?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs": close({
		// Disable the logging of search queries sent by human agents. It
		// can prevent those queries from being stored at answer records.
		// This feature is only supported for types: KNOWLEDGE_SEARCH.
		disable_agent_query_logging?: bool

		// Enable including conversation context during query answer
		// generation.
		// This feature is only supported for types: KNOWLEDGE_SEARCH.
		enable_conversation_augmented_query?: bool

		// Automatically iterates all participants and tries to compile
		// suggestions.
		// This feature is only supported for types: ARTICLE_SUGGESTION,
		// FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
		enable_event_based_suggestion?: bool

		// Enable query suggestion only.
		// This feature is only supported for types: KNOWLEDGE_ASSIST
		enable_query_suggestion_only?: bool
		conversation_model_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/conversation_model_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/conversation_model_config"]])
		conversation_process_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/conversation_process_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/conversation_process_config"]])
		query_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config"]])
		suggestion_feature?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/suggestion_feature", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/suggestion_feature"]])
		suggestion_trigger_settings?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/suggestion_trigger_settings", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/suggestion_trigger_settings"]])

		// Enable query suggestion even if we can't find its answer. By
		// default, queries are suggested only if we find its answer.
		// This feature is only supported for types: KNOWLEDGE_ASSIST.
		enable_query_suggestion_when_no_answer?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/conversation_model_config": close({
		// Version of current baseline model. It will be ignored if model
		// is set. Valid versions are: Article Suggestion baseline model:
		// - 0.9 - 1.0 (default) Summarization baseline model: - 1.0
		baseline_model_version?: string

		// Conversation model resource name. Format: projects/<Project
		// ID>/conversationModels/<Model ID>.
		model?: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/conversation_process_config": close({
		// Number of recent non-small-talk sentences to use as context for
		// article and FAQ suggestion
		recent_sentences_count?: number
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config": close({
		context_filter_settings?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/context_filter_settings", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/context_filter_settings"]])
		dialogflow_query_source?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source"]])
		sections?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/sections", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/sections"]])

		// Confidence threshold of query result.
		// This feature is only supported for types: ARTICLE_SUGGESTION,
		// FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH,
		// KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
		confidence_threshold?: number

		// Maximum number of results to return.
		max_results?: number
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/context_filter_settings": close({
		// If set to true, the last message from virtual agent (hand off
		// message) and the message before it (trigger message of hand
		// off) are dropped.
		drop_handoff_messages?: bool

		// If set to true, all messages from ivr stage are dropped.
		drop_ivr_messages?: bool

		// If set to true, all messages from virtual agent are dropped.
		drop_virtual_agent_messages?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source": close({
		human_agent_side_config?: matchN(1, [_#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source/$defs/human_agent_side_config", list.MaxItems(1) & [..._#defs."/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source/$defs/human_agent_side_config"]])

		// he name of a Dialogflow virtual agent used for end user side
		// intent detection and suggestion. Format: projects/<Project
		// ID>/locations/<Location ID>/agent.
		agent!: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/dialogflow_query_source/$defs/human_agent_side_config": close({
		// The name of a dialogflow virtual agent used for intent
		// detection and suggestion triggered by human agent. Format:
		// projects/<Project ID>/locations/<Location ID>/agent.
		agent?: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/query_config/$defs/sections": close({
		// The selected sections chosen to return when requesting a
		// summary of a conversation
		// If not provided the default selection will be "{SITUATION,
		// ACTION, RESULT}". Possible values:
		// ["SECTION_TYPE_UNSPECIFIED", "SITUATION", "ACTION",
		// "RESOLUTION", "REASON_FOR_CANCELLATION",
		// "CUSTOMER_SATISFACTION", "ENTITIES"]
		section_types?: [...string]
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/suggestion_feature": close({
		// Type of Human Agent Assistant API feature to request.
		type?: string
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/human_agent_suggestion_config/$defs/feature_configs/$defs/suggestion_trigger_settings": close({
		// Do not trigger if last utterance is small talk.
		no_small_talk?: bool

		// Only trigger suggestion if participant role of last utterance
		// is END_USER.
		only_end_user?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/message_analysis_config": close({
		// Enable entity extraction in conversation messages on agent
		// assist stage.
		enable_entity_extraction?: bool

		// Enable sentiment analysis in conversation messages on agent
		// assist stage. Sentiment analysis inspects user input and
		// identifies the prevailing subjective opinion, especially to
		// determine a user's attitude as positive, negative, or neutral.
		enable_sentiment_analysis?: bool
	})

	_#defs: "/$defs/human_agent_assistant_config/$defs/notification_config": close({
		// Format of the message Possible values:
		// ["MESSAGE_FORMAT_UNSPECIFIED", "PROTO", "JSON"]
		message_format?: string

		// Name of the Pub/Sub topic to publish conversation events
		topic?: string
	})

	_#defs: "/$defs/human_agent_handoff_config/$defs/live_person_config": close({
		// Account number of the LivePerson account to connect.
		account_number!: string
	})

	_#defs: "/$defs/tts_config/$defs/voice": close({
		// The name of the voice.
		name?: string

		// The preferred gender of the voice. Possible values:
		// ["SSML_VOICE_GENDER_UNSPECIFIED", "SSML_VOICE_GENDER_MALE",
		// "SSML_VOICE_GENDER_FEMALE", "SSML_VOICE_GENDER_NEUTRAL"]
		ssml_gender?: string
	})
}
