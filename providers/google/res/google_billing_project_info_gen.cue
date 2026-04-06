package res

#google_billing_project_info: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_billing_project_info")
	close({
		timeouts?: #timeouts

		// The ID of the billing account associated with the project, if
		// any. Set to empty string to disable billing for the project.
		// For example, '"012345-567890-ABCDEF"' or '""'.
		billing_account!: string
		id?:              string
		project?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
