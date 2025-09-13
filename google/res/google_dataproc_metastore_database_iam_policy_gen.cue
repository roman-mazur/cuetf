package res

#google_dataproc_metastore_database_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_metastore_database_iam_policy")
	close({
		database!:    string
		etag?:        string
		id?:          string
		location?:    string
		policy_data!: string
		project?:     string
		service_id!:  string
	})
}
