package data

#google_bigquery_datasets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_datasets")
	close({
		datasets?: [...close({
			dataset_id?:    string
			friendly_name?: string
			labels?: [string]: string
			location?: string
		})]
		id?: string

		// The ID of the project in which the datasets are located. If it
		// is not provided, the provider project is used.
		project?: string
	})
}
