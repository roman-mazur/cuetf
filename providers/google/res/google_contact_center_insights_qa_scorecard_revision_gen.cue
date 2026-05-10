package res

#google_contact_center_insights_qa_scorecard_revision: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_contact_center_insights_qa_scorecard_revision")
	close({
		timeouts?: #timeouts

		// Alternative IDs for this revision of the scorecard, e.g.,
		// 'latest'.
		alternate_ids?: [...string]

		// The timestamp that the revision was created.
		create_time?: string
		id?:          string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the scorecard revision.
		// Format:
		// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}
		name?:    string
		project?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		qa_scorecard!: string

		// A unique ID for the new QaScorecardRevision. This ID will
		// become the final
		// component of the QaScorecardRevision's resource name.
		// If no ID is specified this resource will get the latest
		// revision on the given scorecard.
		qa_scorecard_revision_id?: string

		// A QaScorecard represents a collection of questions to be scored
		// during
		// analysis.
		snapshot?: [...close({
			create_time?:  string
			description?:  string
			display_name?: string
			is_default?:   bool
			name?:         string
			source?:       string
			update_time?:  string
		})]

		// State of the scorecard revision, indicating whether it's ready
		// to
		// be used in analysis.
		// Possible values:
		// EDITABLE
		// TRAINING
		// TRAINING_FAILED
		// READY
		// DELETING
		// TRAINING_CANCELLED
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
