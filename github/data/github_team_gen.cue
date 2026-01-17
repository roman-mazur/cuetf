package data

#github_team: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_team")
	close({
		description?: string
		id?:          string
		members?: [...string]
		membership_type?:      string
		name?:                 string
		node_id?:              string
		notification_setting?: string
		privacy?:              string
		repositories_detailed?: [...close({
			repo_id?:   number
			repo_name?: string
			role_name?: string
		})]
		slug!:         string
		summary_only?: bool
	})
}
