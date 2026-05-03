package res

#google_dataform_team_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_team_folder")
	close({
		timeouts?: #timeouts

		// Required. The TeamFolder's user-friendly name.
		display_name!: string
		id?:           string

		// The TeamFolder's name.
		name?:    string
		project?: string

		// A reference to the region
		region!: string

		// The unique identifier for the TeamFolder.
		teamfolder_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
