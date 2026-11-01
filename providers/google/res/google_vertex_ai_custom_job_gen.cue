package res

import "list"

google_vertex_ai_custom_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_custom_job")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		job_spec!: matchN(1, [#job_spec, list.MaxItems(1) & [_, ...] & [...#job_spec]])
		timeouts?: #timeouts

		// Time when the CustomJob was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name of the CustomJob.
		// The name can be up to 128 characters long and can consist of any UTF-8 characters.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Time when the CustomJob entered any of the following states:
		// 'JOB_STATE_SUCCEEDED', 'JOB_STATE_FAILED', 'JOB_STATE_CANCELLED'.
		end_time?: string

		// Only populated when job's state is 'JOB_STATE_FAILED' or 'JOB_STATE_CANCELLED'.
		error?: [...close({
			code?:    number
			message?: string
		})]
		id?: string

		// The labels with user-defined metadata to organize CustomJobs.
		// Label keys and values can be no longer than 64 characters (Unicode
		// codepoints), can only contain lowercase letters, numeric characters,
		// underscores and dashes. International characters are allowed.
		// See https://goo.gl/xmQnxf for more information and examples of labels.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The resource name of the CustomJob.
		name?: string

		// The Google Cloud region to run the custom job in.
		region!:  string
		project?: string

		// Time when the CustomJob for the first time entered the 'JOB_STATE_RUNNING' state.
		start_time?: string

		// The detailed state of the job.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time when the CustomJob was most recently updated.
		update_time?: string

		// URIs for accessing interactive shells (one URI for each training node).
		web_access_uris?: [string]: string
	})

	#encryption_spec: close({
		// Resource name of the Cloud KMS key used to protect the resource.
		// The Cloud KMS key must be in the same region as the resource. It must have the format
		// 'projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}'.
		kms_key_name!: string
	})

	#job_spec: close({
		base_output_directory?: matchN(1, [_#defs."/$defs/job_spec/$defs/base_output_directory", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/base_output_directory"]])
		psc_interface_config?: matchN(1, [_#defs."/$defs/job_spec/$defs/psc_interface_config", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/psc_interface_config"]])
		scheduling?: matchN(1, [_#defs."/$defs/job_spec/$defs/scheduling", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/scheduling"]])
		worker_pool_specs!: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs", [_, ...] & [..._#defs."/$defs/job_spec/$defs/worker_pool_specs"]])

		// Whether you want Vertex AI to enable access to the customized dashboard in
		// training chief container.
		enable_dashboard_access?: bool

		// Whether you want Vertex AI to enable interactive shell access to training containers.
		enable_web_access?: bool

		// The full name of the Compute Engine network to which the Job should be peered.
		network?: string

		// A list of names for the reserved ip ranges under the VPC network that can be used for this job.
		reserved_ip_ranges?: [...string]

		// Specifies the service account for workload run-as account.
		service_account?: string

		// The name of a Vertex AI Tensorboard resource to which this CustomJob will
		// upload Tensorboard logs.
		tensorboard?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/job_spec/$defs/base_output_directory": close({
		// Cloud Storage folder URL to store the output.
		output_uri_prefix!: string
	})

	_#defs: "/$defs/job_spec/$defs/psc_interface_config": close({
		dns_peering_configs?: matchN(1, [_#defs."/$defs/job_spec/$defs/psc_interface_config/$defs/dns_peering_configs", [..._#defs."/$defs/job_spec/$defs/psc_interface_config/$defs/dns_peering_configs"]])

		// The name of the attachment to connect to.
		network_attachment?: string
	})

	_#defs: "/$defs/job_spec/$defs/psc_interface_config/$defs/dns_peering_configs": close({
		// The DNS name suffix of the zone being peered to, e.g.,
		// "my-internal-domain.corp.". Must end with a dot.
		domain!: string

		// The VPC network name in the target_project where the DNS zone specified by 'domain' is visible.
		target_network!: string

		// The project ID hosting the Cloud DNS managed zone that contains the 'domain'.
		// The Vertex AI Service Agent requires the dns.peer role on this project.
		target_project!: string
	})

	_#defs: "/$defs/job_spec/$defs/scheduling": close({
		// Indicates if the job should retry for internal errors after the job starts running.
		disable_retries?: bool

		// The maximum duration that a job will wait for the requested resources to be
		// provisioned if the scheduling strategy is set to FLEX_START.
		max_wait_duration?: string

		// Restarts the entire CustomJob if a worker gets restarted.
		restart_job_on_worker_restart?: bool

		// This determines which type of scheduling strategy to use. Possible values:
		// ["STANDARD", "SPOT", "FLEX_START"]
		strategy?: string

		// The maximum job running time. The default is 7 days. A duration in seconds
		// with up to nine fractional digits, ending with 's'. Example: "3.5s".
		timeout?: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs": close({
		container_spec?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/container_spec", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/container_spec"]])
		disk_spec?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/disk_spec", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/disk_spec"]])
		lustre_mounts?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/lustre_mounts", [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/lustre_mounts"]])
		machine_spec?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/machine_spec", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/machine_spec"]])
		nfs_mounts?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/nfs_mounts", [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/nfs_mounts"]])
		python_package_spec?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/python_package_spec", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/python_package_spec"]])

		// The number of worker replicas to use for this worker pool.
		replica_count?: number
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/container_spec": close({
		env?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/container_spec/$defs/env", [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/container_spec/$defs/env"]])

		// The arguments to be passed when starting the container.
		args?: [...string]

		// The command to be invoked when the container is started. It overrides the
		// entrypoint instruction in Dockerfile when provided.
		command?: [...string]

		// The URI of a container image in the Container Registry that is to be run on each worker replica.
		image_uri!: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/container_spec/$defs/env": close({
		// Name of the environment variable. Must be a valid C identifier.
		name!: string

		// Variables that reference a $(VAR_NAME) are expanded using the previous
		// defined environment variables in the container.
		value!: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/disk_spec": close({
		// Size in GB of the boot disk (default is 100GB).
		boot_disk_size_gb?: number

		// Type of the disk. The default value depends on the machine type. Valid values
		// include: "pd-ssd", "pd-standard", "pd-balanced", and "hyperdisk-balanced".
		boot_disk_type?: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/lustre_mounts": close({
		// The name of the Lustre filesystem.
		filesystem!: string

		// IP address of the Lustre instance.
		instance_ip!: string

		// Destination mount path. The Lustre file system will be mounted for the user
		// under /mnt/lustre/<mount_point>.
		mount_point!: string

		// The unique identifier of the Lustre volume.
		volume_handle!: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/machine_spec": close({
		reservation_affinity?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/machine_spec/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/machine_spec/$defs/reservation_affinity"]])

		// The number of accelerators to attach to the machine.
		accelerator_count?: number

		// The type of accelerator(s) that may be attached to the machine.
		accelerator_type?: string

		// The type of the machine.
		machine_type?: string

		// The topology of the TPUs.
		tpu_topology?: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/machine_spec/$defs/reservation_affinity": close({
		// Corresponds to the label key of a reservation resource.
		key?: string

		// Specifies the reservation affinity type. Possible values: "NO_RESERVATION",
		// "ANY_RESERVATION", and "SPECIFIC_RESERVATION"
		reservation_affinity_type!: string

		// Corresponds to the label values of a reservation resource.
		values?: [...string]
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/nfs_mounts": close({
		// Destination mount path. The path must be absolute.
		mount_point!: string

		// Source path exported from NFS database.
		path!: string

		// IP address of the NFS server.
		server!: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/python_package_spec": close({
		env?: matchN(1, [_#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/python_package_spec/$defs/env", [..._#defs."/$defs/job_spec/$defs/worker_pool_specs/$defs/python_package_spec/$defs/env"]])

		// Command line arguments to be passed to the Python task.
		args?: [...string]

		// The URI of a container image in Artifact Registry that will run the provided Python package.
		executor_image_uri!: string

		// The Google Cloud Storage location of the Python package files which are the
		// training program and its dependent packages.
		package_uris!: [...string]

		// The Python module name to run after installing the packages.
		python_module!: string
	})

	_#defs: "/$defs/job_spec/$defs/worker_pool_specs/$defs/python_package_spec/$defs/env": close({
		// Name of the environment variable.
		name!: string

		// Value of the environment variable.
		value!: string
	})
}
