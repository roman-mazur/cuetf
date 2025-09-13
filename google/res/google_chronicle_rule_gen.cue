package res

#google_chronicle_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_chronicle_rule")
	close({
		// Output only. The run frequencies that are allowed for the rule.
		// Populated in BASIC view and FULL view.
		allowed_run_frequencies?: [...string]

		// Output only. The author of the rule. Extracted from the meta
		// section of text.
		// Populated in BASIC view and FULL view.
		author?: string

		// Output only. A list of a rule's corresponding compilation
		// diagnostic messages
		// such as compilation errors and compilation warnings.
		// Populated in FULL view.
		compilation_diagnostics?: [...close({
			message?: string
			position?: [...close({
				end_column?:   number
				end_line?:     number
				start_column?: number
				start_line?:   number
			})]
			severity?: string
			uri?:      string
		})]

		// Output only. The current compilation state of the rule.
		// Populated in FULL view.
		// Possible values:
		// COMPILATION_STATE_UNSPECIFIED
		// SUCCEEDED
		// FAILED
		compilation_state?: string

		// Output only. The timestamp of when the rule was created.
		// Populated in FULL view.
		create_time?: string

		// Output only. Resource names of the data tables used in this
		// rule.
		data_tables?: [...string]

		// Policy to determine if the rule should be deleted forcefully.
		// If deletion_policy = "FORCE", any retrohunts and any detections
		// associated with the rule
		// will also be deleted. If deletion_policy = "DEFAULT", the call
		// will only succeed if the
		// rule has no associated retrohunts, including completed
		// retrohunts, and no
		// associated detections. Regardless of this field's value, the
		// rule
		// deployment associated with this rule will also be deleted.
		// Possible values: DEFAULT, FORCE
		deletion_policy?: string

		// Output only. Display name of the rule.
		// Populated in BASIC view and FULL view.
		display_name?: string

		// The etag for this rule.
		// If this is provided on update, the request will succeed if and
		// only if it
		// matches the server-computed value, and will fail with an
		// ABORTED error
		// otherwise.
		// Populated in BASIC view and FULL view.
		etag?: string

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string
		id?:       string

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string

		// Output only. Additional metadata specified in the meta section
		// of text.
		// Populated in FULL view.
		metadata?: [string]: string

		// Full resource name for the rule. This unique identifier is
		// generated using values provided for the URL parameters.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
		name?:     string
		timeouts?: #timeouts

		// Output only. Indicate the rule can run in near real time live
		// rule.
		// If this is true, the rule uses the near real time live rule
		// when the run
		// frequency is set to LIVE.
		near_real_time_live_rule_eligible?: bool
		project?:                           string

		// Output only. Resource names of the reference lists used in this
		// rule.
		// Populated in FULL view.
		reference_lists?: [...string]

		// Output only. The timestamp of when the rule revision was
		// created.
		// Populated in FULL, REVISION_METADATA_ONLY views.
		revision_create_time?: string

		// Output only. The revision ID of the rule.
		// A new revision is created whenever the rule text is changed in
		// any way.
		// Format: v_{10 digits}_{9 digits}
		// Populated in REVISION_METADATA_ONLY view and FULL view.
		revision_id?: string

		// Rule Id is the ID of the Rule.
		rule_id?: string

		// Resource name of the DataAccessScope bound to this rule.
		// Populated in BASIC view and FULL view.
		// If reference lists are used in the rule, validations will be
		// performed
		// against this scope to ensure that the reference lists are
		// compatible with
		// both the user's and the rule's scopes.
		// The scope should be in the format:
		// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
		scope?: string

		// Severity represents the severity level of the rule.
		severity?: [...close({
			display_name?: string
		})]

		// The YARA-L content of the rule.
		// Populated in FULL view.
		text?: string

		// Possible values:
		// RULE_TYPE_UNSPECIFIED
		// SINGLE_EVENT
		// MULTI_EVENT
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
