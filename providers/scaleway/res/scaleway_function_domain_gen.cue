package res

#scaleway_function_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_function_domain")
	close({
		timeouts?: #timeouts

		// The ID of the function
		function_id!: string

		// The hostname that should be redirected to the function
		hostname!: string
		id?:       string

		// The region you want to attach the resource to
		region?: string

		// URL to use to trigger the function
		url?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
