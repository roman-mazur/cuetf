package data

#github_repository_pull_requests: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository_pull_requests")
	close({
		base_ref?:        string
		base_repository!: string
		head_ref?:        string
		id?:              string
		owner?:           string
		results?: [...close({
			base_ref?:        string
			base_sha?:        string
			body?:            string
			draft?:           bool
			head_owner?:      string
			head_ref?:        string
			head_repository?: string
			head_sha?:        string
			labels?: [...string]
			maintainer_can_modify?: bool
			"number"?:              number
			opened_at?:             number
			opened_by?:             string
			state?:                 string
			title?:                 string
			updated_at?:            number
		})]
		sort_by?:        string
		sort_direction?: string
		state?:          string
	})
}
