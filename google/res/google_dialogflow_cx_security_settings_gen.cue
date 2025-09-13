package res

import "list"

#google_dialogflow_cx_security_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_security_settings")
	close({
		// [DLP](https://cloud.google.com/dlp/docs) deidentify template
		// name. Use this template to define de-identification
		// configuration for the content. If empty, Dialogflow replaces
		// sensitive info with [redacted] text.
		// Note: deidentifyTemplate must be located in the same region as
		// the SecuritySettings.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/deidentifyTemplates/<Template ID> OR
		// organizations/<Organization ID>/locations/<Location
		// ID>/deidentifyTemplates/<Template ID>
		deidentify_template?: string

		// The human-readable name of the security settings, unique within
		// the location.
		display_name!: string
		id?:           string

		// [DLP](https://cloud.google.com/dlp/docs) inspect template name.
		// Use this template to define inspect base settings. If empty,
		// we use the default DLP inspect config.
		// Note: inspectTemplate must be located in the same region as the
		// SecuritySettings.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/inspectTemplates/<Template ID> OR
		// organizations/<Organization ID>/locations/<Location
		// ID>/inspectTemplates/<Template ID>
		inspect_template?: string

		// The location these settings are located in. Settings can only
		// be applied to an agent in the same location.
		// See [Available
		// Regions](https://cloud.google.com/dialogflow/cx/docs/concept/region#avail)
		// for a list of supported locations.
		location!: string

		// The unique identifier of the settings.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/securitySettings/<Security Settings ID>.
		name?:    string
		project?: string

		// List of types of data to remove when retention settings
		// triggers purge. Possible values: ["DIALOGFLOW_HISTORY"]
		purge_data_types?: [...string]

		// Defines what types of data to redact. If not set, defaults to
		// not redacting any kind of data.
		// * REDACT_DISK_STORAGE: On data to be written to disk or similar
		// devices that are capable of holding data even if power is
		// disconnected. This includes data that are temporarily saved on
		// disk. Possible values: ["REDACT_DISK_STORAGE"]
		redaction_scope?: string
		audio_export_settings?: matchN(1, [#audio_export_settings, list.MaxItems(1) & [...#audio_export_settings]])
		insights_export_settings?: matchN(1, [#insights_export_settings, list.MaxItems(1) & [...#insights_export_settings]])
		timeouts?: #timeouts

		// Defines how we redact data. If not set, defaults to not
		// redacting.
		// * REDACT_WITH_SERVICE: Call redaction service to clean up the
		// data to be persisted. Possible values: ["REDACT_WITH_SERVICE"]
		redaction_strategy?: string

		// Defines how long we retain persisted data that contains
		// sensitive info. Only one of 'retention_window_days' and
		// 'retention_strategy' may be set.
		// * REMOVE_AFTER_CONVERSATION: Removes data when the conversation
		// ends. If there is no conversation explicitly established, a
		// default conversation ends when the corresponding Dialogflow
		// session ends. Possible values: ["REMOVE_AFTER_CONVERSATION"]
		retention_strategy?: string

		// Retains the data for the specified number of days. User must
		// set a value lower than Dialogflow's default 365d TTL (30 days
		// for Agent Assist traffic), higher value will be ignored and
		// use default. Setting a value higher than that has no effect. A
		// missing value or setting to 0 also means we use default TTL.
		// Only one of 'retention_window_days' and 'retention_strategy'
		// may be set.
		retention_window_days?: number
	})

	#audio_export_settings: close({
		// Filename pattern for exported audio.
		audio_export_pattern?: string

		// File format for exported audio file. Currently only in
		// telephony recordings.
		// * MULAW: G.711 mu-law PCM with 8kHz sample rate.
		// * MP3: MP3 file format.
		// * OGG: OGG Vorbis. Possible values: ["MULAW", "MP3", "OGG"]
		audio_format?: string

		// Enable audio redaction if it is true.
		enable_audio_redaction?: bool

		// Cloud Storage bucket to export audio record to. Setting this
		// field would grant the Storage Object Creator role to the
		// Dialogflow Service Agent. API caller that tries to modify this
		// field should have the permission of
		// storage.buckets.setIamPolicy.
		gcs_bucket?: string
	})

	#insights_export_settings: close({
		// If enabled, we will automatically exports conversations to
		// Insights and Insights runs its analyzers.
		enable_insights_export!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
