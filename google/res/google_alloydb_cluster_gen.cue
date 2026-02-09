package res

import "list"

#google_alloydb_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_alloydb_cluster")
	close({
		// Annotations to allow client tools to store small amount of
		// arbitrary data. This is distinct from labels.
		// https://google.aip.dev/128
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string
		automated_backup_policy?: matchN(1, [#automated_backup_policy, list.MaxItems(1) & [...#automated_backup_policy]])

		// Cluster created from backup.
		backup_source?: [...close({
			backup_name?: string
		})]

		// Cluster created from a BackupDR backup.
		backupdr_backup_source?: [...close({
			backup?: string
		})]

		// The ID of the alloydb cluster.
		cluster_id!: string

		// The type of cluster. If not set, defaults to PRIMARY. Default
		// value: "PRIMARY" Possible values: ["PRIMARY", "SECONDARY"]
		cluster_type?: string

		// ContinuousBackupInfo describes the continuous backup properties
		// of a cluster.
		continuous_backup_info?: [...close({
			earliest_restorable_time?: string
			enabled_time?:             string
			encryption_info?: [...close({
				encryption_type?: string
				kms_key_versions?: [...string]
			})]
			schedule?: [...string]
		})]

		// The database engine major version. This is an optional field
		// and it's populated at the Cluster creation time.
		// Note: Changing this field to a higer version results in
		// upgrading the AlloyDB cluster which is an irreversible change.
		database_version?: string

		// Policy to determine if the cluster should be deleted
		// forcefully.
		// Deleting a cluster forcefully, deletes the cluster and all its
		// associated instances within the cluster.
		// Deleting a Secondary cluster with a secondary instance REQUIRES
		// setting deletion_policy = "FORCE" otherwise an error is
		// returned. This is needed as there is no support to delete just
		// the secondary instance, and the only way to delete secondary
		// instance is to delete the associated secondary cluster
		// forcefully which also deletes the secondary instance.
		// Possible values: DEFAULT, FORCE
		deletion_policy?: string

		// Whether Terraform will be prevented from destroying the
		// cluster.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the cluster will fail.
		// When the field is set to false, deleting the cluster is
		// allowed.
		deletion_protection?: bool

		// User-settable and human-readable display name for the Cluster.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// EncryptionInfo describes the encryption information of a
		// cluster or a backup.
		encryption_info?: [...close({
			encryption_type?: string
			kms_key_versions?: [...string]
		})]

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string
		id?:   string

		// User-defined labels for the alloydb cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		continuous_backup_config?: matchN(1, [#continuous_backup_config, list.MaxItems(1) & [...#continuous_backup_config]])
		encryption_config?: matchN(1, [#encryption_config, list.MaxItems(1) & [...#encryption_config]])
		initial_user?: matchN(1, [#initial_user, list.MaxItems(1) & [...#initial_user]])
		maintenance_update_policy?: matchN(1, [#maintenance_update_policy, list.MaxItems(1) & [...#maintenance_update_policy]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		psc_config?: matchN(1, [#psc_config, list.MaxItems(1) & [...#psc_config]])
		restore_backup_source?: matchN(1, [#restore_backup_source, list.MaxItems(1) & [...#restore_backup_source]])
		restore_backupdr_backup_source?: matchN(1, [#restore_backupdr_backup_source, list.MaxItems(1) & [...#restore_backupdr_backup_source]])
		restore_backupdr_pitr_source?: matchN(1, [#restore_backupdr_pitr_source, list.MaxItems(1) & [...#restore_backupdr_pitr_source]])
		restore_continuous_backup_source?: matchN(1, [#restore_continuous_backup_source, list.MaxItems(1) & [...#restore_continuous_backup_source]])
		secondary_config?: matchN(1, [#secondary_config, list.MaxItems(1) & [...#secondary_config]])
		timeouts?: #timeouts

		// The location where the alloydb cluster should reside.
		location!: string

		// Cluster created via DMS migration.
		migration_source?: [...close({
			host_port?:    string
			reference_id?: string
			source_type?:  string
		})]

		// The name of the cluster resource.
		name?:    string
		project?: string

		// Output only. Reconciling
		// (https://google.aip.dev/128#reconciliation).
		// Set to true if the current state of Cluster does not match the
		// user's intended state, and the service is actively updating
		// the resource to reconcile them.
		// This can happen due to user-triggered updates or system actions
		// like failover or maintenance.
		reconciling?: bool

		// Set to true to skip awaiting on the major version upgrade of
		// the cluster.
		// Possible values: true, false
		// Default value: "true"
		skip_await_major_version_upgrade?: bool

		// Output only. The current serving state of the cluster.
		state?: string

		// The subscrition type of cluster. Possible values: ["TRIAL",
		// "STANDARD"]
		subscription_type?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Contains information and all metadata related to TRIAL
		// clusters.
		trial_metadata?: [...close({
			end_time?:       string
			grace_end_time?: string
			start_time?:     string
			upgrade_time?:   string
		})]

		// The system-generated UID of the resource.
		uid?: string
	})

	#automated_backup_policy: close({
		// The length of the time window during which a backup can be
		// taken. If a backup does not succeed within this time window,
		// it will be canceled and considered failed.
		//
		// The backup window must be at least 5 minutes long. There is no
		// upper bound on the window. If not set, it will default to 1
		// hour.
		//
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		backup_window?: string

		// Whether automated backups are enabled.
		enabled?: bool
		encryption_config?: matchN(1, [_#defs."/$defs/automated_backup_policy/$defs/encryption_config", list.MaxItems(1) & [..._#defs."/$defs/automated_backup_policy/$defs/encryption_config"]])

		// Labels to apply to backups created using this configuration.
		labels?: [string]: string
		quantity_based_retention?: matchN(1, [_#defs."/$defs/automated_backup_policy/$defs/quantity_based_retention", list.MaxItems(1) & [..._#defs."/$defs/automated_backup_policy/$defs/quantity_based_retention"]])

		// The location where the backup will be stored. Currently, the
		// only supported option is to store the backup in the same
		// region as the cluster.
		location?: string
		time_based_retention?: matchN(1, [_#defs."/$defs/automated_backup_policy/$defs/time_based_retention", list.MaxItems(1) & [..._#defs."/$defs/automated_backup_policy/$defs/time_based_retention"]])
		weekly_schedule?: matchN(1, [_#defs."/$defs/automated_backup_policy/$defs/weekly_schedule", list.MaxItems(1) & [..._#defs."/$defs/automated_backup_policy/$defs/weekly_schedule"]])
	})

	#continuous_backup_config: close({
		encryption_config?: matchN(1, [_#defs."/$defs/continuous_backup_config/$defs/encryption_config", list.MaxItems(1) & [..._#defs."/$defs/continuous_backup_config/$defs/encryption_config"]])

		// Whether continuous backup recovery is enabled. If not set,
		// defaults to true.
		enabled?: bool

		// The numbers of days that are eligible to restore from using
		// PITR. To support the entire recovery window, backups and logs
		// are retained for one day more than the recovery window.
		//
		// If not set, defaults to 14 days.
		recovery_window_days?: number
	})

	#encryption_config: close({
		// The fully-qualified resource name of the KMS key. Each Cloud
		// KMS key is regionalized and has the following format:
		// projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
		kms_key_name?: string
	})

	#initial_user: close({
		// The initial password for the user.
		password?: string

		// The database username.
		user?: string
	})

	#maintenance_update_policy: close({
		maintenance_windows?: matchN(1, [_#defs."/$defs/maintenance_update_policy/$defs/maintenance_windows", [..._#defs."/$defs/maintenance_update_policy/$defs/maintenance_windows"]])
	})

	#network_config: close({
		// The name of the allocated IP range for the private IP AlloyDB
		// cluster. For example: "google-managed-services-default".
		// If set, the instance IPs for this cluster will be created in
		// the allocated range.
		allocated_ip_range?: string

		// The resource link for the VPC network in which cluster
		// resources are created and from which they are accessible via
		// Private IP. The network must belong to the same project as the
		// cluster.
		// It is specified in the form:
		// "projects/{projectNumber}/global/networks/{network_id}".
		network?: string
	})

	#psc_config: close({
		// Create an instance that allows connections from Private Service
		// Connect endpoints to the instance.
		psc_enabled?: bool

		// The project number that needs to be allowlisted on the network
		// attachment to enable outbound connectivity, if the network
		// attachment is configured to ACCEPT_MANUAL connections.
		// In case the network attachment is configured to
		// ACCEPT_AUTOMATIC, this project number does not need to be
		// allowlisted explicitly.
		service_owned_project_number?: number
	})

	#restore_backup_source: close({
		// The name of the backup that this cluster is restored from.
		backup_name!: string
	})

	#restore_backupdr_backup_source: close({
		// The name of the BackupDR backup that this cluster is restored
		// from. It must be of the format
		// "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]/backups/[BACKUP_ID]"
		backup!: string
	})

	#restore_backupdr_pitr_source: close({
		// The name of the BackupDR data source that this cluster is
		// restore from. It must be of the format
		// "projects/[PROJECT]/locations/[LOCATION]/backupVaults/[VAULT_ID]/dataSources/[DATASOURCE_ID]"
		data_source!: string

		// The point in time that this cluster is restored to, in RFC 3339
		// format.
		point_in_time!: string
	})

	#restore_continuous_backup_source: close({
		// The name of the source cluster that this cluster is restored
		// from.
		cluster!: string

		// The point in time that this cluster is restored to, in RFC 3339
		// format.
		point_in_time!: string
	})

	#secondary_config: close({
		// Name of the primary cluster must be in the format
		// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
		primary_cluster_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/automated_backup_policy/$defs/encryption_config": close({
		// The fully-qualified resource name of the KMS key. Each Cloud
		// KMS key is regionalized and has the following format:
		// projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
		kms_key_name?: string
	})

	_#defs: "/$defs/automated_backup_policy/$defs/quantity_based_retention": close({
		// The number of backups to retain.
		count?: number
	})

	_#defs: "/$defs/automated_backup_policy/$defs/time_based_retention": close({
		// The retention period.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		retention_period?: string
	})

	_#defs: "/$defs/automated_backup_policy/$defs/weekly_schedule": close({
		start_times!: matchN(1, [_#defs."/$defs/automated_backup_policy/$defs/weekly_schedule/$defs/start_times", [_, ...] & [..._#defs."/$defs/automated_backup_policy/$defs/weekly_schedule/$defs/start_times"]])

		// The days of the week to perform a backup. At least one day of
		// the week must be provided. Possible values: ["MONDAY",
		// "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY",
		// "SUNDAY"]
		days_of_week?: [...string]
	})

	_#defs: "/$defs/automated_backup_policy/$defs/weekly_schedule/$defs/start_times": close({
		// Hours of day in 24 hour format. Should be from 0 to 23. An API
		// may choose to allow the value "24:00:00" for scenarios like
		// business closing time.
		hours?: number

		// Minutes of hour of day. Currently, only the value 0 is
		// supported.
		minutes?: number

		// Fractions of seconds in nanoseconds. Currently, only the value
		// 0 is supported.
		nanos?: number

		// Seconds of minutes of the time. Currently, only the value 0 is
		// supported.
		seconds?: number
	})

	_#defs: "/$defs/continuous_backup_config/$defs/encryption_config": close({
		// The fully-qualified resource name of the KMS key. Each Cloud
		// KMS key is regionalized and has the following format:
		// projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
		kms_key_name?: string
	})

	_#defs: "/$defs/maintenance_update_policy/$defs/maintenance_windows": close({
		start_time!: matchN(1, [_#defs."/$defs/maintenance_update_policy/$defs/maintenance_windows/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_update_policy/$defs/maintenance_windows/$defs/start_time"]])

		// Preferred day of the week for maintenance, e.g. MONDAY,
		// TUESDAY, etc. Possible values: ["MONDAY", "TUESDAY",
		// "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day!: string
	})

	_#defs: "/$defs/maintenance_update_policy/$defs/maintenance_windows/$defs/start_time": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours!: number

		// Minutes of hour of day. Currently, only the value 0 is
		// supported.
		minutes?: number

		// Fractions of seconds in nanoseconds. Currently, only the value
		// 0 is supported.
		nanos?: number

		// Seconds of minutes of the time. Currently, only the value 0 is
		// supported.
		seconds?: number
	})
}
