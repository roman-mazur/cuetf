package res

#google_endpoints_service_consumers_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_endpoints_service_consumers_iam_policy")
	close({
		consumer_project!: string
		etag?:             string
		id?:               string
		policy_data!:      string
		service_name!:     string
	})
}
