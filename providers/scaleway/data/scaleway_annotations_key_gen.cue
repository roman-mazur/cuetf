package data

scaleway_annotations_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_annotations_key")
	close({
		// Description of the annotation key.
		description?: string

		// The ID of the annotation key.
		id?: string

		// The ID of the annotation key to retrieve.
		key_id!: string

		// Name of the annotation key.
		name?: string
	})
}
