package res

#scaleway_function_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_function_token")
	close({
		// The description of the function
		description?: string

		// The date after which the token expires RFC3339
		expires_at?: string

		// The ID of the function
		function_id?: string
		id?:          string

		// The ID of the namespace
		namespace_id?: string

		// The region you want to attach the resource to
		region?: string

		// Token generated
		token?: string
	})
}
