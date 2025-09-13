package res

#google_netapp_backup_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_netapp_backup_policy")
	close({
		// The total number of volumes assigned by this backup policy.
		assigned_volume_count?: number

		// Create time of the backup policy. A timestamp in RFC3339 UTC
		// "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// Number of daily backups to keep. Note that the minimum daily
		// backup limit is 2.
		daily_backup_limit!: number

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If enabled, make backups automatically according to the
		// schedules.
		// This will be applied to all volumes that have this policy
		// attached and enforced on volume level.
		enabled?: bool
		id?:      string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the region for the policy to apply to.
		location!: string

		// Number of monthly backups to keep. Note that the sum of daily,
		// weekly and monthly backups should be greater than 1.
		monthly_backup_limit!: number
		timeouts?:             #timeouts

		// The name of the backup policy. Needs to be unique per location.
		name!: string

		// The state of the backup policy.
		state?:   string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Number of weekly backups to keep. Note that the sum of daily,
		// weekly and monthly backups should be greater than 1.
		weekly_backup_limit!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
