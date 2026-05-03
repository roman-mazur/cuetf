package res

#google_dataform_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_folder")
	close({
		timeouts?: #timeouts

		// Optional. The containing Folder resource name.
		// Format: 'projects/*/locations/*/folders/*' or
		// 'projects/*/locations/*/teamFolders/*'.
		containing_folder?: string

		// Required. The Folder's user-friendly name.
		display_name!: string

		// The unique identifier for the Folder.
		folder_id?: string
		id?:        string

		// The Folder's name.
		name?:    string
		project?: string

		// A reference to the region
		region!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
