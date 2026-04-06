package data

#github_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repositories")
	close({
		full_names?: [...string]
		id?:              string
		include_repo_id?: bool
		names?: [...string]
		query!: string
		repo_ids?: [...number]
		results_per_page?: number
		sort?:             string
	})
}
