package res

#google_dataplex_entry_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_entry_link")
	close({
		// The time when the Entry Link was created.
		create_time?: string

		// The id of the entry group this entry link is in.
		entry_group_id!: string

		// The id of the entry link to create.
		entry_link_id!: string

		// Relative resource name of the Entry Link Type used to create
		// this Entry Link. For example:
		// projects/dataplex-types/locations/global/entryLinkTypes/definition
		entry_link_type!: string
		id?:              string

		// The location for the entry.
		location!: string

		// The relative resource name of the Entry Link, of the form:
		// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entryLinks/{entry_link_id}
		name?: string
		entry_references!: matchN(1, [#entry_references, [_, ...] & [...#entry_references]])
		timeouts?: #timeouts
		project?:  string

		// The time when the Entry Link was last updated.
		update_time?: string
	})

	#entry_references: close({
		// The relative resource name of the referenced Entry, of the
		// form:
		// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entries/{entry_id}
		name!: string

		// The path in the Entry that is referenced in the Entry Link.
		// Empty path denotes that the Entry itself is referenced in the
		// Entry Link.
		path?: string

		// The reference type of the Entry. Possible values: ["SOURCE",
		// "TARGET"]
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
