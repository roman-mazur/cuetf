package res

#github_project_card: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_project_card")
	close({
		// The ID of the card.
		card_id?: number

		// The ID of the project column.
		column_id!: string

		// 'github_issue.issue_id'.
		content_id?: number

		// Must be either 'Issue' or 'PullRequest'.
		content_type?: string
		etag?:         string
		id?:           string

		// The note contents of the card. Markdown supported.
		note?: string
	})
}
