package res

#google_healthcare_fhir_store_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_healthcare_fhir_store_iam_policy")
	close({
		etag?:          string
		fhir_store_id!: string
		id?:            string
		policy_data!:   string
	})
}
