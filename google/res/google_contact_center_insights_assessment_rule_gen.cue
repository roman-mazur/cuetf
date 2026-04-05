package res

import "list"

#google_contact_center_insights_assessment_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_contact_center_insights_assessment_rule")
	close({
		sample_rule?: matchN(1, [#sample_rule, list.MaxItems(1) & [...#sample_rule]])
		schedule_info?: matchN(1, [#schedule_info, list.MaxItems(1) & [...#schedule_info]])
		timeouts?: #timeouts

		// If true, apply this rule to conversations. Otherwise, this rule
		// is
		// inactive.
		active?: bool

		// A unique ID for the new AssessmentRule. This ID will become the
		// final
		// component of the AssessmentRule's resource name. If no ID is
		// specified,
		// a server-generated ID will be used.
		//
		// This value should be 4-64 characters and must match the regular
		// expression '^[A-Za-z0-9]{4,64}$'.
		assessment_rule_id?: string

		// The time at which this assessment rule was created.
		create_time?: string

		// Display Name of the assessment rule.
		display_name?: string
		id?:           string

		// Location of the resource.
		location!: string

		// Identifier. The resource name of the assessment rule.
		// Format:
		// projects/{project}/locations/{location}/assessmentRules/{assessment_rule}
		name?:    string
		project?: string

		// The most recent time at which this assessment rule was updated.
		update_time?: string
	})

	#sample_rule: close({
		// To specify the filter for the conversions that should apply
		// this sample
		// rule. An empty filter means this sample rule applies to all
		// conversations.
		conversation_filter?: string

		// Group by dimension to sample the conversation. If no dimension
		// is
		// provided, the sampling will be applied to the project level.
		// Current supported dimensions is
		// 'quality_metadata.agent_info.agent_id'.
		dimension?: string

		// Percentage of conversations that we should sample based on the
		// dimension
		// between [0, 100].
		sample_percentage?: number

		// Number of the conversations that we should sample based on the
		// dimension.
		sample_row?: number
	})

	#schedule_info: close({
		// End time of the schedule. If not specified, will keep
		// scheduling new
		// pipelines for execution until the schedule is no longer active
		// or deleted.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		end_time?: string

		// The groc expression.
		// Format: 'every number [synchronized]'
		// Cron syntax is not supported.
		// Time units can be: minutes, hours
		// Synchronized is optional and indicates that the schedule should
		// be
		// synchronized to the start of the interval: every 5 minutes
		// synchronized
		// means 00:00, 00:05 ...
		// Otherwise the start time is random within the interval.
		// Example: 'every 5 minutes'
		// could be 00:02, 00:07, 00:12, ...
		schedule?: string

		// Start time of the schedule. If not specified, will start as
		// soon as the
		// schedule is created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		start_time?: string

		// The timezone to use for the groc expression.
		// If not specified, defaults to UTC.
		time_zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
