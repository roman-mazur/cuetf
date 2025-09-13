package res

#google_beyondcorp_security_gateway_application_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_security_gateway_application_iam_policy")
	close({
		application_id!:      string
		etag?:                string
		id?:                  string
		policy_data!:         string
		project?:             string
		security_gateway_id!: string
	})
}
