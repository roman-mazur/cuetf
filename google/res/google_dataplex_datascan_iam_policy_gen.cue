package res

#google_dataplex_datascan_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_datascan_iam_policy")
	close({
		data_scan_id!: string
		etag?:         string
		id?:           string
		location?:     string
		policy_data!:  string
		project?:      string
	})
}
