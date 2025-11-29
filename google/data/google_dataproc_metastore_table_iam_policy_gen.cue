package data

#google_dataproc_metastore_table_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_dataproc_metastore_table_iam_policy")
	close({
		database_id!: string
		etag?:        string
		id?:          string
		location?:    string
		policy_data?: string
		project?:     string
		service_id!:  string
		table!:       string
	})
}
