package res

#google_biglake_iceberg_table_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_table_iam_policy")
	close({
		catalog!:     string
		etag?:        string
		id?:          string
		name!:        string
		namespace!:   string
		policy_data!: string
		project?:     string
	})
}
