package data

#github_team: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_team")
	description?: string
	id?:          string
	members?: [...string]
	membership_type?: string
	name?:            string
	node_id?:         string
	permission?:      string
	privacy?:         string
	repositories?: [...string]
	repositories_detailed?: [...{
		repo_id?:   number
		role_name?: string
	}]
	results_per_page?: number
	slug!:             string
	summary_only?:     bool
}
