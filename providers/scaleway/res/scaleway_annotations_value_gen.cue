package res

scaleway_annotations_value: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_annotations_value")
	close({
		// Description of the annotation value.
		description?: string

		// The ID of the annotation value resource.
		id?: string

		// ID of the key the value is associated to.
		key_id!: string

		// Name of the annotation value.
		name!: string

		// The ID of the annotation value.
		value_id?: string
	})
}
