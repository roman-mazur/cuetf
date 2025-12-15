package res

import "list"

#google_ces_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_app")
	close({
		// The ID to use for the app, which will become the final
		// component of
		// the app's resource name. If not provided, a unique ID will be
		// automatically assigned for the app.
		app_id!: string
		audio_processing_config?: matchN(1, [#audio_processing_config, list.MaxItems(1) & [...#audio_processing_config]])

		// Timestamp when the app was created.
		create_time?: string

		// Number of deployments in the app.
		deployment_count?: number

		// Human-readable description of the app.
		description?: string

		// Display name of the app.
		display_name!: string

		// Etag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string

		// Instructions for all the agents in the app.
		// You can use this instruction to set up a stable identity or
		// personality
		// across all the agents.
		global_instruction?: string

		// List of guardrails for the app.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/guardrails/{guardrail}'
		guardrails?: [...string]
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		client_certificate_settings?: matchN(1, [#client_certificate_settings, list.MaxItems(1) & [...#client_certificate_settings]])
		data_store_settings?: matchN(1, [#data_store_settings, list.MaxItems(1) & [...#data_store_settings]])

		// Metadata about the app. This field can be used to store
		// additional
		// information relevant to the app's details or intended usages.
		metadata?: [string]: string
		default_channel_profile?: matchN(1, [#default_channel_profile, list.MaxItems(1) & [...#default_channel_profile]])
		evaluation_metrics_thresholds?: matchN(1, [#evaluation_metrics_thresholds, list.MaxItems(1) & [...#evaluation_metrics_thresholds]])
		language_settings?: matchN(1, [#language_settings, list.MaxItems(1) & [...#language_settings]])
		logging_settings?: matchN(1, [#logging_settings, list.MaxItems(1) & [...#logging_settings]])
		model_settings?: matchN(1, [#model_settings, list.MaxItems(1) & [...#model_settings]])
		time_zone_settings?: matchN(1, [#time_zone_settings, list.MaxItems(1) & [...#time_zone_settings]])
		timeouts?: #timeouts

		// Identifier. The unique identifier of the app.
		// Format: 'projects/{project}/locations/{location}/apps/{app}'
		name?: string

		// Whether the app is pinned in the app list.
		pinned?: bool

		// The root agent is the entry point of the app.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/agents/{agent}'
		root_agent?: string
		project?:    string

		// Timestamp when the app was last updated.
		update_time?: string
		variable_declarations?: matchN(1, [#variable_declarations, [...#variable_declarations]])
	})

	#audio_processing_config: close({
		ambient_sound_config?: matchN(1, [_#defs."/$defs/audio_processing_config/$defs/ambient_sound_config", list.MaxItems(1) & [..._#defs."/$defs/audio_processing_config/$defs/ambient_sound_config"]])
		barge_in_config?: matchN(1, [_#defs."/$defs/audio_processing_config/$defs/barge_in_config", list.MaxItems(1) & [..._#defs."/$defs/audio_processing_config/$defs/barge_in_config"]])
		synthesize_speech_configs?: matchN(1, [_#defs."/$defs/audio_processing_config/$defs/synthesize_speech_configs", [..._#defs."/$defs/audio_processing_config/$defs/synthesize_speech_configs"]])

		// The duration of user inactivity (no speech or interaction)
		// before the agent
		// prompts the user for reengagement. If not set, the agent will
		// not prompt
		// the user for reengagement.
		inactivity_timeout?: string
	})

	#client_certificate_settings: close({
		// The passphrase to decrypt the private key.
		// Should be left unset if the private key is not encrypted.
		passphrase?: string

		// The name of the SecretManager secret version resource
		// storing the private key encoded in PEM format.
		// Format: projects/{project}/secrets/{secret}/versions/{version}
		private_key!: string

		// The TLS certificate encoded in PEM format.
		// This string must include the begin header and end footer lines.
		tls_certificate!: string
	})

	#data_store_settings: close({
		// The engines for the app.
		engines?: [...close({
			name?: string
			type?: string
		})]
	})

	#default_channel_profile: close({
		// The type of the channel profile.
		// Possible values:
		// UNKNOWN
		// WEB_UI
		// API
		// TWILIO
		// GOOGLE_TELEPHONY_PLATFORM
		// CONTACT_CENTER_AS_A_SERVICE
		channel_type?: string

		// Whether to disable user barge-in in the conversation.
		// - true: User interruptions are disabled while the agent is
		// speaking.
		// - false: The agent retains automatic control over when the user
		// can interrupt.
		disable_barge_in_control?: bool

		// Whether to disable DTMF (dual-tone multi-frequency).
		disable_dtmf?: bool

		// The unique identifier of the channel profile.
		profile_id?: string
		persona_property?: matchN(1, [_#defs."/$defs/default_channel_profile/$defs/persona_property", list.MaxItems(1) & [..._#defs."/$defs/default_channel_profile/$defs/persona_property"]])
		web_widget_config?: matchN(1, [_#defs."/$defs/default_channel_profile/$defs/web_widget_config", list.MaxItems(1) & [..._#defs."/$defs/default_channel_profile/$defs/web_widget_config"]])
	})

	#evaluation_metrics_thresholds: close({
		golden_evaluation_metrics_thresholds?: matchN(1, [_#defs."/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds", list.MaxItems(1) & [..._#defs."/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds"]])
	})

	#language_settings: close({
		// The default language code of the app.
		default_language_code?: string

		// Enables multilingual support. If true, agents in the app will
		// use pre-built
		// instructions to improve handling of multilingual input.
		enable_multilingual_support?: bool

		// The action to perform when an agent receives input in an
		// unsupported
		// language.
		// This can be a predefined action or a custom tool call.
		// Valid values are:
		// - A tool's full resource name, which triggers a specific tool
		// execution.
		// - A predefined system action, such as "escalate" or "exit",
		// which triggers
		// an EndSession signal with corresponding metadata
		// to terminate the conversation.
		fallback_action?: string

		// List of languages codes supported by the app, in addition to
		// the
		// 'default_language_code'.
		supported_language_codes?: [...string]
	})

	#logging_settings: close({
		audio_recording_config?: matchN(1, [_#defs."/$defs/logging_settings/$defs/audio_recording_config", list.MaxItems(1) & [..._#defs."/$defs/logging_settings/$defs/audio_recording_config"]])
		bigquery_export_settings?: matchN(1, [_#defs."/$defs/logging_settings/$defs/bigquery_export_settings", list.MaxItems(1) & [..._#defs."/$defs/logging_settings/$defs/bigquery_export_settings"]])
		cloud_logging_settings?: matchN(1, [_#defs."/$defs/logging_settings/$defs/cloud_logging_settings", list.MaxItems(1) & [..._#defs."/$defs/logging_settings/$defs/cloud_logging_settings"]])
		conversation_logging_settings?: matchN(1, [_#defs."/$defs/logging_settings/$defs/conversation_logging_settings", list.MaxItems(1) & [..._#defs."/$defs/logging_settings/$defs/conversation_logging_settings"]])
		redaction_config?: matchN(1, [_#defs."/$defs/logging_settings/$defs/redaction_config", list.MaxItems(1) & [..._#defs."/$defs/logging_settings/$defs/redaction_config"]])
	})

	#model_settings: close({
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

	#time_zone_settings: close({
		// The time zone of the app from the time zone database, e.g.,
		// America/Los_Angeles, Europe/Paris.
		time_zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#variable_declarations: close({
		schema!: matchN(1, [_#defs."/$defs/variable_declarations/$defs/schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/variable_declarations/$defs/schema"]])

		// The description of the variable.
		description!: string

		// The name of the variable. The name must start with a letter or
		// underscore
		// and contain only letters, numbers, or underscores.
		name!: string
	})

	_#defs: "/$defs/audio_processing_config/$defs/ambient_sound_config": close({
		// Ambient noise as a mono-channel, 16kHz WAV file stored in
		// [Cloud
		// Storage](https://cloud.google.com/storage).
		// Note: Please make sure the CES service agent
		// 'service-@gcp-sa-ces.iam.gserviceaccount.com' has
		// 'storage.objects.get' permission to the Cloud Storage object.
		gcs_uri?: string

		// Name of the prebuilt ambient sound.
		// Valid values are: - "coffee_shop" - "keyboard" - "keypad" -
		// "hum"
		// -"office_1" - "office_2" - "office_3"
		// -"room_1" - "room_2" - "room_3"
		// -"room_4" - "room_5" - "air_conditioner"
		prebuilt_ambient_sound?: string

		// Volume gain (in dB) of the normal native volume supported by
		// ambient noise, in the range [-96.0, 16.0]. If unset, or set to
		// a value of
		// 0.0 (dB), will play at normal native signal amplitude. A value
		// of -6.0 (dB)
		// will play at approximately half the amplitude of the normal
		// native signal
		// amplitude. A value of +6.0 (dB) will play at approximately
		// twice the
		// amplitude of the normal native signal amplitude. We strongly
		// recommend not
		// to exceed +10 (dB) as there's usually no effective increase in
		// loudness for
		// any value greater than that.
		volume_gain_db?: number
	})

	_#defs: "/$defs/audio_processing_config/$defs/barge_in_config": close({
		// If enabled, the agent will adapt its next response based on the
		// assumption
		// that the user hasn't heard the full preceding agent message.
		// This should not be used in scenarios where agent responses are
		// displayed
		// visually.
		barge_in_awareness?: bool
	})

	_#defs: "/$defs/audio_processing_config/$defs/synthesize_speech_configs": close({
		language_code!: string

		// The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the
		// normal native
		// speed supported by the specific voice. 2.0 is twice as fast,
		// and 0.5 is
		// half as fast. Values outside of the range [0.25, 2.0] will
		// return an error.
		speaking_rate?: number

		// The name of the voice. If not set, the service will choose a
		// voice based on the other parameters such as language_code.
		// For the list of available voices, please refer to Supported
		// voices and
		// languages from Cloud Text-to-Speech.
		voice?: string
	})

	_#defs: "/$defs/default_channel_profile/$defs/persona_property": close({
		// The persona of the channel.
		// Possible values:
		// UNKNOWN
		// CONCISE
		// CHATTY
		persona?: string
	})

	_#defs: "/$defs/default_channel_profile/$defs/web_widget_config": close({
		// The modality of the web widget.
		// Possible values:
		// UNKNOWN_MODALITY
		// CHAT_AND_VOICE
		// VOICE_ONLY
		// CHAT_ONLY
		modality?: string

		// The theme of the web widget.
		// Possible values:
		// UNKNOWN_THEME
		// LIGHT
		// DARK
		theme?: string

		// The title of the web widget.
		web_widget_title?: string
	})

	_#defs: "/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds": close({
		expectation_level_metrics_thresholds?: matchN(1, [_#defs."/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds/$defs/expectation_level_metrics_thresholds", list.MaxItems(1) & [..._#defs."/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds/$defs/expectation_level_metrics_thresholds"]])
		turn_level_metrics_thresholds?: matchN(1, [_#defs."/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds/$defs/turn_level_metrics_thresholds", list.MaxItems(1) & [..._#defs."/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds/$defs/turn_level_metrics_thresholds"]])
	})

	_#defs: "/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds/$defs/expectation_level_metrics_thresholds": close({
		// The success threshold for individual tool invocation parameter
		// correctness. Must be a float between 0 and 1. Default is 1.0.
		tool_invocation_parameter_correctness_threshold?: number
	})

	_#defs: "/$defs/evaluation_metrics_thresholds/$defs/golden_evaluation_metrics_thresholds/$defs/turn_level_metrics_thresholds": close({
		// The success threshold for overall tool invocation correctness.
		// Must be
		// a float between 0 and 1. Default is 1.0.
		overall_tool_invocation_correctness_threshold?: number

		// The success threshold for semantic similarity. Must be an
		// integer
		// between 0 and 4. Default is >= 3.
		semantic_similarity_success_threshold?: number
	})

	_#defs: "/$defs/logging_settings/$defs/audio_recording_config": close({
		// The [Cloud Storage](https://cloud.google.com/storage) bucket to
		// store the
		// session audio recordings. The URI must start with "gs://".
		// Note: If the Cloud Storage bucket is in a different project
		// from the app,
		// you should grant 'storage.objects.create' permission to the CES
		// service
		// agent 'service-@gcp-sa-ces.iam.gserviceaccount.com'.
		gcs_bucket?: string

		// The Cloud Storage path prefix for audio recordings.
		// This prefix can include the following placeholders, which will
		// be
		// dynamically substituted at serving time:
		// - $project: project ID
		// - $location: app location
		// - $app: app ID
		// - $date: session date in YYYY-MM-DD format
		// - $session: session ID
		// If the path prefix is not specified, the default prefix
		// '$project/$location/$app/$date/$session/' will be used.
		gcs_path_prefix?: string
	})

	_#defs: "/$defs/logging_settings/$defs/bigquery_export_settings": close({
		// The BigQuery dataset to export the data to.
		dataset?: string

		// Indicates whether the BigQuery export is enabled.
		enabled?: bool

		// The project ID of the BigQuery dataset to export the data to.
		// Note: If the BigQuery dataset is in a different project from
		// the app, you should grant
		// roles/bigquery.admin role to the CES service agent
		// service-<PROJECT-
		// NUMBER>@gcp-sa-ces.iam.gserviceaccount.com.
		project?: string
	})

	_#defs: "/$defs/logging_settings/$defs/cloud_logging_settings": close({
		// Whether to enable Cloud Logging for the sessions.
		enable_cloud_logging?: bool
	})

	_#defs: "/$defs/logging_settings/$defs/conversation_logging_settings": close({
		// Whether to disable conversation logging for the sessions.
		disable_conversation_logging?: bool
	})

	_#defs: "/$defs/logging_settings/$defs/redaction_config": close({
		// [DLP](https://cloud.google.com/dlp/docs) deidentify template
		// name to
		// instruct on how to de-identify content.
		// Format:
		// 'projects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}'
		deidentify_template?: string

		// If true, redaction will be applied in various logging
		// scenarios, including
		// conversation history, Cloud Logging and audio recording.
		enable_redaction?: bool

		// [DLP](https://cloud.google.com/dlp/docs) inspect template name
		// to configure
		// detection of sensitive data types.
		// Format:
		// 'projects/{project}/locations/{location}/inspectTemplates/{inspect_template}'
		inspect_template?: string
	})

	_#defs: "/$defs/variable_declarations/$defs/schema": close({
		// Optional. Defines the schema for additional properties allowed
		// in an object.
		// The value must be a valid JSON string representing the Schema
		// object.
		// (Note: OpenAPI also allows a boolean, this definition expects a
		// Schema JSON).
		additional_properties?: string

		// Optional. The instance value should be valid against at least
		// one of the schemas in this list.
		any_of?: string

		// Optional. Default value of the data. Represents a dynamically
		// typed value
		// which can be either null, a number, a string, a boolean, a
		// struct,
		// or a list of values. The provided default value must be
		// compatible
		// with the defined 'type' and other schema constraints.
		default?: string

		// A map of definitions for use by ref. Only allowed at the root
		// of the schema.
		defs?: string

		// The description of the data.
		description?: string

		// Possible values of the element of primitive type with enum
		// format.
		// Examples:
		// 1. We can define direction as :
		// {type:STRING, format:enum, enum:["EAST", NORTH", "SOUTH",
		// "WEST"]}
		// 2. We can define apartment number as :
		// {type:INTEGER, format:enum, enum:["101", "201", "301"]}
		enum?: [...string]

		// Schema of the elements of Type.ARRAY.
		items?: string

		// Indicates if the value may be null.
		nullable?: bool

		// Optional. Schemas of initial elements of Type.ARRAY.
		prefix_items?: string

		// Properties of Type.OBJECT.
		properties?: string

		// Allows indirect references between schema nodes. The value
		// should be a
		// valid reference to a child of the root 'defs'.
		// For example, the following schema defines a reference to a
		// schema node
		// named "Pet":
		// type: object
		// properties:
		// pet:
		// ref: #/defs/Pet
		// defs:
		// Pet:
		// type: object
		// properties:
		// name:
		// type: string
		// The value of the "pet" property is a reference to the schema
		// node
		// named "Pet".
		// See details in
		// https://json-schema.org/understanding-json-schema/structuring.
		ref?: string

		// Required properties of Type.OBJECT.
		required?: [...string]

		// The title of the schema.
		title?: string

		// The type of the data.
		// Possible values:
		// STRING
		// INTEGER
		// NUMBER
		// BOOLEAN
		// OBJECT
		// ARRAY
		type!: string

		// Indicate the items in the array must be unique. Only applies to
		// TYPE.ARRAY.
		unique_items?: bool
	})
}
