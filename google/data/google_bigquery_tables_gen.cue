package data

#google_bigquery_tables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_tables")
	close({
		// The ID of the dataset containing the tables.
		dataset_id!: string
		id?:         string

		// The ID of the project in which the dataset is located. If it is
		// not provided, the provider project is used.
		project?: string
		tables?: [...close({
			labels?: [string]: string
			table_id?: string
		})]
	})
}
