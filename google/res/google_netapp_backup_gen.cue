package res

#google_netapp_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_netapp_backup")
	close({
		// Region in which backup is stored.
		backup_region?: string

		// Type of backup, manually created or created by a backup policy.
		// Possible Values : [TYPE_UNSPECIFIED, MANUAL, SCHEDULED]
		backup_type?: string

		// Backups of a volume build incrementally on top of each other.
		// They form a "backup chain".
		// Total size of all backups in a chain in bytes = baseline backup
		// size + sum(incremental backup size)
		chain_storage_bytes?: string

		// Create time of the backup. A timestamp in RFC3339 UTC "Zulu"
		// format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// A description of the backup with 2048 characters or less.
		// Requests with longer descriptions will be rejected.
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
		id?: string

		// Location of the backup.
		location!: string

		// The resource name of the backup. Needs to be unique per
		// location.
		name!:    string
		project?: string

		// If specified, backup will be created from the given snapshot.
		// If not specified,
		// there will be a new snapshot taken to initiate the backup
		// creation.
		// Format:
		// 'projects/{{projectId}}/locations/{{location}}/volumes/{{volumename}}/snapshots/{{snapshotname}}''
		source_snapshot?: string
		timeouts?:        #timeouts

		// ID of volumes this backup belongs to. Format:
		// 'projects/{{projects_id}}/locations/{{location}}/volumes/{{name}}''
		source_volume?: string

		// The state of the Backup Vault. Possible Values :
		// [STATE_UNSPECIFIED, CREATING, UPLOADING, READY, DELETING,
		// ERROR, UPDATING]
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Name of the backup vault to store the backup in.
		vault_name!: string

		// Region of the volume from which the backup was created.
		volume_region?: string

		// Size of the file system when the backup was created. When
		// creating a new volume from the backup, the volume capacity
		// will have to be at least as big.
		volume_usage_bytes?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
