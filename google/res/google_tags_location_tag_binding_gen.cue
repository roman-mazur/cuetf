package res

#google_tags_location_tag_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_tags_location_tag_binding")
	close({
		id?: string

		// The geographic location where the transfer config should
		// reside.
		// Examples: US, EU, asia-northeast1. The default value is US.
		location?: string

		// The generated id for the TagBinding. This is a string of the
		// form 'tagBindings/{full-resource-name}/{tag-value-name}' or
		// 'tagBindings/{full-resource-name}/{tag-key-name}'
		name?: string

		// The full resource name of the resource the TagValue is bound
		// to. E.g. //cloudresourcemanager.googleapis.com/projects/123
		parent!:   string
		timeouts?: #timeouts

		// The TagValue of the TagBinding. Must be either in id format
		// 'tagValues/{tag-value-id}', or namespaced format
		// '{parent-id}/{tag-key-short-name}/{tag-value-short-name}'.
		tag_value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
