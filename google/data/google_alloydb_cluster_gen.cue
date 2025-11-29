package data

#google_alloydb_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_alloydb_cluster")
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

		// The automated backup policy for this cluster.
		// AutomatedBackupPolicy is disabled by default.
		automated_backup_policy?: [...close({
			backup_window?: string
			enabled?:       bool
			encryption_config?: [...close({
				kms_key_name?: string
			})]
			labels?: [string]: string
			location?: string
			quantity_based_retention?: [...close({
				count?: number
			})]
			time_based_retention?: [...close({
				retention_period?: string
			})]
			weekly_schedule?: [...close({
				days_of_week?: [...string]
				start_times?: [...close({
					hours?:   number
					minutes?: number
					nanos?:   number
					seconds?: number
				})]
			})]
		})]

		// Cluster created from backup.
		backup_source?: [...close({
			backup_name?: string
		})]

		// The ID of the alloydb cluster.
		cluster_id!: string

		// The type of cluster. If not set, defaults to PRIMARY. Default
		// value: "PRIMARY" Possible values: ["PRIMARY", "SECONDARY"]
		cluster_type?: string

		// The continuous backup config for this cluster.
		//
		// If no policy is provided then the default policy will be used.
		// The default policy takes one backup a day and retains backups
		// for 14 days.
		continuous_backup_config?: [...close({
			enabled?: bool
			encryption_config?: [...close({
				kms_key_name?: string
			})]
			recovery_window_days?: number
		})]

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

		// EncryptionConfig describes the encryption config of a cluster
		// or a backup that is encrypted with a CMEK (customer-managed
		// encryption key).
		encryption_config?: [...close({
			kms_key_name?: string
		})]

		// EncryptionInfo describes the encryption information of a
		// cluster or a backup.
		encryption_info?: [...close({
			encryption_type?: string
			kms_key_versions?: [...string]
		})]

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string
		id?:   string

		// Initial user to setup during cluster creation. This must be set
		// for all new Clusters.
		initial_user?: [...close({
			password?: string
			user?:     string
		})]

		// User-defined labels for the alloydb cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the alloydb cluster should reside.
		location?: string

		// MaintenanceUpdatePolicy defines the policy for system updates.
		maintenance_update_policy?: [...close({
			maintenance_windows?: [...close({
				day?: string
				start_time?: [...close({
					hours?:   number
					minutes?: number
					nanos?:   number
					seconds?: number
				})]
			})]
		})]

		// Cluster created via DMS migration.
		migration_source?: [...close({
			host_port?:    string
			reference_id?: string
			source_type?:  string
		})]

		// The name of the cluster resource.
		name?: string

		// Metadata related to network configuration.
		network_config?: [...close({
			allocated_ip_range?: string
			network?:            string
		})]
		project?: string

		// Configuration for Private Service Connect (PSC) for the
		// cluster.
		psc_config?: [...close({
			psc_enabled?:                  bool
			service_owned_project_number?: number
		})]

		// Output only. Reconciling
		// (https://google.aip.dev/128#reconciliation).
		// Set to true if the current state of Cluster does not match the
		// user's intended state, and the service is actively updating
		// the resource to reconcile them.
		// This can happen due to user-triggered updates or system actions
		// like failover or maintenance.
		reconciling?: bool

		// The source when restoring from a backup. Conflicts with
		// 'restore_continuous_backup_source', both can't be set
		// together.
		restore_backup_source?: [...close({
			backup_name?: string
		})]

		// The source when restoring via point in time recovery (PITR).
		// Conflicts with 'restore_backup_source', both can't be set
		// together.
		restore_continuous_backup_source?: [...close({
			cluster?:       string
			point_in_time?: string
		})]

		// Configuration of the secondary cluster for Cross Region
		// Replication. This should be set if and only if the cluster is
		// of type SECONDARY.
		secondary_config?: [...close({
			primary_cluster_name?: string
		})]

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
}
