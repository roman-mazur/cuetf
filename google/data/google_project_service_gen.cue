package data

#google_project_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_project_service")
	close({
		disable_dependent_services?: bool
		disable_on_destroy?:         bool
		id?:                         string
		project?:                    string
		service!:                    string
	})
}
