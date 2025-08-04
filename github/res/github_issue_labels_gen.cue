package res

#github_issue_labels: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_issue_labels")
	close({
		label?: matchN(1, [#label, [...#label]])
		id?:         string
		repository!: string
	})

	#label: close({
		color!:       string
		description?: string
		name!:        string
		url?:         string
	})
}
