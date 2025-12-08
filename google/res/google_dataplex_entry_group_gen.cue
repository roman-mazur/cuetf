package res

#google_dataplex_entry_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_entry_group")
	close({
		// The time when the EntryGroup was created.
		create_time?: string

		// Description of the EntryGroup.
		description?: string

		// User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The entry group id of the entry group.
		entry_group_id?: string
		id?:             string

		// User-defined labels for the EntryGroup.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where entry group will be created in.
		location?: string

		// The relative resource name of the EntryGroup, of the form:
		// projects/{project_number}/locations/{location_id}/entryGroups/{entry_group_id}
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Denotes the transfer status of the Entry Group. It is
		// unspecified
		// for Entry Group created from Dataplex API.
		transfer_status?: string

		// System generated globally unique ID for the EntryGroup. This ID
		// will be different if the EntryGroup is deleted and re-created
		// with the same name.
		uid?: string

		// The time when the EntryGroup was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
