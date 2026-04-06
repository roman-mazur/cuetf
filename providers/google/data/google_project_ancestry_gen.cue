package data

#google_project_ancestry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_project_ancestry")
	close({
		ancestors?: [...close({
			id?:   string
			type?: string
		})]
		id?:          string
		org_id?:      string
		parent_id?:   string
		parent_type?: string
		project?:     string
	})
}
