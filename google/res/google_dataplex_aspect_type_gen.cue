package res

#google_dataplex_aspect_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_aspect_type")
	close({
		// The aspect type id of the aspect type.
		aspect_type_id?: string

		// The time when the AspectType was created.
		create_time?: string

		// Classifies the data stored by the aspect.
		// 'DATA_CLASSIFICATION_UNSPECIFIED' denotes that the aspect
		// contains only metadata
		// while 'METADATA_AND_DATA' indicates data derived content.
		// <br><br> Possible values: ["DATA_CLASSIFICATION_UNSPECIFIED",
		// "METADATA_AND_DATA"]
		data_classification?: string

		// Description of the AspectType.
		description?: string

		// User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-defined labels for the AspectType.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where aspect type will be created in.
		location?: string
		id?:       string

		// MetadataTemplate of the Aspect.
		metadata_template?: string
		timeouts?:          #timeouts

		// The relative resource name of the AspectType, of the form:
		// projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_type_id}
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Denotes the transfer status of the Aspect Type. It is
		// unspecified
		// for Aspect Type created from Dataplex API.
		transfer_status?: string

		// System generated globally unique ID for the AspectType. This ID
		// will be different if the AspectType is deleted and re-created
		// with the same name.
		uid?: string

		// The time when the AspectType was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
