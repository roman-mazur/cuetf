package res

import "list"

#google_ces_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_ces_deployment")
	close({
		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		app!: string

		// The resource name of the app version to deploy.
		// Format:
		// projects/{project}/locations/{location}/apps/{app}/versions/{version}
		app_version!: string

		// Timestamp when this deployment was created.
		create_time?: string

		// Display name of the deployment.
		display_name!: string

		// Etag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string
		id?:   string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		channel_profile!: matchN(1, [#channel_profile, list.MaxItems(1) & [_, ...] & [...#channel_profile]])
		timeouts?: #timeouts

		// Identifier. The resource name of the deployment.
		// Format:
		// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
		name?:    string
		project?: string

		// Timestamp when this deployment was last updated.
		update_time?: string
	})

	#channel_profile: close({
		// The type of the channel profile.
		// Possible values:
		// UNKNOWN
		// WEB_UI
		// API
		// TWILIO
		// GOOGLE_TELEPHONY_PLATFORM
		// CONTACT_CENTER_AS_A_SERVICE
		channel_type?: string

		// Whether to disable user barge-in control in the conversation.
		// - **true**: User interruptions are disabled while the agent is
		// speaking.
		// - **false**: The agent retains automatic control over when the
		// user can
		// interrupt.
		disable_barge_in_control?: bool

		// Whether to disable DTMF (dual-tone multi-frequency).
		disable_dtmf?: bool

		// The unique identifier of the channel profile.
		profile_id?: string
		persona_property?: matchN(1, [_#defs."/$defs/channel_profile/$defs/persona_property", list.MaxItems(1) & [..._#defs."/$defs/channel_profile/$defs/persona_property"]])
		web_widget_config?: matchN(1, [_#defs."/$defs/channel_profile/$defs/web_widget_config", list.MaxItems(1) & [..._#defs."/$defs/channel_profile/$defs/web_widget_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/channel_profile/$defs/persona_property": close({
		// The persona of the channel.
		// Possible values:
		// UNKNOWN
		// CONCISE
		// CHATTY
		persona?: string
	})

	_#defs: "/$defs/channel_profile/$defs/web_widget_config": close({
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
}
