package res

#google_gke_backup_restore_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_backup_restore_channel")
	close({
		// User specified descriptive string for this RestoreChannel.
		description?: string

		// The project where Backups will be restored.
		// The format is 'projects/{project}'.
		// {project} can be project number or project id.
		destination_project!: string

		// The project_id where Backups will be restored.
		// Example Project ID: "my-project-id".
		destination_project_id?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// etag is used for optimistic concurrency control as a way to
		// help prevent simultaneous
		// updates of a restore channel from overwriting each other. It is
		// strongly suggested that
		// systems make use of the 'etag' in the read-modify-write cycle
		// to perform RestoreChannel updates
		// in order to avoid race conditions: An etag is returned in the
		// response to restoreChannels.get,
		// and systems are expected to put that etag in the request to
		// restoreChannels.patch or
		// restoreChannels.delete to ensure that their change will be
		// applied to the same version of the resource.
		etag?: string
		id?:   string

		// Description: A set of custom labels supplied by the user.
		// A list of key->value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The region of the Restore Channel.
		location!: string

		// The full name of the RestoreChannel Resource.
		name!:     string
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server generated, unique identifier of UUID format.
		uid?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
