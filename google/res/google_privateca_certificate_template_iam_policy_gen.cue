package res

#google_privateca_certificate_template_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_privateca_certificate_template_iam_policy")
	close({
		certificate_template!: string
		etag?:                 string
		id?:                   string
		location?:             string
		policy_data!:          string
		project?:              string
	})
}
