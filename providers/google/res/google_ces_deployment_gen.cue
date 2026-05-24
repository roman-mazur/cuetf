package res

import "list"

#google_ces_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_deployment")
	close({
		channel_profile!: matchN(1, [#channel_profile, list.MaxItems(1) & [_, ...] & [...#channel_profile]])
		timeouts?: #timeouts

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

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

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

		// Identifier. The resource name of the deployment.
		// Format:
		// projects/{project}/locations/{location}/apps/{app}/deployments/{deployment}
		name?:    string
		project?: string

		// Timestamp when this deployment was last updated.
		update_time?: string
	})

	#channel_profile: close({
		persona_property?: matchN(1, [_#defs."/$defs/channel_profile/$defs/persona_property", list.MaxItems(1) & [..._#defs."/$defs/channel_profile/$defs/persona_property"]])
		web_widget_config?: matchN(1, [_#defs."/$defs/channel_profile/$defs/web_widget_config", list.MaxItems(1) & [..._#defs."/$defs/channel_profile/$defs/web_widget_config"]])

		// The type of the channel profile.
		// Possible values:
		// UNKNOWN
		// WEB_UI
		// API
		// TWILIO
		// GOOGLE_TELEPHONY_PLATFORM
		// CONTACT_CENTER_AS_A_SERVICE
		// FIVE9
		// CONTACT_CENTER_INTEGRATION
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
		security_settings?: matchN(1, [_#defs."/$defs/channel_profile/$defs/web_widget_config/$defs/security_settings", list.MaxItems(1) & [..._#defs."/$defs/channel_profile/$defs/web_widget_config/$defs/security_settings"]])

		// The modality of the web widget.
		// Possible values:
		// MODALITY_UNSPECIFIED
		// CHAT_AND_VOICE
		// VOICE_ONLY
		// CHAT_ONLY
		// CHAT_VOICE_AND_VIDEO
		modality?: string

		// The theme of the web widget.
		// Possible values:
		// THEME_UNSPECIFIED
		// LIGHT
		// DARK
		theme?: string

		// The title of the web widget.
		web_widget_title?: string
	})

	_#defs: "/$defs/channel_profile/$defs/web_widget_config/$defs/security_settings": close({
		// The origins that are allowed to host the web widget. An origin
		// is defined by RFC 6454. If empty, all origins are allowed. A
		// maximum of 100 origins is allowed. Example:
		// "https://example.com"
		allowed_origins?: [...string]

		// Indicates whether origin check for the web widget is enabled.
		// If true, the web widget will check the origin of the website
		// that loads the web widget and only allow it to be loaded in
		// the same origin or any of the allowed origins.
		enable_origin_check?: bool

		// Indicates whether public access to the web widget is enabled.
		// If true, the web widget will be publicly accessible. If false,
		// the web widget must be integrated with your own authentication
		// and authorization system to return valid credentials for
		// accessing the CES agent.
		enable_public_access?: bool

		// Indicates whether reCAPTCHA verification for the web widget is
		// enabled.
		enable_recaptcha?: bool
	})
}
