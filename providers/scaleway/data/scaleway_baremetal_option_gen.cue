package data

#scaleway_baremetal_option: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_baremetal_option")
	close({
		id?: string

		// Is false if the option could not be added or removed
		manageable?: bool

		// Exact label of the desired option
		name?: string

		// The ID of the option
		option_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
