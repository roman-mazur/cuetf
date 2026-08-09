package res

scaleway_annotations_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_annotations_key")
	close({
		// Description of the annotation key.
		description?: string

		// The ID of the annotation key resource.
		id?: string

		// Name of the annotation key.
		name!: string

		// ID of the organization. If not set, the organization ID is derived from the
		// provider configuration.
		organization_id?: string
	})
}
