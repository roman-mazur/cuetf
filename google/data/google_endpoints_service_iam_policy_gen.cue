package data

#google_endpoints_service_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_endpoints_service_iam_policy")
	close({
		etag?:         string
		id?:           string
		policy_data?:  string
		service_name!: string
	})
}
