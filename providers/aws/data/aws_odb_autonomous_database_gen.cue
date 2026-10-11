package data

aws_odb_autonomous_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_odb_autonomous_database")
	close({
		// Actual amount of data storage currently in use, in TB.
		actual_used_data_storage_size_in_tbs?: number

		// Source of the ADMIN password.
		admin_password_source?: [...close({
			customer_managed_aws_secret?: [...close({
				external_id_type?: string
				iam_role_arn?:     string
				secret_arn?:       string
			})]
		})]

		// Amount of storage currently allocated, in TB.
		allocated_storage_size_in_tbs?: number

		// IP addresses allowed to access the Autonomous Database.
		allowlisted_ips?: [...string]
		arn?: string

		// Automatic refresh frequency, in seconds.
		auto_refresh_frequency_in_seconds?: number

		// Refresh lag from the source, in seconds.
		auto_refresh_point_lag_in_seconds?: number

		// Maintenance schedule type.
		autonomous_maintenance_schedule_type?: string

		// Availability Zone of the Autonomous Database.
		availability_zone?: string

		// Availability Zone ID of the Autonomous Database.
		availability_zone_id?: string

		// Oracle Database versions available for upgrade.
		available_upgrade_versions?: [...string]

		// Automatic backup retention period, in days.
		backup_retention_period_in_days?: number

		// Maximum BYOL compute capacity.
		byol_compute_count_limit?: number

		// Database character set.
		character_set?: string

		// Compute capacity in ECPUs or OCPUs.
		compute_count?: number

		// Compute model.
		compute_model?: string

		// Allocated CPU core count.
		cpu_core_count?: number

		// Creation date and time.
		created_at?: string

		// Customer contacts that receive operational notifications from OCI.
		customer_contacts_to_send_to_oci?: [...close({
			email?: string
		})]

		// Data volume size in GB.
		data_storage_size_in_gbs?: number

		// Data volume size in TB.
		data_storage_size_in_tbs?: number

		// Oracle Database edition.
		database_edition?: string

		// Autonomous Database type.
		database_type?: string

		// Database name.
		db_name?: string

		// Database management tools enabled for the Autonomous Database.
		db_tools_details?: [...close({
			compute_count?:            number
			is_enabled?:               bool
			max_idle_time_in_minutes?: number
			name?:                     string
		})]

		// Oracle Database software version.
		db_version?: string

		// Database workload.
		db_workload?: string

		// User-friendly database name.
		display_name?: string

		// Encryption key provider.
		encryption_key_provider?: string

		// Unique identifier of the Autonomous Database.
		id!: string

		// Whether automatic compute scaling is enabled.
		is_auto_scaling_enabled?: bool

		// Whether automatic storage scaling is enabled.
		is_auto_scaling_for_storage_enabled?: bool

		// Whether backup retention is locked.
		is_backup_retention_locked?: bool

		// Whether local Data Guard is enabled.
		is_local_data_guard_enabled?: bool

		// Whether mTLS is required.
		is_mtls_connection_required?: bool

		// Whether the database is a refreshable clone.
		is_refreshable_clone?: bool

		// ARN of the AWS KMS encryption key.
		kms_key_id?: string

		// Oracle license model.
		license_model?: string

		// Maximum automatic-failover data-loss limit, in seconds.
		local_adg_auto_failover_max_data_loss_limit?: number

		// Long-term backup schedule.
		long_term_backup_schedule?: [...close({
			is_disabled?:              bool
			repeat_cadence?:           string
			retention_period_in_days?: number
			time_of_backup?:           string
		})]

		// National character set.
		ncharacter_set?: string

		// OCI resource anchor name.
		oci_resource_anchor_name?: string

		// OCI console URL.
		oci_url?: string

		// Oracle Cloud Identifier.
		ocid?: string

		// ARN of the associated ODB network.
		odb_network_arn?: string

		// ID of the associated ODB network.
		odb_network_id?: string

		// Database open mode.
		open_mode?: string

		// Progress of the current operation.
		percent_progress?: number

		// Database permission level.
		permission_level?: string

		// Private endpoint.
		private_endpoint?: string

		// Private endpoint IP address.
		private_endpoint_ip?: string

		// Private endpoint label.
		private_endpoint_label?: string

		// Refreshable clone mode.
		refreshable_mode?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Resource-pool leader database ID.
		resource_pool_leader_id?: string

		// Resource pool configuration.
		resource_pool_summary?: [...close({
			available_compute_capacity?:        number
			available_storage_capacity_in_tbs?: number
			is_disabled?:                       bool
			pool_size?:                         number
			pool_storage_size_in_tbs?:          number
			total_compute_capacity?:            number
		})]

		// Scheduled database start and stop times.
		scheduled_operations?: [...close({
			day_of_week?:          string
			scheduled_start_time?: string
			scheduled_stop_time?:  string
		})]

		// Oracle service console URL.
		service_console_url?: string

		// Source database or backup ID.
		source_id?: string

		// Oracle SQL Developer Web URL.
		sql_web_developer_url?: string

		// IP addresses allowed to access the standby database.
		standby_allowlisted_ips?: [...string]

		// Source of standby allowlisted IPs.
		standby_allowlisted_ips_source?: string

		// Current database status.
		status?: string

		// Additional status information.
		status_reason?: string
		tags?: [string]: string

		// Automatic refresh start time.
		time_of_auto_refresh_start?: string
	})
}
