package data

#google_oracle_database_cloud_exadata_infrastructure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_oracle_database_cloud_exadata_infrastructure")
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

		// Identifier. The name of the Exadata Infrastructure resource
		// with the following format:
		// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
		name?:    string
		project?: string

		// Various properties of Exadata Infrastructure.
		properties?: [...close({
			activated_storage_count?:   number
			additional_storage_count?:  number
			available_storage_size_gb?: number
			compute_count?:             number
			cpu_count?:                 number
			customer_contacts?: [...close({
				email?: string
			})]
			data_storage_size_tb?:    number
			db_node_storage_size_gb?: number
			db_server_version?:       string
			maintenance_window?: [...close({
				custom_action_timeout_mins?: number
				days_of_week?: [...string]
				hours_of_day?: [...number]
				is_custom_action_timeout_enabled?: bool
				lead_time_week?:                   number
				months?: [...string]
				patching_mode?: string
				preference?:    string
				weeks_of_month?: [...number]
			})]
			max_cpu_count?:                      number
			max_data_storage_tb?:                number
			max_db_node_storage_size_gb?:        number
			max_memory_gb?:                      number
			memory_size_gb?:                     number
			monthly_db_server_version?:          string
			monthly_storage_server_version?:     string
			next_maintenance_run_id?:            string
			next_maintenance_run_time?:          string
			next_security_maintenance_run_time?: string
			oci_url?:                            string
			ocid?:                               string
			shape?:                              string
			state?:                              string
			storage_count?:                      number
			storage_server_version?:             string
			total_storage_size_gb?:              number
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
