package data

#google_dataplex_asset_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_dataplex_asset_iam_policy")
	close({
		asset!:         string
		dataplex_zone!: string
		etag?:          string
		id?:            string
		lake!:          string
		location?:      string
		policy_data?:   string
		project?:       string
	})
}
