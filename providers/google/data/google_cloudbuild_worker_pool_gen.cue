package data

google_cloudbuild_worker_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_cloudbuild_worker_pool")
	close({
		// User specified annotations. See https://google.aip.dev/128#annotations for
		// more details such as format and size limitations.
		//
		// **Note**: This field is non-authoritative, and will only manage the
		// annotations present in your configuration.
		// Please refer to the field `effective_annotations` for all of the annotations
		// present on the resource.
		annotations?: [string]: string

		// Output only. Time at which the request to create the `WorkerPool` was received.
		create_time?: string

		// Output only. Time at which the request to delete the `WorkerPool` was received.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A user-specified, human-readable name for the `WorkerPool`. If provided, this
		// value must be 1-63 characters.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in GCP,
		// including the annotations configured through Terraform, other clients and
		// services.
		effective_annotations?: [string]: string
		id?: string

		// The location for the resource
		location!: string

		// User-defined name of the `WorkerPool`.
		name!: string

		// Network configuration for the `WorkerPool`.
		network_config?: [...close({
			peered_network?:          string
			peered_network_ip_range?: string
		})]

		// Private Service Connect configuration for the pool.
		private_service_connect?: [...close({
			network_attachment?: string
			route_all_traffic?:  bool
		})]

		// The project for the resource
		project?: string

		// Output only. `WorkerPool` state. Possible values: STATE_UNSPECIFIED, PENDING,
		// APPROVED, REJECTED, CANCELLED
		state?: string

		// Output only. A unique identifier for the `WorkerPool`.
		uid?: string

		// Output only. Time at which the request to update the `WorkerPool` was received.
		update_time?: string

		// Configuration to be used for a creating workers in the `WorkerPool`.
		worker_config?: [...close({
			disk_size_gb?:                 number
			enable_nested_virtualization?: bool
			machine_type?:                 string
			no_external_ip?:               bool
		})]
	})
}
