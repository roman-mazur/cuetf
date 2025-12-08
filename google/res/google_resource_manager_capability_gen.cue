package res

#google_resource_manager_capability: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_resource_manager_capability")
	close({
		// Capability name that should be updated on the folder.
		capability_name!: string
		id?:              string

		// Folder on which Capability needs to be updated in the format
		// folders/folder_id.
		parent!:   string
		timeouts?: #timeouts

		// Capability Value.
		value!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
