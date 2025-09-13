package res

#google_dataplex_lake_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_lake_iam_policy")
	close({
		etag?:        string
		id?:          string
		lake!:        string
		location?:    string
		policy_data!: string
		project?:     string
	})
}
