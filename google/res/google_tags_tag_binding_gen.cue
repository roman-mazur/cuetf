package res

#google_tags_tag_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_tags_tag_binding")
	close({
		// The generated id for the TagBinding. This is a string of the
		// form: 'tagBindings/{full-resource-name}/{tag-value-name}'
		name?: string

		// The full resource name of the resource the TagValue is bound
		// to. E.g. //cloudresourcemanager.googleapis.com/projects/123
		parent!: string
		id?:     string

		// The TagValue of the TagBinding. Must be of the form
		// tagValues/456.
		tag_value!: string
		timeouts?:  #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
