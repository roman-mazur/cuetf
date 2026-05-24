package res

#google_contact_center_insights_qa_scorecard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_contact_center_insights_qa_scorecard")
	close({
		timeouts?: #timeouts

		// The time at which this scorecard was created.
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

		// A text description explaining the intent of the scorecard.
		description?: string

		// The user-specified display name of the scorecard.
		display_name?: string
		id?:           string

		// Whether the scorecard is the default one for the project.
		// A default scorecard cannot be deleted and will always appear
		// first in
		// scorecard selector.
		is_default?: bool

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The scorecard name.
		// Format:
		// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
		name?:    string
		project?: string

		// A unique ID for the new QaScorecard. This ID will become the
		// final
		// component of the QaScorecard's resource name. If no ID is
		// specified, a
		// server-generated ID will be used.
		//
		// This value should be 4-64 characters and must match the regular
		// expression '^[a-z0-9-]{4,64}$'. Valid characters are 'a-z-'.
		qa_scorecard_id!: string

		// Possible values:
		// QA_SCORECARD_SOURCE_CUSTOMER_DEFINED
		// QA_SCORECARD_SOURCE_DISCOVERY_ENGINE
		source?: string

		// The most recent time at which the scorecard was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
