package res

#google_iam_workforce_pool_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_workforce_pool_iam_policy")
	close({
		etag?:              string
		id?:                string
		location?:          string
		policy_data!:       string
		workforce_pool_id!: string
	})
}
