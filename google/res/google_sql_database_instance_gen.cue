package res

import "list"

#google_sql_database_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_sql_database_instance")
	close({
		// Available Maintenance versions.
		available_maintenance_versions?: [...string]

		// The name of the BackupDR backup to restore from.
		backupdr_backup?: string

		// The connection name of the instance to be used in connection
		// strings. For example, when connecting with Cloud SQL Proxy.
		connection_name?: string

		// The MySQL, PostgreSQL or SQL Server (beta) version to use.
		// Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0,
		// MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11,
		// POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15,
		// POSTGRES_16, POSTGRES_17, SQLSERVER_2017_STANDARD,
		// SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS,
		// SQLSERVER_2017_WEB. Database Version Policies includes an
		// up-to-date reference of supported versions.
		database_version!: string

		// Used to block Terraform from deleting a SQL Instance. Defaults
		// to true.
		deletion_protection?: bool

		// The instance-level dns name of the instance for PSC instances
		// or public IP CAS instances.
		dns_name?: string

		// The list of DNS names used by this instance. Different
		// connection types for an instance may have different DNS names.
		// DNS names can apply to an individual instance or a cluster of
		// instances.
		dns_names?: [...close({
			connection_type?: string
			dns_scope?:       string
			name?:            string
		})]
		encryption_key_name?: string

		// The description of final backup if instance enable create final
		// backup during instance deletion.
		final_backup_description?: string

		// The first IPv4 address of any type assigned. This is to support
		// accessing the first address in the list in a terraform output
		// when the resource is configured with a count.
		first_ip_address?: string

		// The type of the instance. See
		// https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1/instances#SqlInstanceType
		// for supported values.
		instance_type?: string

		// Maintenance version.
		maintenance_version?: string
		id?:                  string

		// The name of the instance that will act as the master in the
		// replication setup. Note, this requires the master to have
		// binary_log_enabled set, as well as existing backups.
		master_instance_name?: string

		// The name of the instance. If the name is left blank, Terraform
		// will randomly generate one when the instance is first created.
		// This is done because after a name is used, it cannot be reused
		// for up to one week.
		name?: string
		ip_address?: [...close({
			ip_address?:     string
			time_to_retire?: string
			type?:           string
		})]

		// For a read pool instance, the number of nodes in the read pool.
		// For read pools with auto scaling enabled, this field is read
		// only.
		node_count?: number

		// IPv4 address assigned. This is a workaround for an issue fixed
		// in Terraform 0.12 but also provides a convenient way to access
		// an IP of a specific type without performing filtering in a
		// Terraform config.
		private_ip_address?: string
		clone?: matchN(1, [#clone, list.MaxItems(1) & [...#clone]])
		point_in_time_restore_context?: matchN(1, [#point_in_time_restore_context, list.MaxItems(1) & [...#point_in_time_restore_context]])
		replica_configuration?: matchN(1, [#replica_configuration, list.MaxItems(1) & [...#replica_configuration]])
		replication_cluster?: matchN(1, [#replication_cluster, list.MaxItems(1) & [...#replication_cluster]])
		restore_backup_context?: matchN(1, [#restore_backup_context, list.MaxItems(1) & [...#restore_backup_context]])
		settings?: matchN(1, [#settings, list.MaxItems(1) & [...#settings]])
		timeouts?: #timeouts

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The link to service attachment of PSC instance.
		psc_service_attachment_link?: string

		// IPv4 address assigned. This is a workaround for an issue fixed
		// in Terraform 0.12 but also provides a convenient way to access
		// an IP of a specific type without performing filtering in a
		// Terraform config.
		public_ip_address?: string

		// The region the instance will sit in. Note, Cloud SQL is not
		// available in all regions. A valid region must be provided to
		// use this resource. If a region is not provided in the resource
		// definition, the provider region will be used instead, but this
		// will be an apply-time error for instances if the provider
		// region is not supported with Cloud SQL. If you choose not to
		// provide the region argument for this resource, make sure you
		// understand this.
		region?: string

		// The replicas of the instance.
		replica_names?: [...string]

		// Initial root password. Required for MS SQL Server.
		root_password?: string

		// The URI of the created resource.
		self_link?: string
		server_ca_cert?: [...close({
			cert?:             string
			common_name?:      string
			create_time?:      string
			expiration_time?:  string
			sha1_fingerprint?: string
		})]

		// The service account email address assigned to the instance.
		service_account_email_address?: string
	})

	#clone: close({
		// The name of the allocated ip range for the private ip CloudSQL
		// instance. For example: "google-managed-services-default". If
		// set, the cloned instance ip will be created in the allocated
		// range. The range name must comply with [RFC
		// 1035](https://tools.ietf.org/html/rfc1035). Specifically, the
		// name must be 1-63 characters long and match the regular
		// expression [a-z]([-a-z0-9]*[a-z0-9])?.
		allocated_ip_range?: string

		// (SQL Server only, use with point_in_time) clone only the
		// specified databases from the source instance. Clone all
		// databases if empty.
		database_names?: [...string]

		// The timestamp of the point in time that should be restored.
		point_in_time?: string

		// (Point-in-time recovery for PostgreSQL only) Clone to an
		// instance in the specified zone. If no zone is specified, clone
		// to the same zone as the source instance.
		preferred_zone?: string

		// The timestamp of when the source instance was deleted for a
		// clone from a deleted instance.
		source_instance_deletion_time?: string

		// The name of the instance from which the point in time should be
		// restored.
		source_instance_name!: string
	})

	#point_in_time_restore_context: close({
		// The name of the allocated IP range for the internal IP Cloud
		// SQL instance. For example: "google-managed-services-default".
		// If you set this, then Cloud SQL creates the IP address for the
		// cloned instance in the allocated range. This range must comply
		// with [RFC 1035](https://tools.ietf.org/html/rfc1035)
		// standards. Specifically, the name must be 1-63 characters long
		// and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?.
		allocated_ip_range?: string

		// The Google Cloud Backup and Disaster Recovery Datasource URI.
		// For example:
		// "projects/my-project/locations/us-central1/datasources/my-datasource".
		datasource!: string

		// The date and time to which you want to restore the instance.
		point_in_time?: string

		// Point-in-time recovery of an instance to the specified zone. If
		// no zone is specified, then clone to the same primary zone as
		// the source instance.
		preferred_zone?: string

		// The name of the target instance to restore to.
		target_instance?: string
	})

	#replica_configuration: close({
		// PEM representation of the trusted CA's x509 certificate.
		ca_certificate?: string

		// Specifies if a SQL Server replica is a cascadable replica. A
		// cascadable replica is a SQL Server cross region replica that
		// supports replica(s) under it.
		cascadable_replica?: bool

		// PEM representation of the replica's x509 certificate.
		client_certificate?: string

		// PEM representation of the replica's private key. The
		// corresponding public key in encoded in the client_certificate.
		client_key?: string

		// The number of seconds between connect retries. MySQL's default
		// is 60 seconds.
		connect_retry_interval?: number

		// Path to a SQL file in Google Cloud Storage from which replica
		// instances are created. Format is gs://bucket/filename.
		dump_file_path?: string

		// Specifies if the replica is the failover target. If the field
		// is set to true the replica will be designated as a failover
		// replica. If the master instance fails, the replica instance
		// will be promoted as the new master instance. Not supported for
		// Postgres
		failover_target?: bool

		// Time in ms between replication heartbeats.
		master_heartbeat_period?: number

		// Password for the replication connection.
		password?: string

		// Permissible ciphers for use in SSL encryption.
		ssl_cipher?: string

		// Username for replication connection.
		username?: string

		// True if the master's common name value is checked during the
		// SSL handshake.
		verify_server_certificate?: bool
	})

	#replication_cluster: close({
		// Read-only field that indicates whether the replica is a DR
		// replica.
		dr_replica?: bool

		// If the instance is a primary instance, then this field
		// identifies the disaster recovery (DR) replica. The standard
		// format of this field is "your-project:your-instance". You can
		// also set this field to "your-instance", but cloud SQL backend
		// will convert it to the aforementioned standard format.
		failover_dr_replica_name?: string

		// If set, this field indicates this instance has a private
		// service access (PSA) DNS endpoint that is pointing to the
		// primary instance of the cluster. If this instance is the
		// primary, then the DNS endpoint points to this instance. After
		// a switchover or replica failover operation, this DNS endpoint
		// points to the promoted instance. This is a read-only field,
		// returned to the user as information. This field can exist even
		// if a standalone instance doesn't have a DR replica yet or the
		// DR replica is deleted.
		psa_write_endpoint?: string
	})

	#restore_backup_context: close({
		// The ID of the backup run to restore from.
		backup_run_id!: number

		// The ID of the instance that the backup was taken from.
		instance_id?: string

		// The full project ID of the source instance.
		project?: string
	})

	#settings: close({
		// This specifies when the instance should be active. Can be
		// either ALWAYS, NEVER or ON_DEMAND.
		activation_policy?: string

		// The availability type of the Cloud SQL instance, high
		// availability
		// (REGIONAL) or single zone (ZONAL). For all instances, ensure
		// that
		// settings.backup_configuration.enabled is set to true.
		// For MySQL instances, ensure that
		// settings.backup_configuration.binary_log_enabled is set to
		// true.
		// For Postgres instances, ensure that
		// settings.backup_configuration.point_in_time_recovery_enabled
		// is set to true. Defaults to ZONAL.
		// For read pool instances, this field is read-only. The
		// availability type is changed by specifying
		// the number of nodes (node_count).
		availability_type?: string

		// The name of server instance collation.
		collation?: string

		// Enables the enforcement of Cloud SQL Auth Proxy or Cloud SQL
		// connectors for all the connections. If enabled, all the direct
		// connections are rejected.
		connector_enforcement?: string

		// Configuration to protect against accidental instance deletion.
		deletion_protection_enabled?: bool

		// Enables auto-resizing of the storage size. Defaults to true.
		disk_autoresize?: bool

		// The maximum size, in GB, to which storage capacity can be
		// automatically increased. The default value is 0, which
		// specifies that there is no limit.
		disk_autoresize_limit?: number

		// The size of data disk, in GB. Size of a running instance cannot
		// be reduced but can be increased. The minimum value is 10GB for
		// PD_SSD, PD_HDD and 20GB for HYPERDISK_BALANCED.
		disk_size?: number

		// The type of supported data disk is tier dependent and can be
		// PD_SSD or PD_HDD or HYPERDISK_BALANCED.
		disk_type?: string

		// The edition of the instance, can be ENTERPRISE or
		// ENTERPRISE_PLUS.
		edition?: string

		// The availability type of the Cloud SQL instance, high
		// availability
		// (REGIONAL) or single zone (ZONAL). This field always contains
		// the value that is reported by the
		// API (for read pools, effective_availability_type may differ
		// from availability_type).
		effective_availability_type?: string
		active_directory_config?: matchN(1, [_#defs."/$defs/settings/$defs/active_directory_config", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/active_directory_config"]])
		advanced_machine_features?: matchN(1, [_#defs."/$defs/settings/$defs/advanced_machine_features", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/advanced_machine_features"]])
		backup_configuration?: matchN(1, [_#defs."/$defs/settings/$defs/backup_configuration", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/backup_configuration"]])
		connection_pool_config?: matchN(1, [_#defs."/$defs/settings/$defs/connection_pool_config", [..._#defs."/$defs/settings/$defs/connection_pool_config"]])
		data_cache_config?: matchN(1, [_#defs."/$defs/settings/$defs/data_cache_config", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/data_cache_config"]])
		database_flags?: matchN(1, [_#defs."/$defs/settings/$defs/database_flags", [..._#defs."/$defs/settings/$defs/database_flags"]])
		deny_maintenance_period?: matchN(1, [_#defs."/$defs/settings/$defs/deny_maintenance_period", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/deny_maintenance_period"]])
		final_backup_config?: matchN(1, [_#defs."/$defs/settings/$defs/final_backup_config", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/final_backup_config"]])
		insights_config?: matchN(1, [_#defs."/$defs/settings/$defs/insights_config", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/insights_config"]])
		ip_configuration?: matchN(1, [_#defs."/$defs/settings/$defs/ip_configuration", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/ip_configuration"]])
		location_preference?: matchN(1, [_#defs."/$defs/settings/$defs/location_preference", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/location_preference"]])
		maintenance_window?: matchN(1, [_#defs."/$defs/settings/$defs/maintenance_window", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/maintenance_window"]])
		password_validation_policy?: matchN(1, [_#defs."/$defs/settings/$defs/password_validation_policy", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/password_validation_policy"]])
		read_pool_auto_scale_config?: matchN(1, [_#defs."/$defs/settings/$defs/read_pool_auto_scale_config", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/read_pool_auto_scale_config"]])

		// Enables Dataplex Integration.
		enable_dataplex_integration?: bool
		sql_server_audit_config?: matchN(1, [_#defs."/$defs/settings/$defs/sql_server_audit_config", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/sql_server_audit_config"]])

		// Enables Vertex AI Integration.
		enable_google_ml_integration?: bool

		// Pricing plan for this instance, can only be PER_USE.
		pricing_plan?: string

		// When this parameter is set to true, Cloud SQL retains backups
		// of the instance even after the instance is deleted. The
		// ON_DEMAND backup will be retained until customer deletes the
		// backup or the project. The AUTOMATED backup will be retained
		// based on the backups retention setting.
		retain_backups_on_delete?: bool

		// The machine type to use. See tiers for more details and
		// supported versions. Postgres supports only shared-core machine
		// types, and custom machine types such as db-custom-2-13312. See
		// the Custom Machine Type Documentation to learn about
		// specifying custom machine types.
		tier!: string

		// The time_zone to be used by the database engine (supported only
		// for SQL Server), in SQL Server timezone format.
		time_zone?: string

		// A set of key/value user label pairs to assign to the instance.
		user_labels?: [string]: string

		// Used to make sure changes to the settings block are atomic.
		version?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/settings/$defs/active_directory_config": close({
		// Domain name of the Active Directory for SQL Server (e.g.,
		// mydomain.com).
		domain!: string
	})

	_#defs: "/$defs/settings/$defs/advanced_machine_features": close({
		// The number of threads per physical core. Can be 1 or 2.
		threads_per_core?: number
	})

	_#defs: "/$defs/settings/$defs/backup_configuration": close({
		// True if binary logging is enabled. If
		// settings.backup_configuration.enabled is false, this must be
		// as well. Can only be used with MySQL.
		binary_log_enabled?: bool

		// True if backup configuration is enabled.
		enabled?: bool

		// Location of the backup configuration.
		location?: string

		// True if Point-in-time recovery is enabled.
		point_in_time_recovery_enabled?: bool

		// HH:MM format time indicating when backup configuration starts.
		start_time?: string

		// The number of days of transaction logs we retain for point in
		// time restore, from 1-7. (For PostgreSQL Enterprise Plus
		// instances, from 1 to 35.)
		transaction_log_retention_days?: number
		backup_retention_settings?: matchN(1, [_#defs."/$defs/settings/$defs/backup_configuration/$defs/backup_retention_settings", list.MaxItems(1) & [..._#defs."/$defs/settings/$defs/backup_configuration/$defs/backup_retention_settings"]])
	})

	_#defs: "/$defs/settings/$defs/backup_configuration/$defs/backup_retention_settings": close({
		// Number of backups to retain.
		retained_backups!: number

		// The unit that 'retainedBackups' represents. Defaults to COUNT
		retention_unit?: string
	})

	_#defs: "/$defs/settings/$defs/connection_pool_config": close({
		flags?: matchN(1, [_#defs."/$defs/settings/$defs/connection_pool_config/$defs/flags", [..._#defs."/$defs/settings/$defs/connection_pool_config/$defs/flags"]])

		// Whether Managed Connection Pool is enabled for this instance.
		connection_pooling_enabled?: bool
	})

	_#defs: "/$defs/settings/$defs/connection_pool_config/$defs/flags": close({
		// Name of the flag.
		name!: string

		// Value of the flag.
		value!: string
	})

	_#defs: "/$defs/settings/$defs/data_cache_config": close({
		// Whether data cache is enabled for the instance.
		data_cache_enabled?: bool
	})

	_#defs: "/$defs/settings/$defs/database_flags": close({
		// Name of the flag.
		name!: string

		// Value of the flag.
		value!: string
	})

	_#defs: "/$defs/settings/$defs/deny_maintenance_period": close({
		// End date before which maintenance will not take place. The date
		// is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e.,
		// 11-01
		end_date!: string

		// Start date after which maintenance will not take place. The
		// date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e.,
		// 11-01
		start_date!: string

		// Time in UTC when the "deny maintenance period" starts on
		// start_date and ends on end_date. The time is in format:
		// HH:mm:SS, i.e., 00:00:00
		time!: string
	})

	_#defs: "/$defs/settings/$defs/final_backup_config": close({
		// When this parameter is set to true, the final backup is enabled
		// for the instance
		enabled?: bool

		// The number of days to retain the final backup after the
		// instance deletion. The valid range is between 1 and 365. For
		// instances managed by BackupDR, the valid range is between 1
		// day and 99 years. The final backup will be purged at
		// (time_of_instance_deletion + retention_days).
		retention_days?: number
	})

	_#defs: "/$defs/settings/$defs/insights_config": close({
		// True if Query Insights feature is enabled.
		query_insights_enabled?: bool

		// Number of query execution plans captured by Insights per minute
		// for all queries combined. Between 0 and 20. Default to 5. For
		// Enterprise Plus instances, from 0 to 200.
		query_plans_per_minute?: number

		// Maximum query length stored in bytes. Between 256 and 4500.
		// Default to 1024. For Enterprise Plus instances, from 1 to
		// 1048576.
		query_string_length?: number

		// True if Query Insights will record application tags from query
		// when enabled.
		record_application_tags?: bool

		// True if Query Insights will record client address when enabled.
		record_client_address?: bool
	})

	_#defs: "/$defs/settings/$defs/ip_configuration": close({
		// The name of the allocated ip range for the private ip CloudSQL
		// instance. For example: "google-managed-services-default". If
		// set, the instance ip will be created in the allocated range.
		// The range name must comply with RFC 1035. Specifically, the
		// name must be 1-63 characters long and match the regular
		// expression [a-z]([-a-z0-9]*[a-z0-9])?.
		allocated_ip_range?: string

		// The custom subject alternative names for an instance with
		// "CUSTOMER_MANAGED_CAS_CA" as the "server_ca_mode".
		custom_subject_alternative_names?: [...string]

		// Whether Google Cloud services such as BigQuery are allowed to
		// access data in this Cloud SQL instance over a private IP
		// connection. SQLSERVER database type is not supported.
		enable_private_path_for_google_cloud_services?: bool

		// Whether this Cloud SQL instance should be assigned a public
		// IPV4 address. At least ipv4_enabled must be enabled or a
		// private_network must be configured.
		ipv4_enabled?: bool

		// The VPC network from which the Cloud SQL instance is accessible
		// for private IP. For example,
		// projects/myProject/global/networks/default. Specifying a
		// network enables private IP. At least ipv4_enabled must be
		// enabled or a private_network must be configured. This setting
		// can be updated, but it cannot be removed after it is set.
		private_network?: string

		// Specify how the server certificate's Certificate Authority is
		// hosted.
		server_ca_mode?: string
		authorized_networks?: matchN(1, [_#defs."/$defs/settings/$defs/ip_configuration/$defs/authorized_networks", [..._#defs."/$defs/settings/$defs/ip_configuration/$defs/authorized_networks"]])
		psc_config?: matchN(1, [_#defs."/$defs/settings/$defs/ip_configuration/$defs/psc_config", [..._#defs."/$defs/settings/$defs/ip_configuration/$defs/psc_config"]])

		// The resource name of the server CA pool for an instance with
		// "CUSTOMER_MANAGED_CAS_CA" as the "server_ca_mode".
		server_ca_pool?: string

		// Specify how SSL connection should be enforced in DB
		// connections.
		ssl_mode?: string
	})

	_#defs: "/$defs/settings/$defs/ip_configuration/$defs/authorized_networks": close({
		expiration_time?: string
		name?:            string
		value!:           string
	})

	_#defs: "/$defs/settings/$defs/ip_configuration/$defs/psc_config": close({
		// List of consumer projects that are allow-listed for PSC
		// connections to this instance. This instance can be connected
		// to with PSC from any network in these projects. Each consumer
		// project in this list may be represented by a project number
		// (numeric) or by a project id (alphanumeric).
		allowed_consumer_projects?: [...string]
		psc_auto_connections?: matchN(1, [_#defs."/$defs/settings/$defs/ip_configuration/$defs/psc_config/$defs/psc_auto_connections", [..._#defs."/$defs/settings/$defs/ip_configuration/$defs/psc_config/$defs/psc_auto_connections"]])

		// Name of network attachment resource used to authorize a
		// producer service to connect a PSC interface to the consumer's
		// VPC. For example:
		// "projects/myProject/regions/myRegion/networkAttachments/myNetworkAttachment".
		// This is required to enable outbound connection on a PSC
		// instance.
		network_attachment_uri?: string

		// Whether PSC connectivity is enabled for this instance.
		psc_enabled?: bool
	})

	_#defs: "/$defs/settings/$defs/ip_configuration/$defs/psc_config/$defs/psc_auto_connections": close({
		// The consumer network of this consumer endpoint. This must be a
		// resource path that includes both the host project and the
		// network name. The consumer host project of this network might
		// be different from the consumer service project.
		consumer_network!: string

		// The connection policy status of the consumer network.
		consumer_network_status?: string

		// The project ID of consumer service project of this consumer
		// endpoint.
		consumer_service_project_id?: string

		// The IP address of the consumer endpoint.
		ip_address?: string

		// The connection status of the consumer endpoint.
		status?: string
	})

	_#defs: "/$defs/settings/$defs/location_preference": close({
		// A Google App Engine application whose zone to remain in. Must
		// be in the same region as this instance.
		follow_gae_application?: string

		// The preferred Compute Engine zone for the secondary/failover
		secondary_zone?: string

		// The preferred compute engine zone.
		zone?: string
	})

	_#defs: "/$defs/settings/$defs/maintenance_window": close({
		// Day of week (1-7), starting on Monday
		day?: number

		// Hour of day (0-23), ignored if day not set
		hour?: number

		// Receive updates after one week (canary) or after two weeks
		// (stable) or after five weeks (week5) of notification.
		update_track?: string
	})

	_#defs: "/$defs/settings/$defs/password_validation_policy": close({
		// Password complexity.
		complexity?: string

		// Disallow username as a part of the password.
		disallow_username_substring?: bool

		// Whether the password policy is enabled or not.
		enable_password_policy!: bool

		// Minimum number of characters allowed.
		min_length?: number

		// Minimum interval after which the password can be changed. This
		// flag is only supported for PostgresSQL.
		password_change_interval?: string

		// Number of previous passwords that cannot be reused.
		reuse_interval?: number
	})

	_#defs: "/$defs/settings/$defs/read_pool_auto_scale_config": close({
		// True if auto scale in is disabled.
		disable_scale_in?: bool

		// True if Read Pool Auto Scale is enabled.
		enabled?: bool

		// Maximum number of nodes in the read pool. If set to lower than
		// current node count, node count will be updated.
		max_node_count?: number

		// Minimum number of nodes in the read pool. If set to higher than
		// current node count, node count will be updated.
		min_node_count?: number

		// The cooldown period for scale in operations.
		scale_in_cooldown_seconds?: number

		// The cooldown period for scale out operations.
		scale_out_cooldown_seconds?: number
		target_metrics?: matchN(1, [_#defs."/$defs/settings/$defs/read_pool_auto_scale_config/$defs/target_metrics", [..._#defs."/$defs/settings/$defs/read_pool_auto_scale_config/$defs/target_metrics"]])
	})

	_#defs: "/$defs/settings/$defs/read_pool_auto_scale_config/$defs/target_metrics": close({
		// Metric name for Read Pool Auto Scale.
		metric?: string

		// Target value for Read Pool Auto Scale.
		target_value?: number
	})

	_#defs: "/$defs/settings/$defs/sql_server_audit_config": close({
		// The name of the destination bucket (e.g., gs://mybucket).
		bucket?: string

		// How long to keep generated audit files. A duration in seconds
		// with up to nine fractional digits, terminated by 's'. Example:
		// "3.5s"..
		retention_interval?: string

		// How often to upload generated audit files. A duration in
		// seconds with up to nine fractional digits, terminated by 's'.
		// Example: "3.5s".
		upload_interval?: string
	})
}
