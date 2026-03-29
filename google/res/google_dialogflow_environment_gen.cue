package res

import "list"

#google_dialogflow_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_environment")
	close({
		fulfillment?: matchN(1, [#fulfillment, list.MaxItems(1) & [...#fulfillment]])
		text_to_speech_settings?: matchN(1, [#text_to_speech_settings, list.MaxItems(1) & [...#text_to_speech_settings]])
		timeouts?: #timeouts

		// The agent version loaded into this environment. Supported
		// formats:
		// - projects/<Project ID>/agent/versions/<Version ID>
		// - projects/<Project ID>/locations/<Location
		// ID>/agent/versions/<Version ID>
		agent_version?: string

		// The developer-provided description for this environment.
		description?:   string
		environmentid!: string
		id?:            string
		location?:      string

		// The unique identifier of this agent environment.
		name?:    string
		project?: string

		// The state of this environment.
		state?: string
	})

	#fulfillment: close({
		features?: matchN(1, [_#defs."/$defs/fulfillment/$defs/features", [..._#defs."/$defs/fulfillment/$defs/features"]])
		generic_web_service?: matchN(1, [_#defs."/$defs/fulfillment/$defs/generic_web_service", list.MaxItems(1) & [..._#defs."/$defs/fulfillment/$defs/generic_web_service"]])

		// The human-readable name of the fulfillment, unique within the
		// agent.
		display_name?: string

		// The unique identifier of the fulfillment. Supports the
		// following formats:
		// - projects/<Project ID>/agent/fulfillment
		// - projects/<Project ID>/locations/<Location
		// ID>/agent/fulfillment
		name?: string
	})

	#text_to_speech_settings: close({
		synthesize_speech_configs?: matchN(1, [_#defs."/$defs/text_to_speech_settings/$defs/synthesize_speech_configs", [..._#defs."/$defs/text_to_speech_settings/$defs/synthesize_speech_configs"]])

		// Indicates whether text to speech is enabled. Even when this
		// field is false, other settings in this proto are still
		// retained.
		enable_text_to_speech?: bool

		// Audio encoding of the synthesized audio content. Possible
		// values: ["OUTPUT_AUDIO_ENCODING_UNSPECIFIED",
		// "OUTPUT_AUDIO_ENCODING_LINEAR_16",
		// "OUTPUT_AUDIO_ENCODING_MP3",
		// "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS",
		// "OUTPUT_AUDIO_ENCODING_OGG_OPUS",
		// "OUTPUT_AUDIO_ENCODING_MULAW", "OUTPUT_AUDIO_ENCODING_ALAW"]
		output_audio_encoding?: string

		// The synthesis sample rate (in hertz) for this audio.
		sample_rate_hertz?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/fulfillment/$defs/features": close({
		// The type of the feature that enabled for fulfillment. Possible
		// values: ["TYPE_UNSPECIFIED", "SMALLTALK"]
		type!: string
	})

	_#defs: "/$defs/fulfillment/$defs/generic_web_service": close({
		// The password for HTTP Basic authentication.
		password?: string

		// The HTTP request headers to send together with fulfillment
		// requests
		request_headers?: [string]: string

		// The fulfillment URI for receiving POST requests. It must use
		// https protocol.
		uri!: string

		// The user name for HTTP Basic authentication.
		username?: string
	})

	_#defs: "/$defs/text_to_speech_settings/$defs/synthesize_speech_configs": close({
		voice?: matchN(1, [_#defs."/$defs/text_to_speech_settings/$defs/synthesize_speech_configs/$defs/voice", list.MaxItems(1) & [..._#defs."/$defs/text_to_speech_settings/$defs/synthesize_speech_configs/$defs/voice"]])

		// An identifier which selects 'audio effects' profiles that are
		// applied on (post synthesized) text to speech. Effects are
		// applied on top of each other in the order they are given.
		effects_profile_id?: [...string]
		language!: string

		// Speaking pitch, in the range [-20.0, 20.0]. 20 means increase
		// 20 semitones from the original pitch. -20 means decrease 20
		// semitones from the original pitch.
		pitch?: number

		// Speaking rate/speed, in the range [0.25, 4.0].
		speaking_rate?: number

		// Volume gain (in dB) of the normal native volume supported by
		// the specific voice.
		volume_gain_db?: number
	})

	_#defs: "/$defs/text_to_speech_settings/$defs/synthesize_speech_configs/$defs/voice": close({
		// The name of the voice.
		name?: string

		// The preferred gender of the voice. Possible values:
		// ["SSML_VOICE_GENDER_UNSPECIFIED", "SSML_VOICE_GENDER_MALE",
		// "SSML_VOICE_GENDER_FEMALE", "SSML_VOICE_GENDER_NEUTRAL"]
		ssml_gender?: string
	})
}
