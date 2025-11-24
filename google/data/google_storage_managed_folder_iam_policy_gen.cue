package data

#google_storage_managed_folder_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_managed_folder_iam_policy")
	close({
		bucket!:         string
		etag?:           string
		id?:             string
		managed_folder!: string
		policy_data?:    string
	})
}
