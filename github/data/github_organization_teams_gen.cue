package data

#github_organization_teams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_organization_teams")
	id?:               string
	results_per_page?: number
	root_teams_only?:  bool
	summary_only?:     bool
	teams?: [...{
		description?: string
		id?:          number
		members?: [...string]
		name?:    string
		node_id?: string
		parent?: [string]: string
		privacy?: string
		repositories?: [...string]
		slug?: string
	}]
}
