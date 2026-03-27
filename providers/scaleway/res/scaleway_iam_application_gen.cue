package res

#scaleway_iam_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_application")
	close({
		// The date and time of the creation of the application
		created_at?: string

		// The description of the iam application
		description?: string

		// Whether or not the application is editable.
		editable?: bool
		id?:       string

		// The name of the iam application
		name?: string

		// ID of organization the resource is associated to.
		organization_id?: string

		// The tags associated with the application
		tags?: [...string]

		// The date and time of the last update of the application
		updated_at?: string
	})
}
