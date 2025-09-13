package res

#google_netapp_volume_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_netapp_volume_snapshot")
	close({
		// Description for the snapshot.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the snapshot location. Snapshots are child resources of
		// volumes and live in the same location.
		location!: string

		// The name of the snapshot.
		name!: string
		id?:   string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?:  string
		timeouts?: #timeouts

		// Storage used to store blocks unique to this snapshot.
		used_bytes?: number

		// The name of the volume to create the snapshot in.
		volume_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
