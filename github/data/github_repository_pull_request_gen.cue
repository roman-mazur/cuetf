package data

#github_repository_pull_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_pull_request")
	close({
		base_ref?:        string
		base_repository!: string
		base_sha?:        string
		body?:            string
		draft?:           bool
		head_owner?:      string
		head_ref?:        string
		head_repository?: string
		head_sha?:        string
		id?:              string
		labels?: [...string]
		maintainer_can_modify?: bool
		"number"!:              number
		opened_at?:             number
		opened_by?:             string
		owner?:                 string
		state?:                 string
		title?:                 string
		updated_at?:            number
	})
}
