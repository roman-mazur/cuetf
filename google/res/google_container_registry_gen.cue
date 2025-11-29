package res

#google_container_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_container_registry")
	close({
		// The URI of the created resource.
		bucket_self_link?: string
		id?:               string

		// The location of the registry. One of ASIA, EU, US or not
		// specified. See the official documentation for more information
		// on registry locations.
		location?: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
	})
}
