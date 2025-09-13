package res

#google_data_catalog_entry_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_catalog_entry_group")
	close({
		// Entry group description, which can consist of several sentences
		// or paragraphs that describe entry group contents.
		description?: string

		// A short name to identify the entry group, for example,
		// "analytics data - jan 2011".
		display_name?: string

		// The id of the entry group to create. The id must begin with a
		// letter or underscore,
		// contain only English letters, numbers and underscores, and be
		// at most 64 characters.
		entry_group_id!: string
		timeouts?:       #timeouts

		// The resource name of the entry group in URL format. Example:
		// projects/{project}/locations/{location}/entryGroups/{entryGroupId}
		name?:    string
		id?:      string
		project?: string

		// EntryGroup location region.
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
