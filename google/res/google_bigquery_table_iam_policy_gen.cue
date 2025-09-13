package res

#google_bigquery_table_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_table_iam_policy")
	close({
		dataset_id!:  string
		etag?:        string
		id?:          string
		policy_data!: string
		project?:     string
		table_id!:    string
	})
}
