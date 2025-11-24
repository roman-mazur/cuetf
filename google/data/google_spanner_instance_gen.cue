package data

#google_spanner_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_spanner_instance")
	close({
		// The autoscaling configuration. Autoscaling is enabled if this
		// field is set.
		// Exactly one of either num_nodes, processing_units or
		// autoscaling_config must be
		// present in terraform except when instance_type = FREE_INSTANCE.
		// When autoscaling is enabled, num_nodes and processing_units are
		// treated as,
		// OUTPUT_ONLY fields and reflect the current compute capacity
		// allocated to
		// the instance.
		autoscaling_config?: [...close({
			asymmetric_autoscaling_options?: [...close({
				overrides?: [...close({
					autoscaling_limits?: [...close({
						max_nodes?: number
						min_nodes?: number
					})]
				})]
				replica_selection?: [...close({
					location?: string
				})]
			})]
			autoscaling_limits?: [...close({
				max_nodes?:            number
				max_processing_units?: number
				min_nodes?:            number
				min_processing_units?: number
			})]
			autoscaling_targets?: [...close({
				high_priority_cpu_utilization_percent?: number
				storage_utilization_percent?:           number
			})]
		})]

		// The name of the instance's configuration (similar but not
		// quite the same as a region) which defines the geographic
		// placement and
		// replication of your databases in this instance. It determines
		// where your data
		// is stored. Values are typically of the form
		// 'regional-europe-west1' , 'us-central' etc.
		// In order to obtain a valid list please consult the
		// [Configuration section of the
		// docs](https://cloud.google.com/spanner/docs/instances).
		config?: string

		// Controls the default backup behavior for new databases within
		// the instance.
		// Note that 'AUTOMATIC' is not permitted for free instances, as
		// backups and backup schedules are not allowed for free
		// instances.
		// if unset or NONE, no default backup schedule will be created
		// for new databases within the instance. Possible values:
		// ["NONE", "AUTOMATIC"]
		default_backup_schedule_type?: string

		// The descriptive name for this instance as it appears in UIs.
		// Must be
		// unique per project and between 4 and 30 characters in length.
		display_name?: string

		// The edition selected for this instance. Different editions
		// provide different capabilities at different price points.
		// Possible values: ["EDITION_UNSPECIFIED", "STANDARD",
		// "ENTERPRISE", "ENTERPRISE_PLUS"]
		edition?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// When deleting a spanner instance, this boolean option will
		// delete all backups of this instance.
		// This must be set to true if you created a backup manually in
		// the console.
		force_destroy?: bool
		id?:            string

		// The type of this instance. The type can be used to distinguish
		// product variants, that can affect aspects like:
		// usage restrictions, quotas and billing. Currently this is used
		// to distinguish FREE_INSTANCE vs PROVISIONED instances.
		// When configured as FREE_INSTANCE, the field 'edition' should
		// not be configured. Possible values: ["PROVISIONED",
		// "FREE_INSTANCE"]
		instance_type?: string

		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// A unique identifier for the instance, which cannot be changed
		// after
		// the instance is created. The name must be between 6 and 30
		// characters
		// in length.
		// If not provided, a random string starting with 'tf-' will be
		// selected.
		name!: string

		// The number of nodes allocated to this instance. Exactly one of
		// either num_nodes, processing_units or
		// autoscaling_config must be present in terraform except when
		// instance_type = FREE_INSTANCE.
		num_nodes?: number

		// The number of processing units allocated to this instance.
		// Exactly one of either num_nodes,
		// processing_units or autoscaling_config must be present in
		// terraform except when instance_type = FREE_INSTANCE.
		processing_units?: number
		project?:          string

		// Instance status: 'CREATING' or 'READY'.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
