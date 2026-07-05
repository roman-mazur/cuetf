package data

google_storage_control_organization_intelligence_findings_summary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_control_organization_intelligence_findings_summary")
	close({
		// The filter expression. Supports filtering by FindingType.
		filter?: string

		// A list of summaries for individual finding types.
		finding_summaries?: [...close({
			category?:    string
			create_time?: string
			severity?:    string
			summary_details?: [...close({
				count?:         string
				description?:   string
				percentage?:    number
				resource_type?: string
			})]
			target_resource?: string
			type?:            string
			update_time?:     string
		})]
		id?: string

		// The location of the intelligence findings summary. Currently default value is
		// global and users cannot use for input for now.
		location?: string

		// The ID of the Google Cloud Organization.
		organization!: string

		// Determines the granularity of the findings when the parent is an organization
		// or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
		resource_scope?: string
	})
}
