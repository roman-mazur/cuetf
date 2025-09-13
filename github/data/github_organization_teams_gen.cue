package data

#github_organization_teams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_teams")
	close({
		id?:               string
		results_per_page?: number
		root_teams_only?:  bool
		summary_only?:     bool
		teams?: [...close({
			description?: string
			id?:          number
			members?: [...string]
			name?:    string
			node_id?: string
			parent?: [string]: string
			privacy?: string
			repositories?: [...string]
			slug?: string
		})]
	})
}
