package res

import "list"

#google_dataplex_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_entry")
	close({
		// The time when the Entry was created in Dataplex.
		create_time?: string

		// The entry group id of the entry group the entry will be created
		// in.
		entry_group_id?: string

		// The entry id of the entry.
		entry_id?: string

		// The relative resource name of the entry type that was used to
		// create this entry, in the format
		// projects/{project_number}/locations/{locationId}/entryTypes/{entryTypeId}.
		entry_type!: string

		// A name for the entry that can be referenced by an external
		// system. For more information, see
		// https://cloud.google.com/dataplex/docs/fully-qualified-names.
		// The maximum size of the field is 4000 characters.
		fully_qualified_name?: string
		id?:                   string

		// The location where entry will be created.
		location?: string

		// The relative resource name of the entry, in the format
		// projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
		name?: string
		aspects?: matchN(1, [#aspects, [...#aspects]])
		entry_source?: matchN(1, [#entry_source, list.MaxItems(1) & [...#entry_source]])
		timeouts?: #timeouts

		// The resource name of the parent entry, in the format
		// projects/{project_number}/locations/{locationId}/entryGroups/{entryGroupId}/entries/{entryId}.
		parent_entry?: string
		project?:      string

		// The time when the entry was last updated in Dataplex.
		update_time?: string
	})

	#aspects: close({
		aspect!: matchN(1, [_#defs."/$defs/aspects/$defs/aspect", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/aspects/$defs/aspect"]])

		// Depending on how the aspect is attached to the entry, the
		// format of the aspect key can be one of the following:
		//
		// If the aspect is attached directly to the entry:
		// {project_number}.{locationId}.{aspectTypeId}
		// If the aspect is attached to an entry's path:
		// {project_number}.{locationId}.{aspectTypeId}@{path}
		aspect_key!: string
	})

	#entry_source: close({
		// The time when the resource was created in the source system.
		create_time?: string

		// A description of the data resource. Maximum length is 2,000
		// characters.
		description?: string

		// A user-friendly display name. Maximum length is 500 characters.
		display_name?: string

		// User-defined labels. The maximum size of keys and values is 128
		// characters each.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		labels?: [string]: string

		// Location of the resource in the source system. You can search
		// the entry by this location.
		// By default, this should match the location of the entry group
		// containing this entry.
		// A different value allows capturing the source location for data
		// external to Google Cloud.
		location?: string

		// The platform containing the source system. Maximum length is 64
		// characters.
		platform?: string

		// The name of the resource in the source system. Maximum length
		// is 4,000 characters.
		resource?: string
		ancestors?: matchN(1, [_#defs."/$defs/entry_source/$defs/ancestors", [..._#defs."/$defs/entry_source/$defs/ancestors"]])

		// The name of the source system. Maximum length is 64 characters.
		system?: string

		// The time when the resource was last updated in the source
		// system.
		// If the entry exists in the system and its EntrySource has
		// updateTime populated,
		// further updates to the EntrySource of the entry must provide
		// incremental updates to its updateTime.
		update_time?: string
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

		// The path in the entry under which the aspect is attached.
		path?: string

		// The time when the Aspect was last modified.
		update_time?: string
	})

	_#defs: "/$defs/entry_source/$defs/ancestors": close({
		// The name of the ancestor resource.
		name?: string

		// The type of the ancestor resource.
		type?: string
	})
}
