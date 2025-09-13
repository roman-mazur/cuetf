package res

#github_project_column: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_project_column")
	close({
		// The ID of the column.
		column_id?: number
		etag?:      string

		// The name of the column.
		name!: string
		id?:   string

		// The ID of an existing project that the column will be created
		// in.
		project_id!: string
	})
}
