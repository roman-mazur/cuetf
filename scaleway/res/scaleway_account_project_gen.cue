package res

#scaleway_account_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_account_project")
	close({
		// The date and time of the creation of the Project (Format ISO
		// 8601)
		created_at?: string

		// Description of the project
		description?: string
		id?:          string

		// The name of the project
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The date and time of the last update of the Project (Format ISO
		// 8601)
		updated_at?: string
	})
}
