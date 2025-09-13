package res

#google_storage_bucket_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_bucket_iam_policy")
	close({
		bucket!:      string
		etag?:        string
		id?:          string
		policy_data!: string
	})
}
