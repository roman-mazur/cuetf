package data

#github_repositories: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_repositories")
	full_names?: [...string]
	id?:              string
	include_repo_id?: bool
	names?: [...string]
	query: string
	repo_ids?: [...number]
	results_per_page?: number
	sort?:             string
}
