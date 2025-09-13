package data

#google_dataplex_zone_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_zone_iam_policy")
	close({
		dataplex_zone!: string
		etag?:          string
		id?:            string
		lake!:          string
		location?:      string
		policy_data?:   string
		project?:       string
	})
}
