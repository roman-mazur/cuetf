package res

#google_ces_app_root_agent_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_app_root_agent_association")
	close({
		timeouts?: #timeouts

		// The ID or fully qualified resource name of the agent to
		// associate as the
		// root agent of the app.
		agent_id!: string

		// The ID of the App. Used to construct the app resource name.
		app_id!: string
		id?:     string

		// The location of the App.
		location!: string
		project?:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
