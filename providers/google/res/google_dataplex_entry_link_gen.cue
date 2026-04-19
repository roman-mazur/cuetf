package res

import "list"

#google_dataplex_entry_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_entry_link")
	close({
		aspects?: matchN(1, [#aspects, [...#aspects]])
		entry_references!: matchN(1, [#entry_references, [_, ...] & [...#entry_references]])
		timeouts?: #timeouts

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
		name?:    string
		project?: string

		// The time when the Entry Link was last updated.
		update_time?: string
	})

	#aspects: close({
		aspect!: matchN(1, [_#defs."/$defs/aspects/$defs/aspect", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/aspects/$defs/aspect"]])

		// The map keys of the Aspects which the service should modify.
		// It should be the aspect type reference in the format
		// '{project_number}.{location_id}.{aspect_type_id}'.
		aspect_key!: string
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
		update?: string
	})

	_#defs: "/$defs/aspects/$defs/aspect": close({
		// The resource name of the type used to create this Aspect.
		aspect_type?: string

		// The time when the Aspect was created.
		create_time?: string

		// The content of the aspect in JSON form, according to its aspect
		// type schema. The maximum size of the field is 120KB (encoded
		// as UTF-8).
		data!: string

		// The path in the entry link under which the aspect is attached.
		path?: string

		// The time when the Aspect was last modified.
		update_time?: string
	})
}
