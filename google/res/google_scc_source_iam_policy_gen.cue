package res

#google_scc_source_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_scc_source_iam_policy")
	close({
		etag?:         string
		id?:           string
		organization!: string
		policy_data!:  string
		source!:       string
	})
}
