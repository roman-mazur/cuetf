package res

#github_issue_labels: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_issue_labels")
	close({
		label?: matchN(1, [#label, [...#label]])
		id?: string

		// The GitHub repository.
		repository!: string
	})

	#label: close({
		// A 6 character hex code, without the leading '#', identifying
		// the color of the label.
		color!: string

		// A short description of the label.
		description?: string

		// The name of the label.
		name!: string

		// The URL to the issue label.
		url?: string
	})
}
