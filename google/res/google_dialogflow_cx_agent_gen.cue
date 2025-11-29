package res

import "list"

#google_dialogflow_cx_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_cx_agent")
	close({
		// The URI of the agent's avatar. Avatars are used throughout the
		// Dialogflow console and in the self-hosted Web Demo
		// integration.
		avatar_uri?: string
		advanced_settings?: matchN(1, [#advanced_settings, list.MaxItems(1) & [...#advanced_settings]])

		// The default language of the agent as a language tag. [See
		// Language
		// Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
		// for a list of the currently supported language codes. This
		// field cannot be updated after creation.
		default_language_code!: string

		// If set to 'true', Terraform will delete the chat engine
		// associated with the agent when the agent is destroyed.
		// Otherwise, the chat engine will persist.
		//
		// This virtual field addresses a critical dependency chain:
		// 'agent' -> 'engine' -> 'data store'. The chat engine is
		// automatically
		// provisioned when a data store is linked to the agent, meaning
		// Terraform doesn't have direct control over its lifecycle as a
		// managed
		// resource. This creates a problem when both the agent and data
		// store are managed by Terraform and need to be destroyed.
		// Without
		// delete_chat_engine_on_destroy set to true, the data store's
		// deletion would fail because the unmanaged chat engine would
		// still be
		// using it. This setting ensures that the entire dependency chain
		// can be properly torn down.
		// See
		// 'mmv1/templates/terraform/examples/dialogflowcx_tool_data_store.tf.tmpl'
		// as an example.
		//
		// Data store can be linked to an agent through the
		// 'knowledgeConnectorSettings' field of a
		// [flow](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows#resource:-flow)
		// or a
		// [page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#resource:-page)
		// or the 'dataStoreSpec' field of a
		// [tool](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#resource:-tool).
		// The ID of the implicitly created engine is stored in the
		// 'genAppBuilderSettings' field of the
		// [agent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#resource:-agent).
		delete_chat_engine_on_destroy?: bool

		// The description of this agent. The maximum length is 500
		// characters. If exceeded, the request is rejected.
		description?: string

		// The human-readable name of the agent, unique within the
		// location.
		display_name!: string

		// Enable training multi-lingual models for this agent. These
		// models will be trained on all the languages supported by the
		// agent.
		enable_multi_language_training?: bool

		// Indicates if automatic spell correction is enabled in detect
		// intent requests.
		enable_spell_correction?: bool
		id?:                      string

		// The name of the location this agent is located in.
		//
		// ~> **Note:** The first time you are deploying an Agent in your
		// project you must configure location settings.
		// This is a one time step but at the moment you can only
		// [configure location
		// settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings)
		// via the Dialogflow CX console.
		// Another options is to use global location so you don't need to
		// manually configure location settings.
		location!: string

		// Indicates whether the agent is locked for changes. If the agent
		// is locked, modifications to the agent will be rejected except
		// for [agents.restore][].
		locked?: bool

		// The unique identifier of the agent.
		name?:    string
		project?: string
		answer_feedback_settings?: matchN(1, [#answer_feedback_settings, list.MaxItems(1) & [...#answer_feedback_settings]])

		// A read only boolean field reflecting Zone Isolation status of
		// the agent.
		satisfies_pzi?: bool
		client_certificate_settings?: matchN(1, [#client_certificate_settings, list.MaxItems(1) & [...#client_certificate_settings]])
		gen_app_builder_settings?: matchN(1, [#gen_app_builder_settings, list.MaxItems(1) & [...#gen_app_builder_settings]])
		git_integration_settings?: matchN(1, [#git_integration_settings, list.MaxItems(1) & [...#git_integration_settings]])
		personalization_settings?: matchN(1, [#personalization_settings, list.MaxItems(1) & [...#personalization_settings]])
		speech_to_text_settings?: matchN(1, [#speech_to_text_settings, list.MaxItems(1) & [...#speech_to_text_settings]])
		text_to_speech_settings?: matchN(1, [#text_to_speech_settings, list.MaxItems(1) & [...#text_to_speech_settings]])
		timeouts?: #timeouts

		// A read only boolean field reflecting Zone Separation status of
		// the agent.
		satisfies_pzs?: bool

		// Name of the SecuritySettings reference for the agent. Format:
		// projects/<Project ID>/locations/<Location
		// ID>/securitySettings/<Security Settings ID>.
		security_settings?: string

		// Name of the start flow in this agent. A start flow will be
		// automatically created when the agent is created, and can only
		// be deleted by deleting the agent. Format: projects/<Project
		// ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
		start_flow?: string

		// Name of the start playbook in this agent. A start playbook will
		// be automatically created when the agent is created, and can
		// only be deleted by deleting the agent. Format:
		// **projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/playbooks/<PlaybookID>**.
		// Currently only the default playbook with id
		// "00000000-0000-0000-0000-000000000000" is allowed.
		start_playbook?: string

		// The list of all languages supported by this agent (except for
		// the default_language_code).
		supported_language_codes?: [...string]

		// The time zone of this agent from the [time zone
		// database](https://www.iana.org/time-zones), e.g.,
		// America/New_York,
		// Europe/Paris.
		time_zone!: string
	})

	#advanced_settings: close({
		audio_export_gcs_destination?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/audio_export_gcs_destination", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/audio_export_gcs_destination"]])
		dtmf_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/dtmf_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/dtmf_settings"]])
		logging_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/logging_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/logging_settings"]])
		speech_settings?: matchN(1, [_#defs."/$defs/advanced_settings/$defs/speech_settings", list.MaxItems(1) & [..._#defs."/$defs/advanced_settings/$defs/speech_settings"]])
	})

	#answer_feedback_settings: close({
		// If enabled, end users will be able to provide [answer
		// feedback](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/submitAnswerFeedback#body.AnswerFeedback)
		// to Dialogflow responses. Feature works only if interaction
		// logging is enabled in the Dialogflow agent.
		enable_answer_feedback?: bool
	})

	#client_certificate_settings: close({
		// The name of the SecretManager secret version resource storing
		// the passphrase. 'passphrase' should be left unset if the
		// private key is not encrypted. Format:
		// **projects/{project}/secrets/{secret}/versions/{version}**
		passphrase?: string

		// The name of the SecretManager secret version resource storing
		// the private key encoded in PEM format. Format:
		// **projects/{project}/secrets/{secret}/versions/{version}**
		private_key!: string

		// The ssl certificate encoded in PEM format. This string must
		// include the begin header and end footer lines.
		ssl_certificate!: string
	})

	#gen_app_builder_settings: close({
		// The full name of the Gen App Builder engine related to this
		// agent if there is one.
		// Format: projects/{Project ID}/locations/{Location
		// ID}/collections/{Collection ID}/engines/{Engine ID}
		engine!: string
	})

	#git_integration_settings: close({
		github_settings?: matchN(1, [_#defs."/$defs/git_integration_settings/$defs/github_settings", list.MaxItems(1) & [..._#defs."/$defs/git_integration_settings/$defs/github_settings"]])
	})

	#personalization_settings: close({
		// Default end user metadata, used when processing DetectIntent
		// requests. Recommended to be filled as a template instead of
		// hard-coded value, for example { "age": "$session.params.age"
		// }.
		// The data will be merged with the
		// [QueryParameters.end_user_metadata](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/QueryParameters#FIELDS.end_user_metadata)
		// in
		// [DetectIntentRequest.query_params](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/detectIntent#body.request_body.FIELDS.query_params)
		// during query processing.
		//
		// This field uses JSON data as a string. The value provided must
		// be a valid JSON representation documented in
		// [Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct).
		default_end_user_metadata?: string
	})

	#speech_to_text_settings: close({
		// Whether to use speech adaptation for speech recognition.
		enable_speech_adaptation?: bool
	})

	#text_to_speech_settings: close({
		// Configuration of how speech should be synthesized, mapping from
		// [language](https://cloud.google.com/dialogflow/cx/docs/reference/language)
		// to
		// [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
		// These settings affect:
		// * The phone gateway synthesize configuration set via
		// Agent.text_to_speech_settings.
		// * How speech is synthesized when invoking session APIs.
		// 'Agent.text_to_speech_settings' only applies if
		// 'OutputAudioConfig.synthesize_speech_config' is not specified.
		synthesize_speech_configs?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
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

	_#defs: "/$defs/git_integration_settings/$defs/github_settings": close({
		// The access token used to authenticate the access to the GitHub
		// repository.
		access_token?: string

		// A list of branches configured to be used from Dialogflow.
		branches?: [...string]

		// The unique repository display name for the GitHub repository.
		display_name?: string

		// The GitHub repository URI related to the agent.
		repository_uri?: string

		// The branch of the GitHub repository tracked for this agent.
		tracking_branch?: string
	})
}
