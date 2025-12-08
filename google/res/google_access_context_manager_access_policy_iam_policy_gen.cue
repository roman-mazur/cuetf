package res

#google_access_context_manager_access_policy_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_access_policy_iam_policy")
	close({
		etag?:        string
		id?:          string
		name!:        string
		policy_data!: string
	})
}
