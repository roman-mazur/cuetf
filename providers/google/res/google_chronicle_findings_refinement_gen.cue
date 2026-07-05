package res

google_chronicle_findings_refinement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_findings_refinement")
	close({
		outcome_filters?: matchN(1, [#outcome_filters, [...#outcome_filters]])
		timeouts?: #timeouts

		// The timestamp of when the findings refinement was created.
		create_time?: string

		// Display name of the findings refinement.
		display_name?: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Full resource name for the findings refinement.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/findingsRefinements/{findings_refinement}
		name?: string

		// The query for the findings refinement. Works in conjunction with the type
		// field to determine the findings refinement behavior. The syntax of this
		// query is the same as a UDM search string. See the following for more
		// information:
		// https://cloud.google.com/chronicle/docs/investigation/udm-search
		query?:   string
		project?: string

		// DETECTION_EXCLUSION is the only supported type of findings refinement.
		// Possible values:
		// DETECTION_EXCLUSION
		type?: string

		// The timestamp of when the findings refinement was last updated.
		update_time?: string
	})

	#outcome_filters: close({
		// The operator to be applied to the outcome variable.
		// Possible values:
		// EQUAL
		// CONTAINS
		// MATCHES_REGEX
		// MATCHES_CIDR
		outcome_filter_operator!: string

		// The value of the outcome variable to match.
		outcome_value!: string

		// The outcome variable name.
		outcome_variable!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
