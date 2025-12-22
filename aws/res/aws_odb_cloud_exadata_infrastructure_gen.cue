package res

#aws_odb_cloud_exadata_infrastructure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_odb_cloud_exadata_infrastructure")
	close({
		// The number of storage servers requested for the Exadata
		// infrastructure
		activated_storage_count?: number

		// The number of storage servers requested for the Exadata
		// infrastructure
		additional_storage_count?: number

		// The name of the Availability Zone (AZ) where the Exadata
		// infrastructure is located. Changing this will force terraform
		// to create new resource
		availability_zone?: string
		arn?:               string

		// The AZ ID of the AZ where the Exadata infrastructure is
		// located. Changing this will force terraform to create new
		// resource
		availability_zone_id!: string

		// The amount of available storage, in gigabytes (GB), for the
		// Exadata infrastructure
		available_storage_size_in_gbs?: number

		// The number of compute instances that the Exadata infrastructure
		// is located
		compute_count?: number

		// The OCI model compute model used when you create or clone an
		// instance: ECPU or OCPU. An ECPU is an abstracted measure of
		// compute resources. ECPUs are based on the number of cores
		// elastically allocated from a pool of compute and storage
		// servers.
		// An OCPU is a legacy physical measure of compute resources.
		// OCPUs
		// are based on the physical core of a processor with
		// hyper-threading enabled.
		compute_model?: string

		// The total number of CPU cores that are allocated to the Exadata
		// infrastructure
		cpu_count?: number

		// The time when the Exadata infrastructure was created.
		created_at?: string

		// The email addresses of contacts to receive notification from
		// Oracle about maintenance updates for the Exadata
		// infrastructure. Changing this will force terraform to create
		// new resource
		customer_contacts_to_send_to_oci?: [...close({
			email?: string
		})]

		// The size of the Exadata infrastructure's data disk group, in
		// terabytes (TB)
		data_storage_size_in_tbs?: number

		// The database server model type of the Exadata infrastructure.
		// For the list of valid model names, use the ListDbSystemShapes
		// operation
		database_server_type?: string

		// The size of the Exadata infrastructure's local node storage, in
		// gigabytes (GB)
		db_node_storage_size_in_gbs?: number

		// The software version of the database servers (dom0) in the
		// Exadata infrastructure
		db_server_version?: string

		// The user-friendly name for the Exadata infrastructure. Changing
		// this will force terraform to create a new resource
		display_name!: string
		id?:           string

		// The Oracle Cloud Identifier (OCID) of the last maintenance run
		// for the Exadata infrastructure
		last_maintenance_run_id?: string

		// The total number of CPU cores available on the Exadata
		// infrastructure
		max_cpu_count?: number

		// The total amount of data disk group storage, in terabytes (TB),
		// that's available on the Exadata infrastructure
		max_data_storage_in_tbs?: number

		// The total amount of local node storage, in gigabytes (GB),
		// that's available on the Exadata infrastructure
		max_db_node_storage_size_in_gbs?: number

		// The total amount of memory in gigabytes (GB) available on the
		// Exadata infrastructure
		max_memory_in_gbs?: number

		// The amount of memory, in gigabytes (GB), that's allocated on
		// the Exadata infrastructure
		memory_size_in_gbs?: number
		maintenance_window?: matchN(1, [#maintenance_window, [...#maintenance_window]])
		timeouts?: #timeouts

		// The monthly software version of the database servers in the
		// Exadata infrastructure
		monthly_db_server_version?: string

		// The monthly software version of the storage servers installed
		// on the Exadata infrastructure
		monthly_storage_server_version?: string

		// The OCID of the next maintenance run for the Exadata
		// infrastructure
		next_maintenance_run_id?: string

		// The name of the OCI resource anchor for the Exadata
		// infrastructure
		oci_resource_anchor_name?: string

		// The HTTPS link to the Exadata infrastructure in OCI
		oci_url?: string

		// The OCID of the Exadata infrastructure
		ocid?: string

		// The amount of progress made on the current operation on the
		// Exadata infrastructure, expressed as a percentage
		percent_progress?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The model name of the Exadata infrastructure. Changing this
		// will force terraform to create new resource
		shape!: string

		// The current status of the Exadata infrastructure
		status?: string

		// Additional information about the status of the Exadata
		// infrastructure
		status_reason?: string

		// TThe number of storage servers that are activated for the
		// Exadata infrastructure
		storage_count?: number

		// The storage server model type of the Exadata infrastructure.
		// For the list of valid model names, use the ListDbSystemShapes
		// operation
		storage_server_type?: string

		// The software version of the storage servers on the Exadata
		// infrastructure.
		storage_server_version?: string
		tags?: [string]: string

		// The total amount of storage, in gigabytes (GB), on the Exadata
		// infrastructure.
		total_storage_size_in_gbs?: number
		tags_all?: [string]: string
	})

	#maintenance_window: close({
		custom_action_timeout_in_mins!: number
		days_of_week?: [...close({
			name?: string
		})]
		hours_of_day?: [...number]
		is_custom_action_timeout_enabled!: bool
		lead_time_in_weeks?:               number
		months?: [...close({
			name?: string
		})]
		patching_mode!: string
		preference!:    string
		weeks_of_month?: [...number]
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
