package res

#github_issue_labels: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_issue_labels")
	id?:         string
	repository!: string
	label?: #label | [...#label]

	#label: {
		color!:       string
		description?: string
		name!:        string
		url?:         string
	}
}
