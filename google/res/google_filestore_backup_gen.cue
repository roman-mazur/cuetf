package res

#google_filestore_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_filestore_backup")
	close({
		// The amount of bytes needed to allocate a full copy of the
		// snapshot content.
		capacity_gb?: string

		// The time when the snapshot was created in RFC3339 text format.
		create_time?: string

		// A description of the backup with 2048 characters or less.
		// Requests with longer descriptions will be rejected.
		description?: string

		// Amount of bytes that will be downloaded if the backup is
		// restored.
		download_bytes?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// KMS key name used for data encryption.
		kms_key_name?: string
		id?:           string

		// Resource labels to represent user-provided metadata.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the location of the instance. This can be a region
		// for ENTERPRISE tier instances.
		location!: string

		// The resource name of the backup. The name must be unique within
		// the specified instance.
		//
		// The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!:    string
		project?: string

		// Name of the file share in the source Cloud Filestore instance
		// that the backup is created from.
		source_file_share!: string
		timeouts?:          #timeouts

		// The resource name of the source Cloud Filestore instance, in
		// the format
		// projects/{projectId}/locations/{locationId}/instances/{instanceId},
		// used to create this backup.
		source_instance!: string

		// The service tier of the source Cloud Filestore instance that
		// this backup is created from.
		source_instance_tier?: string

		// The backup state.
		state?: string

		// The size of the storage used by the backup. As backups share
		// storage, this number is expected to change with backup
		// creation/deletion.
		storage_bytes?: string

		// A map of resource manager tags.
		// Resource manager tag keys and values have the same definition
		// as resource manager tags.
		// Keys must be in the format tagKeys/{tag_key_id}, and values are
		// in the format tagValues/{tag_value_id}.
		// The field is ignored (both PUT & PATCH) when empty.
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
