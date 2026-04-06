package data

#scaleway_registry_image_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_registry_image_tag")
	close({
		// Date and time of creation
		created_at?: string

		// Hash of the tag content. Several tags of a same image may have
		// the same digest
		digest?: string
		id?:     string

		// The ID of the registry image
		image_id!: string

		// The name of the registry image tag
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The status of the registry image tag
		status?: string

		// The ID of the registry image tag
		tag_id?: string

		// Date and time of last update
		updated_at?: string
	})
}
