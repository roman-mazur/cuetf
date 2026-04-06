package data

#google_healthcare_consent_store_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_healthcare_consent_store_iam_policy")
	close({
		consent_store_id!: string
		dataset!:          string
		etag?:             string
		id?:               string
		policy_data?:      string
	})
}
