package res

import "list"

#google_netapp_backup_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_netapp_backup_vault")
	close({
		// Region in which backup is stored.
		backup_region?: string

		// Type of the backup vault to be created. Default is IN_REGION.
		// Possible values: ["BACKUP_VAULT_TYPE_UNSPECIFIED",
		// "IN_REGION", "CROSS_REGION"]
		backup_vault_type?: string

		// Create time of the backup vault. A timestamp in RFC3339 UTC
		// "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// An optional description of this resource.
		description?: string

		// Name of the Backup vault created in backup region.
		destination_backup_vault?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location (region) of the backup vault.
		location!: string

		// The resource name of the backup vault. Needs to be unique per
		// location.
		name!: string
		backup_retention_policy?: matchN(1, [#backup_retention_policy, list.MaxItems(1) & [...#backup_retention_policy]])
		timeouts?: #timeouts
		project?:  string

		// Name of the Backup vault created in source region.
		source_backup_vault?: string

		// Region in which the backup vault is created.
		source_region?: string

		// The state of the Backup Vault.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#backup_retention_policy: close({
		// Minimum retention duration in days for backups in the backup
		// vault.
		backup_minimum_enforced_retention_days!: number

		// Indicates if the daily backups are immutable. At least one of
		// daily_backup_immutable, weekly_backup_immutable,
		// monthly_backup_immutable and manual_backup_immutable must be
		// true.
		daily_backup_immutable?: bool

		// Indicates if the manual backups are immutable. At least one of
		// daily_backup_immutable, weekly_backup_immutable,
		// monthly_backup_immutable and manual_backup_immutable must be
		// true.
		manual_backup_immutable?: bool

		// Indicates if the monthly backups are immutable. At least one of
		// daily_backup_immutable, weekly_backup_immutable,
		// monthly_backup_immutable and manual_backup_immutable must be
		// true.
		monthly_backup_immutable?: bool

		// Indicates if the weekly backups are immutable. At least one of
		// daily_backup_immutable, weekly_backup_immutable,
		// monthly_backup_immutable and manual_backup_immutable must be
		// true.
		weekly_backup_immutable?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
