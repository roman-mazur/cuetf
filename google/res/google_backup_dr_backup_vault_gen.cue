package res

#google_backup_dr_backup_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_backup_dr_backup_vault")
	close({
		// Access restriction for the backup vault. Default value is
		// 'WITHIN_ORGANIZATION' if not provided during creation. Default
		// value: "WITHIN_ORGANIZATION" Possible values:
		// ["ACCESS_RESTRICTION_UNSPECIFIED", "WITHIN_PROJECT",
		// "WITHIN_ORGANIZATION", "UNRESTRICTED",
		// "WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA"]
		access_restriction?: string

		// Allow idempotent deletion of backup vault. The request will
		// still succeed in case the backup vault does not exist.
		allow_missing?: bool

		// Optional. User annotations. See
		// https://google.aip.dev/128#annotations
		// Stores small amounts of arbitrary data.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. The number of backups in this backup vault.
		backup_count?: string

		// Required. The default and minimum enforced retention for each
		// backup within the backup vault. The enforced retention for
		// each backup can be extended.
		backup_minimum_enforced_retention_duration!: string

		// How a backup's enforced retention end time is inherited.
		// Default value is 'INHERIT_VAULT_RETENTION' if not provided
		// during creation. Possible values:
		// ["BACKUP_RETENTION_INHERITANCE_UNSPECIFIED",
		// "INHERIT_VAULT_RETENTION", "MATCH_BACKUP_EXPIRE_TIME"]
		backup_retention_inheritance?: string

		// Required. ID of the requesting object.
		backup_vault_id!: string

		// Output only. The time when the instance was created.
		create_time?: string

		// Output only. Set to true when there are no backups nested under
		// this resource.
		deletable?: bool

		// Optional. The description of the BackupVault instance (2048
		// characters or less).
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. Time after which the BackupVault resource is locked.
		effective_time?: string

		// Optional. Server specified ETag for the backup vault resource
		// to prevent simultaneous updates from overwiting each other.
		etag?: string

		// If set, allow update to extend the minimum enforced retention
		// for backup vault. This overrides
		// the restriction against conflicting retention periods. This
		// conflict may occur when the
		// expiration schedule defined by the associated backup plan is
		// shorter than the minimum
		// retention set by the backup vault.
		force_update?: bool
		id?:           string

		// If set, the following restrictions against deletion of the
		// backup vault instance can be overridden:
		// * deletion of a backup vault instance that is being referenced
		// by an active backup plan.
		ignore_backup_plan_references?: bool
		timeouts?:                      #timeouts

		// If set, the following restrictions against deletion of the
		// backup vault instance can be overridden:
		// * deletion of a backup vault instance containing no backups,
		// but still containing empty datasources.
		ignore_inactive_datasources?: bool

		// Optional. Resource labels to represent user provided metadata.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The GCP location for the backup vault.
		location!: string

		// Output only. Identifier. The resource name.
		name?:    string
		project?: string

		// Output only. Service account used by the BackupVault Service
		// for this BackupVault. The user should grant this account
		// permissions in their workload project to enable the service to
		// run backups and restores there.
		service_account?: string

		// Output only. The BackupVault resource instance state.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// ACTIVE
		// DELETING
		// ERROR
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Total size of the storage used by all backup
		// resources.
		total_stored_bytes?: string

		// Output only. Output only Immutable after resource creation
		// until resource deletion.
		uid?: string

		// Output only. The time when the instance was updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
