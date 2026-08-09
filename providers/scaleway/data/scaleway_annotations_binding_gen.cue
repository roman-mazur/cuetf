package data

scaleway_annotations_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_annotations_binding")
	close({
		// The ID of the annotation binding to retrieve.
		binding_id!: string

		// The ID of the annotation binding.
		id?: string

		// ID of the key associated to the binding.
		key_id?: string

		// Scaleway Resource Number associated to the binding.
		srn?: string

		// ID of the value associated to the binding.
		value_id?: string
	})
}
