package res

#google_project_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_project_service")
	close({
		timeouts?:                   #timeouts
		disable_dependent_services?: bool
		disable_on_destroy?:         bool
		id?:                         string
		project?:                    string
		service!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
