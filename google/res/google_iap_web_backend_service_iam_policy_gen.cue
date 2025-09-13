package res

#google_iap_web_backend_service_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iap_web_backend_service_iam_policy")
	close({
		etag?:                string
		id?:                  string
		policy_data!:         string
		project?:             string
		web_backend_service!: string
	})
}
