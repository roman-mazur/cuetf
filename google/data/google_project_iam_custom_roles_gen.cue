package data

#google_project_iam_custom_roles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_project_iam_custom_roles")
	close({
		id?:      string
		project?: string
		roles?: [...close({
			deleted?:     bool
			description?: string
			id?:          string
			name?:        string
			permissions?: [...string]
			role_id?: string
			stage?:   string
			title?:   string
		})]
		show_deleted?: bool
		view?:         string
	})
}
