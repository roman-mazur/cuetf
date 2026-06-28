package res

import "list"

#google_vertex_ai_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_schedule")
	close({
		create_notebook_execution_job_request?: matchN(1, [#create_notebook_execution_job_request, list.MaxItems(1) & [...#create_notebook_execution_job_request]])
		create_pipeline_job_request?: matchN(1, [#create_pipeline_job_request, list.MaxItems(1) & [...#create_pipeline_job_request]])
		timeouts?: #timeouts

		// Whether new scheduled runs can be queued when
		// max_concurrent_runs limit is reached. If set to true, new runs
		// will be queued instead of skipped. Default to false.
		allow_queueing?: bool

		// Whether to backfill missed runs when the schedule is resumed
		// from PAUSED state. If set to true, all missed runs will be
		// scheduled. New runs will be scheduled after the backfill is
		// complete. Default to false.
		catch_up?: bool

		// Timestamp when this Schedule was created.
		create_time?: string

		// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch
		// scheduled runs. To explicitly set a timezone to the cron tab,
		// apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or
		// "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a
		// valid string from IANA time zone database. For example,
		// "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York
		// 1 * * * *".
		cron?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// User provided name of the Schedule. The name can be up to 128
		// characters long and can consist of any UTF-8 characters.
		display_name!: string

		// Timestamp after which no new runs can be scheduled. If
		// specified, The schedule will be completed when either end_time
		// is reached or when scheduled_run_count >= max_run_count. If
		// not specified, new runs will keep getting scheduled until this
		// Schedule is paused or deleted. Already scheduled runs will be
		// allowed to complete. Unset if not specified.
		end_time?: string
		id?:       string

		// Timestamp when this Schedule was last paused. Unset if never
		// paused.
		last_pause_time?: string

		// Timestamp when this Schedule was last resumed. Unset if never
		// resumed from pause.
		last_resume_time?: string

		// Status of a scheduled run.
		last_scheduled_run_response?: [...close({
			run_response?:       string
			scheduled_run_time?: string
		})]

		// The location of the Schedule. eg us-central1
		location!: string

		// Specifies the maximum number of active runs that can be
		// executed concurrently for this Schedule. This limits the
		// number of runs that can be in a non-terminal state at the same
		// time. Currently, this field is only supported for requests of
		// type CreatePipelineJobRequest.
		max_concurrent_active_run_count?: string

		// Maximum number of runs that can be started concurrently for
		// this Schedule. This is the limit for starting the scheduled
		// requests and not the execution of the operations/jobs created
		// by the requests (if applicable).
		max_concurrent_run_count!: string

		// Maximum run count of the schedule. If specified, The schedule
		// will be completed when either started_run_count >=
		// max_run_count or when end_time is reached. If not specified,
		// new runs will keep getting scheduled until this Schedule is
		// paused or deleted. Already scheduled runs will be allowed to
		// complete. Unset if not specified.
		max_run_count?: string

		// The resource name of the Schedule.
		name?: string

		// Timestamp when this Schedule should schedule the next run.
		// Having a next_run_time in the past means the runs are being
		// started behind schedule.
		next_run_time?: string
		project?:       string

		// Timestamp after which the first run can be scheduled. Default
		// to Schedule create time if not specified.
		start_time?: string

		// The number of runs started by this schedule.
		started_run_count?: string

		// The state of this Schedule. Possible values: ACTIVE PAUSED
		// COMPLETED
		state?: string

		// Timestamp when this Schedule was updated.
		update_time?: string
	})

	#create_notebook_execution_job_request: close({
		notebook_execution_job!: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job"]])

		// User specified ID for the NotebookExecutionJob.
		notebook_execution_job_id?: string

		// The resource name of the Location to create the
		// NotebookExecutionJob. Format:
		// 'projects/{project}/locations/{location}'
		parent!: string
	})

	#create_pipeline_job_request: close({
		pipeline_job!: matchN(1, [_#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job"]])

		// The resource name of the Location to create the PipelineJob in.
		// Format: 'projects/{project}/locations/{location}'
		parent!: string

		// The ID to use for the PipelineJob, which will become the final
		// component of the PipelineJob name. If not provided, an ID will
		// be automatically generated. This value should be less than 128
		// characters, and valid characters are '/a-z-/'.
		pipeline_job_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job": close({
		custom_environment_spec?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec"]])
		dataform_repository_source?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/dataform_repository_source", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/dataform_repository_source"]])
		direct_notebook_source?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/direct_notebook_source", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/direct_notebook_source"]])
		encryption_spec?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/encryption_spec", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/encryption_spec"]])
		gcs_notebook_source?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/gcs_notebook_source", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/gcs_notebook_source"]])
		workbench_runtime?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/workbench_runtime", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/workbench_runtime"]])

		// Timestamp when this NotebookExecutionJob was created.
		create_time?: string

		// The display name of the NotebookExecutionJob. The name can be
		// up to 128 characters long and can consist of any UTF-8
		// characters.
		display_name?: string

		// Max running time of the execution job in seconds (default
		// 86400s / 24 hrs).
		execution_timeout?: string

		// The user email to run the execution as. Only supported by Colab
		// runtimes.
		execution_user?: string

		// The Cloud Storage location to upload the result to. Format:
		// 'gs://bucket-name'
		gcs_output_uri?: string

		// Possible values: JOB_STATE_QUEUED JOB_STATE_PENDING
		// JOB_STATE_RUNNING JOB_STATE_SUCCEEDED JOB_STATE_FAILED
		// JOB_STATE_CANCELLING JOB_STATE_CANCELLED JOB_STATE_PAUSED
		// JOB_STATE_EXPIRED JOB_STATE_UPDATING
		// JOB_STATE_PARTIALLY_SUCCEEDED
		job_state?: string

		// The name of the kernel to use during notebook execution. If
		// unset, the default kernel is used.
		kernel_name?: string

		// The labels with user-defined metadata to organize
		// NotebookExecutionJobs. Label keys and values can be no longer
		// than 64 characters (Unicode codepoints), can only contain
		// lowercase letters, numeric characters, underscores and dashes.
		// International characters are allowed. See
		// https://goo.gl/xmQnxf for more information and examples of
		// labels. System reserved label keys are prefixed with
		// "aiplatform.googleapis.com/" and are immutable.
		labels?: [string]: string

		// The resource name of this NotebookExecutionJob. Format:
		// 'projects/{project_id}/locations/{location}/notebookExecutionJobs/{job_id}'
		name?: string

		// The NotebookRuntimeTemplate to source compute configuration
		// from.
		notebook_runtime_template_resource_name?: string

		// The user-defined parameters to use during notebook execution.
		parameters?: [string]: string

		// The Schedule resource name if this job is triggered by one.
		// Format:
		// 'projects/{project_id}/locations/{location}/schedules/{schedule_id}'
		schedule_resource_name?: string

		// The service account to run the execution as.
		service_account?: string

		// Timestamp when this NotebookExecutionJob was most recently
		// updated.
		update_time?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec": close({
		machine_spec?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/machine_spec", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/machine_spec"]])
		network_spec?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/network_spec", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/network_spec"]])
		persistent_disk_spec?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/persistent_disk_spec", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/persistent_disk_spec"]])
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/machine_spec": close({
		reservation_affinity?: matchN(1, [_#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/machine_spec/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/machine_spec/$defs/reservation_affinity"]])

		// The number of accelerators to attach to the machine. For
		// accelerator optimized machine types
		// (https://cloud.google.com/compute/docs/accelerator-optimized-machines),
		// One may set the accelerator_count from 1 to N for machine with
		// N GPUs. If accelerator_count is less than or equal to N / 2,
		// Vertex will co-schedule the replicas of the model into the
		// same VM to save cost. For example, if the machine type is
		// a3-highgpu-8g, which has 8 H100 GPUs, one can set
		// accelerator_count to 1 to 8. If accelerator_count is 1, 2, 3,
		// or 4, Vertex will co-schedule 8, 4, 2, or 2 replicas of the
		// model into the same VM to save cost. When co-scheduling, CPU,
		// memory and storage on the VM will be distributed to replicas
		// on the VM. For example, one can expect a co-scheduled replica
		// requesting 2 GPUs out of a 8-GPU VM will receive 25% of the
		// CPU, memory and storage of the VM. Note that the feature is
		// not compatible with multihost_gpu_node_count. When
		// multihost_gpu_node_count is set, the co-scheduling will not be
		// enabled.
		accelerator_count?: number

		// Possible values: NVIDIA_TESLA_K80 NVIDIA_TESLA_P100
		// NVIDIA_TESLA_V100 NVIDIA_TESLA_P4 NVIDIA_TESLA_T4
		// NVIDIA_TESLA_A100 NVIDIA_A100_80GB NVIDIA_L4 NVIDIA_H100_80GB
		// NVIDIA_H100_MEGA_80GB NVIDIA_H200_141GB NVIDIA_B200
		// NVIDIA_GB200 NVIDIA_RTX_PRO_6000 TPU_V2 TPU_V3 TPU_V4_POD
		// TPU_V5_LITEPOD
		accelerator_type?: string

		// The Nvidia GPU partition size. When specified, the requested
		// accelerators will be partitioned into smaller GPU partitions.
		// For example, if the request is for 8 units of NVIDIA A100
		// GPUs, and gpu_partition_size="1g.10gb", the service will
		// create 8 * 7 = 56 partitioned MIG instances. The partition
		// size must be a value supported by the requested accelerator.
		// Refer to [Nvidia GPU
		// Partitioning](https://cloud.google.com/kubernetes-engine/docs/how-to/gpus-multi#multi-instance_gpu_partitions)
		// for the available partition sizes. If set, the
		// accelerator_count should be set to 1.
		gpu_partition_size?: string

		// The type of the machine. See the [list of machine types
		// supported for
		// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
		// See the [list of machine types supported for custom
		// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
		// For DeployedModel this field is optional, and the default
		// value is 'n1-standard-2'. For BatchPredictionJob or as part of
		// WorkerPoolSpec this field is required.
		machine_type?: string

		// The topology of the TPUs. Corresponds to the TPU topologies
		// available from GKE. (Example: tpu_topology: "2x2x1").
		tpu_topology?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/machine_spec/$defs/reservation_affinity": close({
		// Corresponds to the label key of a reservation resource. To
		// target a SPECIFIC_RESERVATION by name, use
		// 'compute.googleapis.com/reservation-name' as the key and
		// specify the name of your reservation as its value.
		key?: string

		// Specifies the reservation affinity type. Possible values:
		// NO_RESERVATION ANY_RESERVATION SPECIFIC_RESERVATION
		// SPECIFIC_THEN_ANY_RESERVATION SPECIFIC_THEN_NO_RESERVATION
		reservation_affinity_type!: string

		// When set to true, resources will be drawn from
		// go/cloud-ai-gcp-pool.
		use_reservation_pool?: bool

		// Corresponds to the label values of a reservation resource. This
		// must be the full resource name of the reservation or
		// reservation block.
		values?: [...string]
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/network_spec": close({
		// Whether to enable public internet access. Default false.
		enable_internet_access?: bool

		// The full name of the Google Compute Engine
		// [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks)
		network?: string

		// The name of the subnet that this instance is in. Format:
		// 'projects/{project_id_or_number}/regions/{region}/subnetworks/{subnetwork_id}'
		subnetwork?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/custom_environment_spec/$defs/persistent_disk_spec": close({
		// Size in GB of the disk (default is 100GB).
		disk_size_gb?: string

		// Type of the disk (default is "pd-standard"). Valid values:
		// "pd-ssd" (Persistent Disk Solid State Drive) "pd-standard"
		// (Persistent Disk Hard Disk Drive) "pd-balanced" (Balanced
		// Persistent Disk) "pd-extreme" (Extreme Persistent Disk)
		disk_type?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/dataform_repository_source": close({
		// The commit SHA to read repository with. If unset, the file will
		// be read at HEAD.
		commit_sha?: string

		// The resource name of the Dataform Repository. Format:
		// 'projects/{project_id}/locations/{location}/repositories/{repository_id}'
		dataform_repository_resource_name?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/direct_notebook_source": close({
		// The base64-encoded contents of the input notebook file.
		content?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/encryption_spec": close({
		// Resource name of the Cloud KMS key used to protect the
		// resource. The Cloud KMS key must be in the same region as the
		// resource. It must have the format
		// 'projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}'.
		kms_key_name!: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/gcs_notebook_source": close({
		// The version of the Cloud Storage object to read. If unset, the
		// current version of the object is read. See
		// https://cloud.google.com/storage/docs/metadata#generation-number.
		generation?: string

		// The Cloud Storage uri pointing to the ipynb file. Format:
		// 'gs://bucket/notebook_file.ipynb'
		uri?: string
	})

	_#defs: "/$defs/create_notebook_execution_job_request/$defs/notebook_execution_job/$defs/workbench_runtime": close({})

	_#defs: "/$defs/create_pipeline_job_request/$defs/pipeline_job": close({
		encryption_spec?: matchN(1, [_#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/encryption_spec", list.MaxItems(1) & [..._#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/encryption_spec"]])
		psc_interface_config?: matchN(1, [_#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/psc_interface_config", list.MaxItems(1) & [..._#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/psc_interface_config"]])
		runtime_config?: matchN(1, [_#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/runtime_config", list.MaxItems(1) & [..._#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/runtime_config"]])

		// Pipeline creation time.
		create_time?: string

		// The display name of the Pipeline. The name can be up to 128
		// characters long and can consist of any UTF-8 characters.
		display_name?: string

		// Pipeline end time.
		end_time?: string

		// The labels with user-defined metadata to organize PipelineJob.
		// Label keys and values can be no longer than 64 characters
		// (Unicode codepoints), can only contain lowercase letters,
		// numeric characters, underscores and dashes. International
		// characters are allowed. See https://goo.gl/xmQnxf for more
		// information and examples of labels. Note there is some
		// reserved label key for Vertex AI Pipelines. -
		// 'vertex-ai-pipelines-run-billing-id', user set value will get
		// overrided.
		labels?: [string]: string

		// The resource name of the PipelineJob.
		name?: string

		// The full name of the Compute Engine
		// [network](/compute/docs/networks-and-firewalls#networks) to
		// which the Pipeline Job's workload should be peered. For
		// example, 'projects/12345/global/networks/myVPC'.
		// [Format](/compute/docs/reference/rest/v1/networks/insert) is
		// of the form 'projects/{project}/global/networks/{network}'.
		// Where {project} is a project number, as in '12345', and
		// {network} is a network name. Private services access must
		// already be configured for the network. Pipeline job will apply
		// the network configuration to the Google Cloud resources being
		// launched, if applied, such as Vertex AI Training or Dataflow
		// job. If left unspecified, the workload is not peered with any
		// network.
		network?: string

		// A compiled definition of a pipeline, represented as a 'JSON'
		// object. Defines the structure of the pipeline, including its
		// components, tasks, and parameters. This specification is
		// generated by compiling a pipeline function defined in 'Python'
		// using the 'Kubeflow Pipelines SDK'.
		pipeline_spec?: string

		// Whether to do component level validations before job creation.
		preflight_validations?: bool

		// A list of names for the reserved ip ranges under the VPC
		// network that can be used for this Pipeline Job's workload. If
		// set, we will deploy the Pipeline Job's workload within the
		// provided ip ranges. Otherwise, the job will be deployed to any
		// ip ranges under the provided VPC network. Example:
		// ['vertex-ai-ip-range'].
		reserved_ip_ranges?: [...string]

		// The schedule resource name. Only returned if the Pipeline is
		// created by Schedule API.
		schedule_name?: string

		// The service account that the pipeline workload runs as. If not
		// specified, the Compute Engine default service account in the
		// project will be used. See
		// https://cloud.google.com/compute/docs/access/service-accounts#default_service_account
		// Users starting the pipeline must have the
		// 'iam.serviceAccounts.actAs' permission on this service
		// account.
		service_account?: string

		// Pipeline start time.
		start_time?: string

		// Possible values: PIPELINE_STATE_QUEUED PIPELINE_STATE_PENDING
		// PIPELINE_STATE_RUNNING PIPELINE_STATE_SUCCEEDED
		// PIPELINE_STATE_FAILED PIPELINE_STATE_CANCELLING
		// PIPELINE_STATE_CANCELLED PIPELINE_STATE_PAUSED
		state?: string

		// Pipeline template metadata if PipelineJob.template_uri is from
		// supported template registry. Currently, the only supported
		// registry is Artifact Registry.
		template_metadata?: [...close({
			version?: string
		})]

		// A template uri from where the PipelineJob.pipeline_spec, if
		// empty, will be downloaded. Currently, only uri from Vertex
		// Template Registry & Gallery is supported. Reference to
		// https://cloud.google.com/vertex-ai/docs/pipelines/create-pipeline-template.
		template_uri?: string

		// Timestamp when this PipelineJob was most recently updated.
		update_time?: string
	})

	_#defs: "/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/encryption_spec": close({
		// Resource name of the Cloud KMS key used to protect the
		// resource. The Cloud KMS key must be in the same region as the
		// resource. It must have the format
		// 'projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}'.
		kms_key_name!: string
	})

	_#defs: "/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/psc_interface_config": close({
		dns_peering_configs?: matchN(1, [_#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/psc_interface_config/$defs/dns_peering_configs", [..._#defs."/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/psc_interface_config/$defs/dns_peering_configs"]])

		// The name of the Compute Engine [network
		// attachment](https://cloud.google.com/vpc/docs/about-network-attachments)
		// to attach to the resource within the region and user project.
		// To specify this field, you must have already [created a
		// network attachment]
		// (https://cloud.google.com/vpc/docs/create-manage-network-attachments#create-network-attachments).
		// This field is only used for resources using PSC-I.
		network_attachment?: string
	})

	_#defs: "/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/psc_interface_config/$defs/dns_peering_configs": close({
		// The DNS name suffix of the zone being peered to, e.g.,
		// "my-internal-domain.corp.". Must end with a dot.
		domain!: string

		// The VPC network name in the target_project where the DNS zone
		// specified by 'domain' is visible.
		target_network!: string

		// The project ID hosting the Cloud DNS managed zone that contains
		// the 'domain'. The Vertex AI Service Agent requires the
		// dns.peer role on this project.
		target_project!: string
	})

	_#defs: "/$defs/create_pipeline_job_request/$defs/pipeline_job/$defs/runtime_config": close({
		// Possible values: PIPELINE_FAILURE_POLICY_FAIL_SLOW
		// PIPELINE_FAILURE_POLICY_FAIL_FAST
		failure_policy?: string

		// A path in a Cloud Storage bucket, which will be treated as the
		// root output directory of the pipeline. It is used by the
		// system to generate the paths of output artifacts. The artifact
		// paths are generated with a sub-path pattern
		// '{job_id}/{task_id}/{output_key}' under the specified output
		// directory. The service account specified in this pipeline must
		// have the 'storage.objects.get' and 'storage.objects.create'
		// permissions for this bucket.
		gcs_output_directory!: string

		// The runtime artifacts of the PipelineJob. The key will be the
		// input artifact name and the value would be one of the
		// InputArtifact.
		input_artifacts?: [string]: string

		// The runtime parameters of the PipelineJob. The parameters will
		// be passed into PipelineJob.pipeline_spec to replace the
		// placeholders at runtime. This field is used by pipelines built
		// using 'PipelineJob.pipeline_spec.schema_version' 2.1.0, such
		// as pipelines built using Kubeflow Pipelines SDK 1.9 or higher
		// and the v2 DSL.
		parameter_values?: [string]: string
	})
}
