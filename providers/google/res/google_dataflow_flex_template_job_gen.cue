package res

google_dataflow_flex_template_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataflow_flex_template_job")
	close({
		// List of experiments that should be used by the job. An example value is
		// ["enable_stackdriver_agent_metrics"].
		additional_experiments?: [...string]

		// List of pipeline options that should be used by the job. An example value is
		// ["numberOfWorkerHarnessThreads=20"].
		additional_pipeline_options?: [...string]

		// The algorithm to use for autoscaling
		autoscaling_algorithm?:   string
		container_spec_gcs_path!: string

		// If true, if a 409 AlreadyExists error is returned on create, the provider
		// will ignore it and adopt the existing resource.
		create_ignore_already_exists?: bool

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Indicates if the job should use the streaming engine feature.
		enable_streaming_engine?: bool
		id?:                      string

		// The configuration for VM IPs. Options are "WORKER_IP_PUBLIC" or "WORKER_IP_PRIVATE".
		ip_configuration?: string
		job_id?:           string

		// The name for the Cloud KMS key for the job. Key format is:
		// projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
		kms_key_name?: string

		// User labels to be specified for the job. Keys and values should follow the
		// restrictions specified in the labeling restrictions page. NOTE: This field
		// is non-authoritative, and will only manage the labels present in your
		// configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The machine type to use for launching the job. The default is n1-standard-1.
		launcher_machine_type?: string

		// The machine type to use for the job.
		machine_type?: string

		// The maximum number of Google Compute Engine instances to be made available to
		// your pipeline during execution, from 1 to 1000.
		max_workers?: number
		name!:        string

		// The network to which VMs will be assigned. If it is not provided, "default" will be used.
		network?: string

		// The initial number of Google Compute Engine instances for the job.
		num_workers?: number
		on_delete?:   string
		parameters?: [string]: string
		project?: string

		// The region in which the created job should run.
		region?: string

		// Docker registry location of container image to use for the 'worker harness.
		// Default is the container for the version of the SDK. Note this field is only
		// valid for portable pipelines.
		sdk_container_image?: string

		// The Service Account email used to create the job.
		service_account_email?: string

		// If true, treat DRAINING and CANCELLING as terminal job states and do not wait
		// for further changes before removing from terraform state and moving on.
		// WARNING: this will lead to job name conflicts if you do not ensure that the
		// job names are different, e.g. by embedding a release ID or by using a
		// random_id.
		skip_wait_on_job_termination?: bool

		// The Cloud Storage path to use for staging files. Must be a valid Cloud
		// Storage URL, beginning with gs://.
		staging_location?: string
		state?:            string

		// The subnetwork to which VMs will be assigned. Should be of the form
		// "regions/REGION/subnetworks/SUBNETWORK".
		subnetwork?: string

		// The Cloud Storage path to use for temporary files. Must be a valid Cloud
		// Storage URL, beginning with gs://.
		temp_location?: string

		// The combination of labels configured directly on the resource and default
		// labels configured on the provider.
		terraform_labels?: [string]: string

		// Only applicable when updating a pipeline. Map of transform name prefixes of
		// the job to be replaced with the corresponding name prefixes of the new job.
		transform_name_mapping?: [string]: string

		// The type of this job, selected from the JobType enum.
		type?: string
	})
}
