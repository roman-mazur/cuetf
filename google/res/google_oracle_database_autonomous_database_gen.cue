package res

import "list"

#google_oracle_database_autonomous_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_autonomous_database")
	close({
		// The password for the default ADMIN user.
		admin_password?: string

		// The ID of the Autonomous Database to create. This value is
		// restricted
		// to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63
		// characters in length. The value must start with a letter and
		// end with
		// a letter or a number.
		autonomous_database_id!: string

		// The subnet CIDR range for the Autonmous Database.
		cidr?: string

		// The date and time that the Autonomous Database was created.
		create_time?: string

		// The name of the Autonomous Database. The database name must be
		// unique in
		// the project. The name must begin with a letter and can
		// contain a maximum of 30 alphanumeric characters.
		database?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// List of supported GCP region to clone the Autonomous Database
		// for disaster recovery.
		disaster_recovery_supported_locations?: [...string]

		// The display name for the Autonomous Database. The name does not
		// have to
		// be unique within your project.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// Autonomous
		// Database.
		entitlement_id?: string
		id?:             string

		// The labels or tags associated with the Autonomous Database.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. See
		// documentation for resource type
		// 'oracledatabase.googleapis.com/AutonomousDatabaseBackup'.
		location!: string
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		source_config?: matchN(1, [#source_config, list.MaxItems(1) & [...#source_config]])
		timeouts?: #timeouts

		// Identifier. The name of the Autonomous Database resource in the
		// following format:
		// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
		name?: string

		// The name of the VPC network used by the Autonomous Database.
		// Format: projects/{project}/global/networks/{network}
		network?: string

		// The name of the OdbNetwork associated with the Autonomous
		// Database.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}
		// It is optional but if specified, this should match the parent
		// ODBNetwork of
		// the odb_subnet and backup_odb_subnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the Autonomous
		// Database for
		// IP allocation. Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet?: string

		// The peer Autonomous Database names of the given Autonomous
		// Database.
		peer_autonomous_databases?: [...string]
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// The amount of storage currently being used for user and system
		// data, in
		// terabytes.
		actual_used_data_storage_size_tb?: number

		// The amount of storage currently allocated for the database
		// tables and
		// billed for, rounded up in terabytes.
		allocated_storage_size_tb?: number

		// Oracle APEX Application Development.
		// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex
		apex_details?: [...close({
			apex_version?: string
			ords_version?: string
		})]

		// This field indicates the status of Data Guard and Access
		// control for the
		// Autonomous Database. The field's value is null if Data Guard is
		// disabled
		// or Access Control is disabled. The field's value is TRUE if
		// both Data Guard
		// and Access Control are enabled, and the Autonomous Database is
		// using
		// primary IP access control list (ACL) for standby. The field's
		// value is
		// FALSE if both Data Guard and Access Control are enabled, and
		// the Autonomous
		// Database is using a different IP access control list (ACL) for
		// standby
		// compared to primary.
		are_primary_allowlisted_ips_used?: bool

		// The Autonomous Container Database OCID.
		autonomous_container_database_id?: string

		// The list of available Oracle Database upgrade versions for an
		// Autonomous
		// Database.
		available_upgrade_versions?: [...string]

		// The retention period for the Autonomous Database. This field is
		// specified
		// in days, can range from 1 day to 60 days, and has a default
		// value of
		// 60 days.
		backup_retention_period_days?: number

		// The character set for the Autonomous Database. The default is
		// AL32UTF8.
		character_set?: string

		// The number of compute servers for the Autonomous Database.
		compute_count?: number

		// The connection string used to connect to the Autonomous
		// Database.
		// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings
		connection_strings?: [...close({
			all_connection_strings?: [...close({
				high?:   string
				low?:    string
				medium?: string
			})]
			dedicated?: string
			high?:      string
			low?:       string
			medium?:    string
			profiles?: [...close({
				consumer_group?:     string
				display_name?:       string
				host_format?:        string
				is_regional?:        bool
				protocol?:           string
				session_mode?:       string
				syntax_format?:      string
				tls_authentication?: string
				value?:              string
			})]
		})]

		// The URLs for accessing Oracle Application Express (APEX) and
		// SQL Developer
		// Web with a browser from a Compute instance.
		// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
		connection_urls?: [...close({
			apex_uri?:                             string
			database_transforms_uri?:              string
			graph_studio_uri?:                     string
			machine_learning_notebook_uri?:        string
			machine_learning_user_management_uri?: string
			mongo_db_uri?:                         string
			ords_uri?:                             string
			sql_dev_web_uri?:                      string
		})]

		// The number of CPU cores to be made available to the database.
		cpu_core_count?: number

		// The current state of the Data Safe registration for the
		// Autonomous Database.
		// Possible values:
		// DATA_SAFE_STATE_UNSPECIFIED
		// REGISTERING
		// REGISTERED
		// DEREGISTERING
		// NOT_REGISTERED
		// FAILED
		data_safe_state?: string

		// The size of the data stored in the database, in gigabytes.
		data_storage_size_gb?: number

		// The size of the data stored in the database, in terabytes.
		data_storage_size_tb?: number

		// The current state of database management for the Autonomous
		// Database.
		// Possible values:
		// DATABASE_MANAGEMENT_STATE_UNSPECIFIED
		// ENABLING
		// ENABLED
		// DISABLING
		// NOT_ENABLED
		// FAILED_ENABLING
		// FAILED_DISABLING
		database_management_state?: string

		// The edition of the Autonomous Databases.
		// Possible values:
		// DATABASE_EDITION_UNSPECIFIED
		// STANDARD_EDITION
		// ENTERPRISE_EDITION
		db_edition?: string

		// The Oracle Database version for the Autonomous Database.
		db_version?: string

		// Possible values:
		// DB_WORKLOAD_UNSPECIFIED
		// OLTP
		// DW
		// AJD
		// APEX
		db_workload!: string

		// This field indicates the number of seconds of data loss during
		// a Data
		// Guard failover.
		failed_data_recovery_duration?: string

		// This field indicates if auto scaling is enabled for the
		// Autonomous Database
		// CPU core count.
		is_auto_scaling_enabled?: bool

		// This field indicates whether the Autonomous Database has local
		// (in-region)
		// Data Guard enabled.
		is_local_data_guard_enabled?: bool

		// This field indicates if auto scaling is enabled for the
		// Autonomous Database
		// storage.
		is_storage_auto_scaling_enabled?: bool

		// The license type used for the Autonomous Database.
		// Possible values:
		// LICENSE_TYPE_UNSPECIFIED
		// LICENSE_INCLUDED
		// BRING_YOUR_OWN_LICENSE
		license_type!: string

		// The details of the current lifestyle state of the Autonomous
		// Database.
		lifecycle_details?: string

		// This field indicates the maximum data loss limit for an
		// Autonomous
		// Database, in seconds.
		local_adg_auto_failover_max_data_loss_limit?: number

		// This field indicates the local disaster recovery (DR) type of
		// an
		// Autonomous Database.
		// Possible values:
		// LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED
		// ADG
		// BACKUP_BASED
		local_disaster_recovery_type?: string

		// Autonomous Data Guard standby database details.
		// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
		local_standby_db?: [...close({
			data_guard_role_changed_time?:        string
			disaster_recovery_role_changed_time?: string
			lag_time_duration?:                   string
			lifecycle_details?:                   string
			state?:                               string
		})]

		// The date and time when maintenance will begin.
		maintenance_begin_time?: string

		// The date and time when maintenance will end.
		maintenance_end_time?: string
		customer_contacts?: matchN(1, [_#defs."/$defs/properties/$defs/customer_contacts", [..._#defs."/$defs/properties/$defs/customer_contacts"]])

		// The maintenance schedule of the Autonomous Database.
		// Possible values:
		// MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED
		// EARLY
		// REGULAR
		maintenance_schedule_type?: string

		// The amount of memory enabled per ECPU, in gigabytes.
		memory_per_oracle_compute_unit_gbs?: number

		// The memory assigned to in-memory tables in an Autonomous
		// Database.
		memory_table_gbs?: number

		// This field specifies if the Autonomous Database requires mTLS
		// connections.
		mtls_connection_required?: bool

		// The national character set for the Autonomous Database. The
		// default is
		// AL16UTF16.
		n_character_set?: string

		// The long term backup schedule of the Autonomous Database.
		next_long_term_backup_time?: string

		// The Oracle Cloud Infrastructure link for the Autonomous
		// Database.
		oci_url?: string

		// OCID of the Autonomous Database.
		// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
		ocid?: string

		// This field indicates the current mode of the Autonomous
		// Database.
		// Possible values:
		// OPEN_MODE_UNSPECIFIED
		// READ_ONLY
		// READ_WRITE
		open_mode?: string

		// Possible values:
		// OPERATIONS_INSIGHTS_STATE_UNSPECIFIED
		// ENABLING
		// ENABLED
		// DISABLING
		// NOT_ENABLED
		// FAILED_ENABLING
		// FAILED_DISABLING
		operations_insights_state?: string

		// The list of OCIDs of standby databases located in Autonomous
		// Data Guard
		// remote regions that are associated with the source database.
		peer_db_ids?: [...string]

		// The permission level of the Autonomous Database.
		// Possible values:
		// PERMISSION_LEVEL_UNSPECIFIED
		// RESTRICTED
		// UNRESTRICTED
		permission_level?: string

		// The private endpoint for the Autonomous Database.
		private_endpoint?: string

		// The private endpoint IP address for the Autonomous Database.
		private_endpoint_ip?: string

		// The private endpoint label for the Autonomous Database.
		private_endpoint_label?: string

		// The refresh mode of the cloned Autonomous Database.
		// Possible values:
		// REFRESHABLE_MODE_UNSPECIFIED
		// AUTOMATIC
		// MANUAL
		refreshable_mode?: string

		// The refresh State of the clone.
		// Possible values:
		// REFRESHABLE_STATE_UNSPECIFIED
		// REFRESHING
		// NOT_REFRESHING
		refreshable_state?: string

		// The Data Guard role of the Autonomous Database.
		// Possible values:
		// ROLE_UNSPECIFIED
		// PRIMARY
		// STANDBY
		// DISABLED_STANDBY
		// BACKUP_COPY
		// SNAPSHOT_STANDBY
		role?: string

		// The list and details of the scheduled operations of the
		// Autonomous
		// Database.
		scheduled_operation_details?: [...close({
			day_of_week?: string
			start_time?: [...close({
				hours?:   number
				minutes?: number
				nanos?:   number
				seconds?: number
			})]
			stop_time?: [...close({
				hours?:   number
				minutes?: number
				nanos?:   number
				seconds?: number
			})]
		})]

		// The ID of the Oracle Cloud Infrastructure vault secret.
		secret_id?: string

		// The SQL Web Developer URL for the Autonomous Database.
		sql_web_developer_url?: string

		// Possible values:
		// STATE_UNSPECIFIED
		// PROVISIONING
		// AVAILABLE
		// STOPPING
		// STOPPED
		// STARTING
		// TERMINATING
		// TERMINATED
		// UNAVAILABLE
		// RESTORE_IN_PROGRESS
		// RESTORE_FAILED
		// BACKUP_IN_PROGRESS
		// SCALE_IN_PROGRESS
		// AVAILABLE_NEEDS_ATTENTION
		// UPDATING
		// MAINTENANCE_IN_PROGRESS
		// RESTARTING
		// RECREATING
		// ROLE_CHANGE_IN_PROGRESS
		// UPGRADING
		// INACCESSIBLE
		// STANDBY
		state?: string

		// The list of available regions that can be used to create a
		// clone for the
		// Autonomous Database.
		supported_clone_regions?: [...string]

		// The storage space used by automatic backups of Autonomous
		// Database, in
		// gigabytes.
		total_auto_backup_storage_size_gbs?: number

		// The storage space used by Autonomous Database, in gigabytes.
		used_data_storage_size_tbs?: number

		// The ID of the Oracle Cloud Infrastructure vault.
		vault_id?: string
	})

	#source_config: close({
		// This field specifies if the replication of automatic backups is
		// enabled when creating a Data Guard.
		automatic_backups_replication_enabled?: bool

		// The name of the primary Autonomous Database that is used to
		// create a Peer Autonomous Database from a source.
		autonomous_database?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/customer_contacts": close({
		// The email address used by Oracle to send notifications
		// regarding databases
		// and infrastructure.
		email!: string
	})
}
