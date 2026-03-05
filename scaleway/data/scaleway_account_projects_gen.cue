package data

#scaleway_account_projects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_account_projects")
	close({
		// The date and time of the creation of the Project (Format ISO
		// 8601)
		created_at?: string

		// Description of the project
		description?: string
		id?:          string

		// The name of the project
		name?: string

		// The ID of the organization
		organization_id?: string

		// The list of projects
		projects?: [...close({
			created_at?:      string
			description?:     string
			id?:              string
			name?:            string
			organization_id?: string
			updated_at?:      string
		})]

		// The date and time of the last update of the Project (Format ISO
		// 8601)
		updated_at?: string
	})
}
