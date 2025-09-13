package res

#google_dataflow_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataflow_job")
	close({
		// List of experiments that should be used by the job. An example
		// value is ["enable_stackdriver_agent_metrics"].
		additional_experiments?: [...string]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Indicates if the job should use the streaming engine feature.
		enable_streaming_engine?: bool

		// The configuration for VM IPs. Options are "WORKER_IP_PUBLIC" or
		// "WORKER_IP_PRIVATE".
		ip_configuration?: string

		// The unique ID of this job.
		job_id?: string

		// The name for the Cloud KMS key for the job. Key format is:
		// projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
		kms_key_name?: string
		id?:           string

		// User labels to be specified for the job. Keys and values should
		// follow the restrictions specified in the labeling restrictions
		// page. NOTE: This field is non-authoritative, and will only
		// manage the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The machine type to use for the job.
		machine_type?: string

		// The number of workers permitted to work on the job. More
		// workers may improve processing speed at additional cost.
		max_workers?: number

		// A unique name for the resource, required by Dataflow.
		name!: string

		// The network to which VMs will be assigned. If it is not
		// provided, "default" will be used.
		network?: string

		// One of "drain" or "cancel". Specifies behavior of deletion
		// during terraform destroy.
		on_delete?: string

		// Key/Value pairs to be passed to the Dataflow job (as used in
		// the template).
		parameters?: [string]: string

		// The project in which the resource belongs.
		project?: string

		// The region in which the created job should run.
		region?:   string
		timeouts?: #timeouts

		// The Service Account email used to create the job.
		service_account_email?: string

		// If true, treat DRAINING and CANCELLING as terminal job states
		// and do not wait for further changes before removing from
		// terraform state and moving on. WARNING: this will lead to job
		// name conflicts if you do not ensure that the job names are
		// different, e.g. by embedding a release ID or by using a
		// random_id.
		skip_wait_on_job_termination?: bool

		// The current state of the resource, selected from the JobState
		// enum.
		state?: string

		// The subnetwork to which VMs will be assigned. Should be of the
		// form "regions/REGION/subnetworks/SUBNETWORK".
		subnetwork?: string

		// A writeable location on Google Cloud Storage for the Dataflow
		// job to dump its temporary data.
		temp_gcs_location!: string

		// The Google Cloud Storage path to the Dataflow job template.
		template_gcs_path!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Only applicable when updating a pipeline. Map of transform name
		// prefixes of the job to be replaced with the corresponding name
		// prefixes of the new job.
		transform_name_mapping?: [string]: string

		// The type of this job, selected from the JobType enum.
		type?: string

		// The zone in which the created job should run. If it is not
		// provided, the provider zone is used.
		zone?: string
	})

	#timeouts: close({
		update?: string
	})
}
