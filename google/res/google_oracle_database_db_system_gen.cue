package res

import "list"

#google_oracle_database_db_system: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_oracle_database_db_system")
	close({
		// The date and time that the DbSystem was created.
		create_time?: string

		// The ID of the DbSystem to create. This value is
		// restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a
		// maximum of
		// 63 characters in length. The value must start with a letter and
		// end with a
		// letter or a number.
		db_system_id!: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// The display name for the System db. The name does not have to
		// be unique within your project.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// DbSystem
		entitlement_id?: string

		// The GCP Oracle zone where Oracle DbSystem is hosted.
		// Example: us-east4-b-r2.
		// If not specified, the system will pick a zone based on
		// availability.
		gcp_oracle_zone?: string
		id?:              string

		// The labels or tags associated with the DbSystem.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the DbSystem resource in the following
		// format:
		// projects/{project}/locations/{region}/dbSystems/{db_system}
		name?: string
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		timeouts?: #timeouts

		// HTTPS link to OCI resources exposed to Customer via UI
		// Interface.
		oci_url?: string

		// The name of the OdbNetwork associated with the DbSystem.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}
		// It is optional but if specified, this should match the parent
		// ODBNetwork of
		// the OdbSubnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the DbSystem for IP
		// allocation. Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet!: string
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// The number of CPU cores to enable for the DbSystem.
		compute_count!: number

		// The compute model of the DbSystem.
		// Possible values:
		// ECPU
		// OCPU
		compute_model?: string

		// The data storage size in GB that is currently available to
		// DbSystems.
		data_storage_size_gb?: number

		// The database edition of the DbSystem.
		// Possible values:
		// STANDARD_EDITION
		// ENTERPRISE_EDITION
		// ENTERPRISE_EDITION_HIGH_PERFORMANCE
		database_edition!: string

		// The host domain name of the DbSystem.
		domain?: string

		// The hostname of the DbSystem.
		hostname?: string

		// Prefix for DB System host names.
		hostname_prefix?: string

		// The initial data storage size in GB.
		initial_data_storage_size_gb!: number

		// The license model of the DbSystem.
		// Possible values:
		// LICENSE_INCLUDED
		// BRING_YOUR_OWN_LICENSE
		license_model!: string

		// State of the DbSystem.
		// Possible values:
		// PROVISIONING
		// AVAILABLE
		// UPDATING
		// TERMINATING
		// TERMINATED
		// FAILED
		// MIGRATED
		// MAINTENANCE_IN_PROGRESS
		// NEEDS_ATTENTION
		// UPGRADING
		lifecycle_state?: string

		// The memory size in GB.
		memory_size_gb?: number
		data_collection_options?: matchN(1, [_#defs."/$defs/properties/$defs/data_collection_options", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/data_collection_options"]])
		db_home?: matchN(1, [_#defs."/$defs/properties/$defs/db_home", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/db_home"]])
		db_system_options?: matchN(1, [_#defs."/$defs/properties/$defs/db_system_options", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/db_system_options"]])
		time_zone?: matchN(1, [_#defs."/$defs/properties/$defs/time_zone", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/time_zone"]])

		// The number of nodes in the DbSystem.
		node_count?: number

		// OCID of the DbSystem.
		ocid?: string

		// The private IP address of the DbSystem.
		private_ip?: string

		// The reco/redo storage size in GB.
		reco_storage_size_gb?: number

		// Shape of DB System.
		shape!: string

		// SSH public keys to be stored with the DbSystem.
		ssh_public_keys!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/data_collection_options": close({
		// Indicates whether to enable data collection for diagnostics.
		is_diagnostics_events_enabled?: bool

		// Indicates whether to enable incident logs and trace collection.
		is_incident_logs_enabled?: bool
	})

	_#defs: "/$defs/properties/$defs/db_home": close({
		// A valid Oracle Database version. For a list of supported
		// versions, use the
		// ListDbVersions operation.
		db_version!: string
		database?: matchN(1, [_#defs."/$defs/properties/$defs/db_home/$defs/database", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/properties/$defs/db_home/$defs/database"]])

		// The display name for the Database Home. The name does not have
		// to
		// be unique within your project.
		display_name?: string

		// Whether unified auditing is enabled for the Database Home.
		is_unified_auditing_enabled?: bool
	})

	_#defs: "/$defs/properties/$defs/db_home/$defs/database": close({
		// The password for the default ADMIN user.
		admin_password!: string

		// The character set for the database. The default is AL32UTF8.
		character_set?: string

		// The date and time that the Database was created.
		create_time?: string

		// The database ID of the Database.
		database_id!: string

		// The name of the DbHome resource associated with the Database.
		db_home_name?: string

		// The database name. The name must begin with an alphabetic
		// character and can
		// contain a maximum of eight alphanumeric characters. Special
		// characters are
		// not permitted.
		db_name?: string

		// The DB_UNIQUE_NAME of the Oracle Database being backed up.
		db_unique_name?: string

		// The GCP Oracle zone where the Database is created.
		gcp_oracle_zone?: string

		// Identifier. The name of the Database resource in the following
		// format:
		// projects/{project}/locations/{region}/databases/{database}
		name?: string
		properties?: matchN(1, [_#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties"]])

		// The national character set for the database. The default is
		// AL16UTF16.
		ncharacter_set?: string

		// HTTPS link to OCI resources exposed to Customer via UI
		// Interface.
		oci_url?: string

		// The Status of Operations Insights for this Database.
		// Possible values:
		// ENABLING
		// ENABLED
		// DISABLING
		// NOT_ENABLED
		// FAILED_ENABLING
		// FAILED_DISABLING
		ops_insights_status?: string

		// The TDE wallet password for the database.
		tde_wallet_password?: string
	})

	_#defs: "/$defs/properties/$defs/db_home/$defs/database/$defs/properties": close({
		database_management_config?: matchN(1, [_#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/database_management_config", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/database_management_config"]])
		db_backup_config?: matchN(1, [_#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/db_backup_config", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/db_backup_config"]])

		// The Oracle Database version.
		db_version!: string

		// State of the Database.
		// Possible values:
		// PROVISIONING
		// AVAILABLE
		// UPDATING
		// BACKUP_IN_PROGRESS
		// UPGRADING
		// CONVERTING
		// TERMINATING
		// TERMINATED
		// RESTORE_FAILED
		// FAILED
		state?: string
	})

	_#defs: "/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/database_management_config": close({
		// The status of the Database Management service.
		// Possible values:
		// ENABLING
		// ENABLED
		// DISABLING
		// DISABLED
		// UPDATING
		// FAILED_ENABLING
		// FAILED_DISABLING
		// FAILED_UPDATING
		management_state?: string

		// The Database Management type.
		// Possible values:
		// BASIC
		// ADVANCED
		management_type?: string
	})

	_#defs: "/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/db_backup_config": close({
		// If set to true, enables automatic backups on the database.
		auto_backup_enabled?: bool

		// Possible values:
		// MONDAY
		// TUESDAY
		// WEDNESDAY
		// THURSDAY
		// FRIDAY
		// SATURDAY
		// SUNDAY
		auto_full_backup_day?: string

		// The window in which the full backup should be performed on the
		// database.
		// If no value is provided, the default is anytime.
		// Possible values:
		// SLOT_ONE
		// SLOT_TWO
		// SLOT_THREE
		// SLOT_FOUR
		// SLOT_FIVE
		// SLOT_SIX
		// SLOT_SEVEN
		// SLOT_EIGHT
		// SLOT_NINE
		// SLOT_TEN
		// SLOT_ELEVEN
		// SLOT_TWELVE
		auto_full_backup_window?: string

		// The window in which the incremental backup should be performed
		// on the
		// database. If no value is provided, the default is anytime
		// except the auto
		// full backup day.
		// Possible values:
		// SLOT_ONE
		// SLOT_TWO
		// SLOT_THREE
		// SLOT_FOUR
		// SLOT_FIVE
		// SLOT_SIX
		// SLOT_SEVEN
		// SLOT_EIGHT
		// SLOT_NINE
		// SLOT_TEN
		// SLOT_ELEVEN
		// SLOT_TWELVE
		auto_incremental_backup_window?: string

		// This defines when the backups will be deleted after Database
		// termination.
		// Possible values:
		// DELETE_IMMEDIATELY
		// DELETE_AFTER_RETENTION_PERIOD
		backup_deletion_policy?: string

		// The number of days an automatic backup is retained before being
		// automatically deleted. This value determines the earliest point
		// in time to
		// which a database can be restored. Min: 1, Max: 60.
		retention_period_days?: number
		backup_destination_details?: matchN(1, [_#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/db_backup_config/$defs/backup_destination_details", [..._#defs."/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/db_backup_config/$defs/backup_destination_details"]])
	})

	_#defs: "/$defs/properties/$defs/db_home/$defs/database/$defs/properties/$defs/db_backup_config/$defs/backup_destination_details": close({
		// The type of the database backup destination.
		// Possible values:
		// NFS
		// RECOVERY_APPLIANCE
		// OBJECT_STORE
		// LOCAL
		// DBRS
		type?: string
	})

	_#defs: "/$defs/properties/$defs/db_system_options": close({
		// The storage option used in DB system.
		// Possible values:
		// ASM
		// LVM
		storage_management?: string
	})

	_#defs: "/$defs/properties/$defs/time_zone": close({
		// IANA Time Zone Database time zone. For example
		// "America/New_York".
		id?: string
	})
}
