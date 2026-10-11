package res

aws_odb_autonomous_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_odb_autonomous_database")
	close({
		admin_password_source?: matchN(1, [#admin_password_source, [...#admin_password_source]])
		customer_contacts_to_send_to_oci?: matchN(1, [#customer_contacts_to_send_to_oci, [...#customer_contacts_to_send_to_oci]])
		db_tools_details?: matchN(1, [#db_tools_details, [...#db_tools_details]])
		long_term_backup_schedule?: matchN(1, [#long_term_backup_schedule, [...#long_term_backup_schedule]])
		resource_pool_summary?: matchN(1, [#resource_pool_summary, [...#resource_pool_summary]])
		scheduled_operations?: matchN(1, [#scheduled_operations, [...#scheduled_operations]])
		source_configuration?: matchN(1, [#source_configuration, [...#source_configuration]])
		timeouts?: #timeouts
		transportable_tablespace?: matchN(1, [#transportable_tablespace, [...#transportable_tablespace]])

		// Actual amount of data storage currently in use, in TB.
		actual_used_data_storage_size_in_tbs?: number

		// Password for the ADMIN user. This value is stored in Terraform state. Use
		// admin_password_wo with Terraform 1.11 or later to avoid storing the password
		// in state.
		admin_password?: string

		// Password for the ADMIN user. This write-only value is never stored in Terraform state.
		admin_password_wo?: string

		// Arbitrary version used to trigger an ADMIN password update.
		admin_password_wo_version?: number

		// Amount of storage currently allocated, in TB.
		allocated_storage_size_in_tbs?: number

		// IP addresses allowed to access the Autonomous Database.
		allowlisted_ips?: [...string]
		arn?: string

		// Frequency at which a refreshable clone is automatically refreshed, in seconds.
		auto_refresh_frequency_in_seconds?: number

		// Time lag between a refreshable clone and its source, in seconds.
		auto_refresh_point_lag_in_seconds?: number

		// Maintenance schedule type for the Autonomous Database.
		autonomous_maintenance_schedule_type?: string

		// Availability Zone where the Autonomous Database is located.
		availability_zone?: string

		// Availability Zone ID where the Autonomous Database is located.
		availability_zone_id?: string

		// Oracle Database versions to which the Autonomous Database can be upgraded.
		available_upgrade_versions?: [...string]

		// Retention period for automatic backups, in days.
		backup_retention_period_in_days?: number

		// Maximum compute capacity under the bring-your-own-license model.
		byol_compute_count_limit?: number

		// Character set of the Autonomous Database.
		character_set?: string

		// Compute capacity in ECPUs or OCPUs.
		compute_count?: number

		// Compute model of the Autonomous Database.
		compute_model?: string

		// Number of CPU cores allocated to the Autonomous Database.
		cpu_core_count?: number

		// Date and time when the Autonomous Database was created.
		created_at?: string

		// Data volume size in GB.
		data_storage_size_in_gbs?: number

		// Data volume size in TB. Configured values must be whole numbers; computed
		// values may be fractional when storage is configured in GB.
		data_storage_size_in_tbs?: number

		// Oracle Database edition.
		database_edition?: string

		// Type of Autonomous Database.
		database_type?: string

		// Name of the Autonomous Database.
		db_name?: string

		// Oracle Database software version.
		db_version?: string

		// Intended database workload.
		db_workload?: string

		// User-friendly name for the Autonomous Database.
		display_name?: string

		// Encryption key provider. Configurable values are ORACLE_MANAGED and AWS_KMS.
		encryption_key_provider?: string

		// Whether automatic compute scaling is enabled.
		is_auto_scaling_enabled?: bool
		id?:                      string

		// Whether automatic storage scaling is enabled.
		is_auto_scaling_for_storage_enabled?: bool

		// Whether the backup retention period is locked.
		is_backup_retention_locked?: bool

		// Whether local Oracle Data Guard is enabled.
		is_local_data_guard_enabled?: bool

		// Whether mutual TLS authentication is required.
		is_mtls_connection_required?: bool

		// Whether the Autonomous Database is a refreshable clone.
		is_refreshable_clone?: bool

		// ARN of the AWS KMS key used to encrypt the Autonomous Database.
		kms_key_id?: string

		// Oracle license model.
		license_model?: string

		// Maximum data-loss limit for automatic local Data Guard failover, in seconds.
		local_adg_auto_failover_max_data_loss_limit?: number

		// National character set of the Autonomous Database.
		ncharacter_set?: string

		// Name of the OCI resource anchor.
		oci_resource_anchor_name?: string

		// URL for the Autonomous Database in the OCI console.
		oci_url?: string

		// Oracle Cloud Identifier of the Autonomous Database.
		ocid?: string

		// ARN of the associated ODB network.
		odb_network_arn?: string

		// ID of the associated ODB network.
		odb_network_id?: string

		// Open mode of the Autonomous Database.
		open_mode?: string

		// Progress of the current operation, as a percentage.
		percent_progress?: number

		// Permission level of the Autonomous Database.
		permission_level?: string

		// Private endpoint of the Autonomous Database.
		private_endpoint?: string

		// Private endpoint IP address.
		private_endpoint_ip?: string

		// Private endpoint label.
		private_endpoint_label?: string

		// Refresh mode of a refreshable clone.
		refreshable_mode?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// ID of the resource-pool leader Autonomous Database.
		resource_pool_leader_id?: string

		// URL for the Oracle service console.
		service_console_url?: string

		// Source from which to create the Autonomous Database.
		source?: string

		// ID of the source used to create the Autonomous Database.
		source_id?: string

		// URL for Oracle SQL Developer Web.
		sql_web_developer_url?: string

		// IP addresses allowed to access the standby Autonomous Database.
		standby_allowlisted_ips?: [...string]

		// Source of the standby allowlisted IP addresses.
		standby_allowlisted_ips_source?: string

		// Current status of the Autonomous Database.
		status?: string

		// Additional information about the current status.
		status_reason?: string

		// Date and time when automatic refresh begins.
		time_of_auto_refresh_start?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#admin_password_source: close({
		customer_managed_aws_secret?: matchN(1, [_#defs."/$defs/admin_password_source/$defs/customer_managed_aws_secret", [..._#defs."/$defs/admin_password_source/$defs/customer_managed_aws_secret"]])
	})

	#customer_contacts_to_send_to_oci: close({
		// Email address of the customer contact.
		email!: string
	})

	#db_tools_details: close({
		// Compute capacity allocated to the database tool.
		compute_count?: number

		// Whether the database tool is enabled.
		is_enabled?: bool

		// Maximum idle time before the database tool is shut down, in minutes.
		max_idle_time_in_minutes?: number

		// Name of the database tool.
		name?: string
	})

	#long_term_backup_schedule: close({
		// Whether the long-term backup schedule is disabled.
		is_disabled?: bool

		// Cadence at which long-term backups are taken.
		repeat_cadence?: string

		// Retention period for long-term backups, in days.
		retention_period_in_days?: number

		// Date and time at which the long-term backup is taken.
		time_of_backup?: string
	})

	#resource_pool_summary: close({
		// Available compute capacity in the resource pool.
		available_compute_capacity?: number

		// Available storage capacity in the resource pool, in TB.
		available_storage_capacity_in_tbs?: number

		// Whether the resource pool is disabled.
		is_disabled?: bool

		// Number of Autonomous Databases the resource pool can contain.
		pool_size?: number

		// Total storage size of the resource pool, in TB.
		pool_storage_size_in_tbs?: number

		// Total compute capacity of the resource pool.
		total_compute_capacity?: number
	})

	#scheduled_operations: close({
		// Day of the week.
		day_of_week!: string

		// Scheduled start time in UTC.
		scheduled_start_time?: string

		// Scheduled stop time in UTC.
		scheduled_stop_time?: string
	})

	#source_configuration: close({
		clone_to_refreshable?: matchN(1, [_#defs."/$defs/source_configuration/$defs/clone_to_refreshable", [..._#defs."/$defs/source_configuration/$defs/clone_to_refreshable"]])
		cross_region_data_guard?: matchN(1, [_#defs."/$defs/source_configuration/$defs/cross_region_data_guard", [..._#defs."/$defs/source_configuration/$defs/cross_region_data_guard"]])
		cross_region_disaster_recovery?: matchN(1, [_#defs."/$defs/source_configuration/$defs/cross_region_disaster_recovery", [..._#defs."/$defs/source_configuration/$defs/cross_region_disaster_recovery"]])
		database_clone?: matchN(1, [_#defs."/$defs/source_configuration/$defs/database_clone", [..._#defs."/$defs/source_configuration/$defs/database_clone"]])
		point_in_time_restore?: matchN(1, [_#defs."/$defs/source_configuration/$defs/point_in_time_restore", [..._#defs."/$defs/source_configuration/$defs/point_in_time_restore"]])
		restore_from_backup?: matchN(1, [_#defs."/$defs/source_configuration/$defs/restore_from_backup", [..._#defs."/$defs/source_configuration/$defs/restore_from_backup"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	#transportable_tablespace: close({
		// URL of the transportable tablespace bundle.
		tts_bundle_url?: string
	})

	_#defs: "/$defs/admin_password_source/$defs/customer_managed_aws_secret": close({
		// Type of OCI identifier supplied as the external ID when OCI assumes the IAM role.
		external_id_type!: string

		// ARN of the customer-managed IAM role OCI assumes to retrieve the secret.
		iam_role_arn!: string

		// ARN of the AWS Secrets Manager secret that contains the ADMIN password.
		secret_arn!: string
	})

	_#defs: "/$defs/source_configuration/$defs/clone_to_refreshable": close({
		// Frequency at which the refreshable clone is automatically refreshed, in seconds.
		auto_refresh_frequency_in_seconds?: number

		// Time lag between the refreshable clone and its source, in seconds.
		auto_refresh_point_lag_in_seconds?: number

		// Type of clone to create.
		clone_type?: string

		// Open mode of the refreshable clone.
		open_mode?: string

		// Refresh mode of the clone.
		refreshable_mode?: string

		// ID of the source Autonomous Database.
		source_autonomous_database_id!: string

		// Date and time when automatic refresh starts.
		time_of_auto_refresh_start?: string
	})

	_#defs: "/$defs/source_configuration/$defs/cross_region_data_guard": close({
		// ARN of the source Autonomous Database.
		source_autonomous_database_arn!: string
	})

	_#defs: "/$defs/source_configuration/$defs/cross_region_disaster_recovery": close({
		// Whether automatic backups are replicated to the disaster recovery database.
		is_replicate_automatic_backups?: bool

		// Type of remote disaster recovery.
		remote_disaster_recovery_type!: string

		// ARN of the source Autonomous Database.
		source_autonomous_database_arn!: string
	})

	_#defs: "/$defs/source_configuration/$defs/database_clone": close({
		// Type of clone to create.
		clone_type!: string

		// ID of the source Autonomous Database.
		source_autonomous_database_id!: string
	})

	_#defs: "/$defs/source_configuration/$defs/point_in_time_restore": close({
		// Tablespace IDs to clone.
		clone_table_space_list?: [...number]

		// Type of clone to create.
		clone_type!: string

		// ID of the source Autonomous Database.
		source_autonomous_database_id!: string

		// Date and time to which the database is restored.
		timestamp?: string

		// Whether to use the latest available backup timestamp.
		use_latest_available_backup_timestamp?: bool
	})

	_#defs: "/$defs/source_configuration/$defs/restore_from_backup": close({
		// ID of the Autonomous Database backup.
		autonomous_database_backup_id!: string

		// Tablespace IDs to clone.
		clone_table_space_list?: [...number]

		// Type of clone to create from the backup.
		clone_type!: string
	})
}
