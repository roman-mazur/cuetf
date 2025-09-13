package data

#google_access_context_manager_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_access_context_manager_access_policy")
	close({
		id?:     string
		name?:   string
		parent!: string
		scopes?: [...string]
		title?: string
	})
}
