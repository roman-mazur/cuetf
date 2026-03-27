package data

#scaleway_apple_silicon_os: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_apple_silicon_os")
	close({
		id?: string

		// Exact label of the desired image
		name?: string

		// The ID of the os
		os_id?: string

		// Version string of the desired OS
		version?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
