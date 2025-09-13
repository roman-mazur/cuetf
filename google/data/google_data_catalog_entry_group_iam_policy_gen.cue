package data

#google_data_catalog_entry_group_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_catalog_entry_group_iam_policy")
	close({
		entry_group!: string
		etag?:        string
		id?:          string
		policy_data?: string
		project?:     string
		region?:      string
	})
}
