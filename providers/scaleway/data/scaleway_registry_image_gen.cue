package data

#scaleway_registry_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_registry_image")
	close({
		id?: string

		// The ID of the registry image
		image_id?: string

		// The name of the registry image
		name?: string

		// The namespace ID of the registry image
		namespace_id?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The size of the registry image
		size?: number

		// The tags associated with the registry image
		tags?: [...string]

		// Timestamp when the image was last updated.
		updated_at?: string

		// The visibility policy of the registry image
		visibility?: string
	})
}
