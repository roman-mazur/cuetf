package data

#google_projects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_projects")
	close({
		filter!: string
		id?:     string
		projects?: [...close({
			create_time?: string
			labels?: [string]: string
			lifecycle_state?: string
			name?:            string
			number?:          string
			parent?: [string]: string
			project_id?: string
		})]
	})
}
