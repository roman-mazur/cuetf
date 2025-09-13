package res

#google_folder_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_folder_iam_policy")
	close({
		etag?:        string
		folder!:      string
		id?:          string
		policy_data!: string
	})
}
