package res

import "list"

#google_data_pipeline_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_pipeline_pipeline")
	close({
		// The timestamp when the pipeline was initially created. Set by
		// the Data Pipelines service.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// The display name of the pipeline. It can contain only letters
		// ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
		display_name?: string

		// Number of jobs.
		job_count?: number
		id?:        string

		// The timestamp when the pipeline was last modified. Set by the
		// Data Pipelines service.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		last_update_time?: string

		// "The pipeline name. For example':
		// 'projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID."
		// "- PROJECT_ID can contain letters ([A-Za-z]), numbers ([0-9]),
		// hyphens (-), colons (:), and periods (.). For more
		// information, see Identifying projects."
		// "LOCATION_ID is the canonical ID for the pipeline's location.
		// The list of available locations can be obtained by calling
		// google.cloud.location.Locations.ListLocations. Note that the
		// Data Pipelines service is not available in all regions. It
		// depends on Cloud Scheduler, an App Engine application, so it's
		// only available in App Engine regions."
		// "PIPELINE_ID is the ID of the pipeline. Must be unique for the
		// selected project and location."
		name!: string

		// The sources of the pipeline (for example, Dataplex). The keys
		// and values are set by the corresponding sources during
		// pipeline creation.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		pipeline_sources?: [string]: string
		project?: string

		// A reference to the region
		region?: string
		schedule_info?: matchN(1, [#schedule_info, list.MaxItems(1) & [...#schedule_info]])
		timeouts?: #timeouts
		workload?: matchN(1, [#workload, list.MaxItems(1) & [...#workload]])

		// Optional. A service account email to be used with the Cloud
		// Scheduler job. If not specified, the default compute engine
		// service account will be used.
		scheduler_service_account_email?: string

		// The state of the pipeline. When the pipeline is created, the
		// state is set to 'PIPELINE_STATE_ACTIVE' by default. State
		// changes can be requested by setting the state to stopping,
		// paused, or resuming. State cannot be changed through
		// pipelines.patch requests.
		// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#state
		// Possible values: ["STATE_UNSPECIFIED", "STATE_RESUMING",
		// "STATE_ACTIVE", "STATE_STOPPING", "STATE_ARCHIVED",
		// "STATE_PAUSED"]
		state!: string

		// The type of the pipeline. This field affects the scheduling of
		// the pipeline and the type of metrics to show for the pipeline.
		// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#pipelinetype
		// Possible values: ["PIPELINE_TYPE_UNSPECIFIED",
		// "PIPELINE_TYPE_BATCH", "PIPELINE_TYPE_STREAMING"]
		type!: string
	})

	#schedule_info: close({
		// When the next Scheduler job is going to run.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		next_job_time?: string

		// Unix-cron format of the schedule. This information is retrieved
		// from the linked Cloud Scheduler.
		schedule?: string

		// Timezone ID. This matches the timezone IDs used by the Cloud
		// Scheduler API. If empty, UTC time is assumed.
		time_zone?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#workload: close({
		dataflow_flex_template_request?: matchN(1, [_#defs."/$defs/workload/$defs/dataflow_flex_template_request", list.MaxItems(1) & [..._#defs."/$defs/workload/$defs/dataflow_flex_template_request"]])
		dataflow_launch_template_request?: matchN(1, [_#defs."/$defs/workload/$defs/dataflow_launch_template_request", list.MaxItems(1) & [..._#defs."/$defs/workload/$defs/dataflow_launch_template_request"]])
	})

	_#defs: "/$defs/workload/$defs/dataflow_flex_template_request": close({
		// The regional endpoint to which to direct the request. For
		// example, us-central1, us-west1.
		location!: string
		launch_parameter!: matchN(1, [_#defs."/$defs/workload/$defs/dataflow_flex_template_request/$defs/launch_parameter", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/workload/$defs/dataflow_flex_template_request/$defs/launch_parameter"]])

		// The ID of the Cloud Platform project that the job belongs to.
		project_id!: string

		// If true, the request is validated but not actually executed.
		// Defaults to false.
		validate_only?: bool
	})

	_#defs: "/$defs/workload/$defs/dataflow_flex_template_request/$defs/launch_parameter": close({
		// Cloud Storage path to a file with a JSON-serialized
		// ContainerSpec as content.
		container_spec_gcs_path?: string

		// The job name to use for the created job. For an update job
		// request, the job name should be the same as the existing
		// running job.
		job_name!: string

		// Launch options for this Flex Template job. This is a common set
		// of options across languages and templates. This should not be
		// used to pass job parameters.
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		launch_options?: [string]: string

		// 'The parameters for the Flex Template. Example:
		// {"numWorkers":"5"}'
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		parameters?: [string]: string

		// 'Use this to pass transform name mappings for streaming update
		// jobs. Example: {"oldTransformName":"newTransformName",...}'
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		transform_name_mappings?: [string]: string

		// Set this to true if you are sending a request to update a
		// running streaming job. When set, the job name should be the
		// same as the running job.
		update?: bool
		environment?: matchN(1, [_#defs."/$defs/workload/$defs/dataflow_flex_template_request/$defs/launch_parameter/$defs/environment", list.MaxItems(1) & [..._#defs."/$defs/workload/$defs/dataflow_flex_template_request/$defs/launch_parameter/$defs/environment"]])
	})

	_#defs: "/$defs/workload/$defs/dataflow_flex_template_request/$defs/launch_parameter/$defs/environment": close({
		// Additional experiment flags for the job.
		additional_experiments?: [...string]

		// Additional user labels to be specified for the job. Keys and
		// values should follow the restrictions specified in the
		// labeling restrictions page. An object containing a list of
		// key/value pairs.
		// 'Example: { "name": "wrench", "mass": "1kg", "count": "3" }.'
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		additional_user_labels?: [string]: string

		// Whether to enable Streaming Engine for the job.
		enable_streaming_engine?: bool

		// Set FlexRS goal for the job.
		// https://cloud.google.com/dataflow/docs/guides/flexrs
		// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexResourceSchedulingGoal
		// Possible values: ["FLEXRS_UNSPECIFIED",
		// "FLEXRS_SPEED_OPTIMIZED", "FLEXRS_COST_OPTIMIZED"]
		flexrs_goal?: string

		// Configuration for VM IPs.
		// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration
		// Possible values: ["WORKER_IP_UNSPECIFIED", "WORKER_IP_PUBLIC",
		// "WORKER_IP_PRIVATE"]
		ip_configuration?: string

		// 'Name for the Cloud KMS key for the job. The key format is:
		// projects//locations//keyRings//cryptoKeys/'
		kms_key_name?: string

		// The machine type to use for the job. Defaults to the value from
		// the template if not specified.
		machine_type?: string

		// The maximum number of Compute Engine instances to be made
		// available to your pipeline during execution, from 1 to 1000.
		max_workers?: number

		// Network to which VMs will be assigned. If empty or unspecified,
		// the service will use the network "default".
		network?: string

		// The initial number of Compute Engine instances for the job.
		num_workers?: number

		// The email address of the service account to run the job as.
		service_account_email?: string

		// Subnetwork to which VMs will be assigned, if desired. You can
		// specify a subnetwork using either a complete URL or an
		// abbreviated path. Expected to be of the form
		// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
		// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork
		// is located in a Shared VPC network, you must use the complete
		// URL.
		subnetwork?: string

		// The Cloud Storage path to use for temporary files. Must be a
		// valid Cloud Storage URL, beginning with gs://.
		temp_location?: string

		// The Compute Engine region
		// (https://cloud.google.com/compute/docs/regions-zones/regions-zones)
		// in which worker processing should occur, e.g. "us-west1".
		// Mutually exclusive with workerZone. If neither workerRegion
		// nor workerZone is specified, default to the control plane's
		// region.
		worker_region?: string

		// The Compute Engine zone
		// (https://cloud.google.com/compute/docs/regions-zones/regions-zones)
		// in which worker processing should occur, e.g. "us-west1-a".
		// Mutually exclusive with workerRegion. If neither workerRegion
		// nor workerZone is specified, a zone in the control plane's
		// region is chosen based on available capacity. If both
		// workerZone and zone are set, workerZone takes precedence.
		worker_zone?: string

		// The Compute Engine availability zone for launching worker
		// instances to run your pipeline. In the future, workerZone will
		// take precedence.
		zone?: string
	})

	_#defs: "/$defs/workload/$defs/dataflow_launch_template_request": close({
		// A Cloud Storage path to the template from which to create the
		// job. Must be a valid Cloud Storage URL, beginning with
		// 'gs://'.
		gcs_path?: string

		// The regional endpoint to which to direct the request.
		location?: string

		// The ID of the Cloud Platform project that the job belongs to.
		project_id!: string
		launch_parameters?: matchN(1, [_#defs."/$defs/workload/$defs/dataflow_launch_template_request/$defs/launch_parameters", list.MaxItems(1) & [..._#defs."/$defs/workload/$defs/dataflow_launch_template_request/$defs/launch_parameters"]])
		validate_only?: bool
	})

	_#defs: "/$defs/workload/$defs/dataflow_launch_template_request/$defs/launch_parameters": close({
		// The job name to use for the created job.
		job_name!: string

		// The runtime parameters to pass to the job.
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		parameters?: [string]: string

		// Map of transform name prefixes of the job to be replaced to the
		// corresponding name prefixes of the new job. Only applicable
		// when updating a pipeline.
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		transform_name_mapping?: [string]: string
		environment?: matchN(1, [_#defs."/$defs/workload/$defs/dataflow_launch_template_request/$defs/launch_parameters/$defs/environment", list.MaxItems(1) & [..._#defs."/$defs/workload/$defs/dataflow_launch_template_request/$defs/launch_parameters/$defs/environment"]])

		// If set, replace the existing pipeline with the name specified
		// by jobName with this pipeline, preserving state.
		update?: bool
	})

	_#defs: "/$defs/workload/$defs/dataflow_launch_template_request/$defs/launch_parameters/$defs/environment": close({
		// Additional experiment flags for the job.
		additional_experiments?: [...string]

		// Additional user labels to be specified for the job. Keys and
		// values should follow the restrictions specified in the
		// labeling restrictions page. An object containing a list of
		// key/value pairs.
		// 'Example: { "name": "wrench", "mass": "1kg", "count": "3" }.'
		// 'An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.'
		additional_user_labels?: [string]: string

		// Whether to bypass the safety checks for the job's temporary
		// directory. Use with caution.
		bypass_temp_dir_validation?: bool

		// Whether to enable Streaming Engine for the job.
		enable_streaming_engine?: bool

		// Configuration for VM IPs.
		// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration
		// Possible values: ["WORKER_IP_UNSPECIFIED", "WORKER_IP_PUBLIC",
		// "WORKER_IP_PRIVATE"]
		ip_configuration?: string

		// 'Name for the Cloud KMS key for the job. The key format is:
		// projects//locations//keyRings//cryptoKeys/'
		kms_key_name?: string

		// The machine type to use for the job. Defaults to the value from
		// the template if not specified.
		machine_type?: string

		// The maximum number of Compute Engine instances to be made
		// available to your pipeline during execution, from 1 to 1000.
		max_workers?: number

		// Network to which VMs will be assigned. If empty or unspecified,
		// the service will use the network "default".
		network?: string

		// The initial number of Compute Engine instances for the job.
		num_workers?: number

		// The email address of the service account to run the job as.
		service_account_email?: string

		// Subnetwork to which VMs will be assigned, if desired. You can
		// specify a subnetwork using either a complete URL or an
		// abbreviated path. Expected to be of the form
		// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
		// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork
		// is located in a Shared VPC network, you must use the complete
		// URL.
		subnetwork?: string

		// The Cloud Storage path to use for temporary files. Must be a
		// valid Cloud Storage URL, beginning with gs://.
		temp_location?: string

		// The Compute Engine region
		// (https://cloud.google.com/compute/docs/regions-zones/regions-zones)
		// in which worker processing should occur, e.g. "us-west1".
		// Mutually exclusive with workerZone. If neither workerRegion
		// nor workerZone is specified, default to the control plane's
		// region.
		worker_region?: string

		// The Compute Engine zone
		// (https://cloud.google.com/compute/docs/regions-zones/regions-zones)
		// in which worker processing should occur, e.g. "us-west1-a".
		// Mutually exclusive with workerRegion. If neither workerRegion
		// nor workerZone is specified, a zone in the control plane's
		// region is chosen based on available capacity. If both
		// workerZone and zone are set, workerZone takes precedence.
		worker_zone?: string

		// The Compute Engine availability zone for launching worker
		// instances to run your pipeline. In the future, workerZone will
		// take precedence.
		zone?: string
	})
}
