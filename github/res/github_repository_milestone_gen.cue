package res

#github_repository_milestone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_milestone")
	close({
		// A description of the milestone.
		description?: string

		// The milestone due date. In 'yyyy-mm-dd' format.
		due_date?: string

		// The number of the milestone.
		"number"?: number

		// The owner of the GitHub Repository.
		owner!: string

		// The name of the GitHub Repository.
		repository!: string
		id?:         string

		// The state of the milestone. Either 'open' or 'closed'. Default:
		// 'open'.
		state?: string

		// The title of the milestone.
		title!: string
	})
}
