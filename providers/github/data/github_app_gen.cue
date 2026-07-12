package data

github_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_app")
	close({
		// The app's description.
		description?: string

		// The ID of the app.
		id?: string

		// The app's full name.
		name?: string

		// The Node ID of the app.
		node_id?: string

		// The URL-friendly name of your GitHub App.
		slug!: string
	})
}
