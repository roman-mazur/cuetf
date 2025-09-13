package res

#github_issue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_issue")
	close({
		// List of Logins to assign to the issue.
		assignees?: [...string]

		// Body of the issue.
		body?: string

		// The issue id.
		issue_id?: number
		etag?:     string

		// List of labels to attach to the issue.
		labels?: [...string]
		id?: string

		// Milestone number to assign to the issue.
		milestone_number?: number

		// The issue number.
		"number"?: number

		// The GitHub repository name.
		repository!: string

		// Title of the issue.
		title!: string
	})
}
