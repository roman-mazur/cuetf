package res

scaleway_annotations_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_annotations_binding")
	close({
		// The ID of the annotation binding resource.
		id?: string

		// ID of the key associated to the binding.
		key_id?: string

		// The Scaleway Resource Number (SRN) of the binding.
		srn?: string

		// Scaleway Resource Number to associate.
		target_srn!: string

		// ID of the value to associate.
		value_id!: string
	})
}
