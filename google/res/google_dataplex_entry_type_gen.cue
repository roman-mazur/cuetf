package res

#google_dataplex_entry_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_entry_type")
	close({
		// The time when the EntryType was created.
		create_time?: string

		// Description of the EntryType.
		description?: string

		// User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The entry type id of the entry type.
		entry_type_id?: string
		id?:            string

		// User-defined labels for the EntryType.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where entry type will be created in.
		location?: string

		// The relative resource name of the EntryType, of the form:
		// projects/{project_number}/locations/{location_id}/entryTypes/{entry_type_id}
		name?: string

		// The platform that Entries of this type belongs to.
		platform?: string
		required_aspects?: matchN(1, [#required_aspects, [...#required_aspects]])
		timeouts?: #timeouts
		project?:  string

		// The system that Entries of this type belongs to.
		system?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Indicates the class this Entry Type belongs to, for example,
		// TABLE, DATABASE, MODEL.
		type_aliases?: [...string]

		// System generated globally unique ID for the EntryType. This ID
		// will be different if the EntryType is deleted and re-created
		// with the same name.
		uid?: string

		// The time when the EntryType was last updated.
		update_time?: string
	})

	#required_aspects: close({
		// Required aspect type for the entry type.
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
