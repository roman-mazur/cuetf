package res

import "list"

#google_oracle_database_cloud_exadata_infrastructure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_cloud_exadata_infrastructure")
	close({
		// The ID of the Exadata Infrastructure to create. This value is
		// restricted
		// to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a maximum of
		// 63
		// characters in length. The value must start with a letter and
		// end with
		// a letter or a number.
		cloud_exadata_infrastructure_id!: string

		// The date and time that the Exadata Infrastructure was created.
		create_time?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// User friendly name for this resource.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Entitlement ID of the private offer against which this
		// infrastructure
		// resource is provisioned.
		entitlement_id?: string

		// GCP location where Oracle Exadata is hosted.
		gcp_oracle_zone?: string
		id?:              string

		// Labels or tags associated with the resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. See
		// documentation for resource type
		// 'oracledatabase.googleapis.com/DbServer'.
		location!: string
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		timeouts?: #timeouts

		// Identifier. The name of the Exadata Infrastructure resource
		// with the following format:
		// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		// The requested number of additional storage servers activated
		// for the
		// Exadata Infrastructure.
		activated_storage_count?: number

		// The requested number of additional storage servers for the
		// Exadata
		// Infrastructure.
		additional_storage_count?: number

		// The available storage can be allocated to the Exadata
		// Infrastructure
		// resource, in gigabytes (GB).
		available_storage_size_gb?: number

		// The number of compute servers for the Exadata Infrastructure.
		compute_count?: number

		// The number of enabled CPU cores.
		cpu_count?: number

		// Size, in terabytes, of the DATA disk group.
		data_storage_size_tb?: number

		// The local node storage allocated in GBs.
		db_node_storage_size_gb?: number

		// The software version of the database servers (dom0) in the
		// Exadata
		// Infrastructure.
		db_server_version?: string

		// The total number of CPU cores available.
		max_cpu_count?: number

		// The total available DATA disk group size.
		max_data_storage_tb?: number

		// The total local node storage available in GBs.
		max_db_node_storage_size_gb?: number

		// The total memory available in GBs.
		max_memory_gb?: number

		// The memory allocated in GBs.
		memory_size_gb?: number

		// The monthly software version of the database servers (dom0)
		// in the Exadata Infrastructure. Example: 20.1.15
		monthly_db_server_version?: string

		// The monthly software version of the storage servers (cells)
		// in the Exadata Infrastructure. Example: 20.1.15
		monthly_storage_server_version?: string
		customer_contacts?: matchN(1, [_#defs."/$defs/properties/$defs/customer_contacts", [..._#defs."/$defs/properties/$defs/customer_contacts"]])
		maintenance_window?: matchN(1, [_#defs."/$defs/properties/$defs/maintenance_window", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/maintenance_window"]])

		// The OCID of the next maintenance run.
		next_maintenance_run_id?: string

		// The time when the next maintenance run will occur.
		next_maintenance_run_time?: string

		// The time when the next security maintenance run will occur.
		next_security_maintenance_run_time?: string

		// Deep link to the OCI console to view this resource.
		oci_url?: string

		// OCID of created infra.
		// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
		ocid?: string

		// The shape of the Exadata Infrastructure. The shape determines
		// the
		// amount of CPU, storage, and memory resources allocated to the
		// instance.
		shape!: string

		// The current lifecycle state of the Exadata Infrastructure.
		// Possible values:
		// STATE_UNSPECIFIED
		// PROVISIONING
		// AVAILABLE
		// UPDATING
		// TERMINATING
		// TERMINATED
		// FAILED
		// MAINTENANCE_IN_PROGRESS
		state?: string

		// The number of Cloud Exadata storage servers for the Exadata
		// Infrastructure.
		storage_count?: number

		// The software version of the storage servers (cells) in the
		// Exadata
		// Infrastructure.
		storage_server_version?: string

		// The total storage allocated to the Exadata Infrastructure
		// resource, in gigabytes (GB).
		total_storage_size_gb?: number
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

	_#defs: "/$defs/properties/$defs/maintenance_window": close({
		// Determines the amount of time the system will wait before the
		// start of each
		// database server patching operation. Custom action timeout is in
		// minutes and
		// valid value is between 15 to 120 (inclusive).
		custom_action_timeout_mins?: number

		// Days during the week when maintenance should be performed.
		days_of_week?: [...string]

		// The window of hours during the day when maintenance should be
		// performed.
		// The window is a 4 hour slot. Valid values are:
		// 0 - represents time slot 0:00 - 3:59 UTC
		// 4 - represents time slot 4:00 - 7:59 UTC
		// 8 - represents time slot 8:00 - 11:59 UTC
		// 12 - represents time slot 12:00 - 15:59 UTC
		// 16 - represents time slot 16:00 - 19:59 UTC
		// 20 - represents time slot 20:00 - 23:59 UTC
		hours_of_day?: [...number]

		// If true, enables the configuration of a custom action timeout
		// (waiting
		// period) between database server patching operations.
		is_custom_action_timeout_enabled?: bool

		// Lead time window allows user to set a lead time to prepare for
		// a down time.
		// The lead time is in weeks and valid value is between 1 to 4.
		lead_time_week?: number

		// Months during the year when maintenance should be performed.
		months?: [...string]

		// Cloud CloudExadataInfrastructure node patching method, either
		// "ROLLING"
		// or "NONROLLING". Default value is ROLLING.
		// Possible values:
		// PATCHING_MODE_UNSPECIFIED
		// ROLLING
		// NON_ROLLING
		patching_mode?: string

		// The maintenance window scheduling preference.
		// Possible values:
		// MAINTENANCE_WINDOW_PREFERENCE_UNSPECIFIED
		// CUSTOM_PREFERENCE
		// NO_PREFERENCE
		preference?: string

		// Weeks during the month when maintenance should be performed.
		// Weeks start on
		// the 1st, 8th, 15th, and 22nd days of the month, and have a
		// duration of 7
		// days. Weeks start and end based on calendar dates, not days of
		// the week.
		weeks_of_month?: [...number]
	})
}
