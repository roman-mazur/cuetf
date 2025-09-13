package res

import "list"

#google_cloud_run_v2_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_run_v2_job")
	close({
		// Unstructured key value map that may be set by external tools to
		// store and arbitrary metadata. They are not queryable and
		// should be preserved when modifying objects.
		//
		// Cloud Run API v2 does not support annotations with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected on new resources.
		// All system annotations in v1 now have a corresponding field in
		// v2 Job.
		//
		// This field follows Kubernetes annotations' namespacing, limits,
		// and rules.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Arbitrary identifier for the API client.
		client?: string

		// Arbitrary version identifier for the API client.
		client_version?: string

		// The Conditions of all other associated sub-resources. They
		// contain additional diagnostics information in case the Job
		// does not reach its desired state. See comments in reconciling
		// for additional information on 'reconciliation' process in
		// Cloud Run.
		conditions?: [...close({
			execution_reason?:     string
			last_transition_time?: string
			message?:              string
			reason?:               string
			revision_reason?:      string
			severity?:             string
			state?:                string
			type?:                 string
		})]

		// The creation time.
		create_time?: string

		// Email address of the authenticated creator.
		creator?: string

		// The deletion time.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the job.
		// Defaults to true.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// job,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the job will fail.
		// When the field is set to false, deleting the job is allowed.
		deletion_protection?: bool

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A system-generated fingerprint for this version of the
		// resource. May be used to detect modification conflict during
		// updates.
		etag?: string

		// Number of executions created for this job.
		execution_count?: number

		// For a deleted resource, the time after which it will be
		// permanently deleted.
		expire_time?: string

		// A number that monotonically increases every time the user
		// modifies the desired state.
		generation?: string
		id?:         string

		// Unstructured key value map that can be used to organize and
		// categorize objects. User-provided labels are shared with
		// Google's billing system, so they can be used to filter, or
		// break down billing charges by team, component,
		// environment, state, etc. For more information, visit
		// https://cloud.google.com/resource-manager/docs/creating-managing-labels
		// or https://cloud.google.com/run/docs/configuring/labels.
		//
		// Cloud Run API v2 does not support labels with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected.
		// All system labels in v1 now have a corresponding field in v2
		// Job.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Email address of the last authenticated modifier.
		last_modifier?: string
		binary_authorization?: matchN(1, [#binary_authorization, list.MaxItems(1) & [...#binary_authorization]])
		template?: matchN(1, [#template, list.MaxItems(1) & [_, ...] & [...#template]])
		timeouts?: #timeouts

		// Name of the last created execution.
		latest_created_execution?: [...close({
			completion_time?: string
			create_time?:     string
			name?:            string
		})]

		// The launch stage as defined by [Google Cloud Platform Launch
		// Stages](https://cloud.google.com/products#product-launch-stages).
		// Cloud Run supports ALPHA, BETA, and GA.
		// If no value is specified, GA is assumed. Set the launch stage
		// to a preview stage on input to allow use of preview features
		// in that stage. On read (or output), describes whether the
		// resource uses preview features.
		//
		// For example, if ALPHA is provided as input, but only BETA and
		// GA-level features are used, this field will be BETA on output.
		// Possible values: ["UNIMPLEMENTED", "PRELAUNCH",
		// "EARLY_ACCESS", "ALPHA", "BETA", "GA", "DEPRECATED"]
		launch_stage?: string

		// The location of the cloud run job
		location!: string

		// Name of the Job.
		name!: string

		// The generation of this Job. See comments in reconciling for
		// additional information on reconciliation process in Cloud Run.
		observed_generation?: string
		project?:             string

		// Returns true if the Job is currently being acted upon by the
		// system to bring it into the desired state.
		//
		// When a new Job is created, or an existing one is updated, Cloud
		// Run will asynchronously perform all necessary steps to bring
		// the Job to the desired state. This process is called
		// reconciliation. While reconciliation is in process,
		// observedGeneration and latest_succeeded_execution, will have
		// transient values that might mismatch the intended state: Once
		// reconciliation is over (and this field is false), there are
		// two possible outcomes: reconciliation succeeded and the state
		// matches the Job, or there was an error, and reconciliation
		// failed. This state can be found in terminalCondition.state.
		//
		// If reconciliation succeeded, the following fields will match:
		// observedGeneration and generation, latest_succeeded_execution
		// and latestCreatedExecution.
		//
		// If reconciliation failed, observedGeneration and
		// latest_succeeded_execution will have the state of the last
		// succeeded execution or empty for newly created Job. Additional
		// information on the failure can be found in terminalCondition
		// and conditions
		reconciling?: bool

		// The Condition of this Job, containing its readiness status, and
		// detailed error information in case it did not reach the
		// desired state
		terminal_condition?: [...close({
			execution_reason?:     string
			last_transition_time?: string
			message?:              string
			reason?:               string
			revision_reason?:      string
			severity?:             string
			state?:                string
			type?:                 string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server assigned unique identifier for the Execution. The value
		// is a UUID4 string and guaranteed to remain unchanged until the
		// resource is deleted.
		uid?: string

		// The last-modified time.
		update_time?: string
	})

	#binary_authorization: close({
		// If present, indicates to use Breakglass using this
		// justification. If useDefault is False, then it must be empty.
		// For more information on breakglass, see
		// https://cloud.google.com/binary-authorization/docs/using-breakglass
		breakglass_justification?: string

		// The path to a binary authorization policy. Format:
		// projects/{project}/platforms/cloudRun/{policy-name}
		policy?: string

		// If True, indicates to use the default project's binary
		// authorization policy. If False, binary authorization will be
		// disabled.
		use_default?: bool
	})

	#template: close({
		// Unstructured key value map that may be set by external tools to
		// store and arbitrary metadata. They are not queryable and
		// should be preserved when modifying objects.
		//
		// Cloud Run API v2 does not support annotations with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected.
		// All system annotations in v1 now have a corresponding field in
		// v2 ExecutionTemplate.
		//
		// This field follows Kubernetes annotations' namespacing, limits,
		// and rules.
		annotations?: [string]: string

		// Unstructured key value map that can be used to organize and
		// categorize objects. User-provided labels are shared with
		// Google's billing system, so they can be used to filter,
		// or break down billing charges by team, component, environment,
		// state, etc. For more information, visit
		// https://cloud.google.com/resource-manager/docs/creating-managing-labels
		// or
		// https://cloud.google.com/run/docs/configuring/labels.
		//
		// Cloud Run API v2 does not support labels with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected.
		// All system labels in v1 now have a corresponding field in v2
		// ExecutionTemplate.
		labels?: [string]: string

		// Specifies the maximum desired number of tasks the execution
		// should run at given time. Must be <= taskCount. When the job
		// is run, if this field is 0 or unset, the maximum possible
		// value will be used for that execution. The actual number of
		// tasks running in steady state will be less than this number
		// when there are fewer tasks waiting to be completed remaining,
		// i.e. when the work left to do is less than max parallelism.
		parallelism?: number
		template?: matchN(1, [_#defs."/$defs/template/$defs/template", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/template/$defs/template"]])

		// Specifies the desired number of tasks the execution should run.
		// Setting to 1 means that parallelism is limited to 1 and the
		// success of that task signals the success of the execution.
		// More info:
		// https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
		task_count?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/template/$defs/template": close({
		// A reference to a customer managed encryption key (CMEK) to use
		// to encrypt this container image. For more information, go to
		// https://cloud.google.com/run/docs/securing/using-cmek
		encryption_key?: string

		// The execution environment being used to host this Task.
		// Possible values: ["EXECUTION_ENVIRONMENT_GEN1",
		// "EXECUTION_ENVIRONMENT_GEN2"]
		execution_environment?: string

		// True if GPU zonal redundancy is disabled on this execution.
		gpu_zonal_redundancy_disabled?: bool

		// Number of retries allowed per Task, before marking this Task
		// failed. Defaults to 3. Minimum value is 0.
		max_retries?: number

		// Email address of the IAM service account associated with the
		// Task of a Job. The service account represents the identity of
		// the running task, and determines what permissions the task
		// has. If not provided, the task will use the project's default
		// service account.
		service_account?: string
		containers?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers", [..._#defs."/$defs/template/$defs/template/$defs/containers"]])
		node_selector?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/node_selector", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/node_selector"]])
		volumes?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes", [..._#defs."/$defs/template/$defs/template/$defs/volumes"]])

		// Max allowed time duration the Task may be active before the
		// system will actively try to mark it failed and kill associated
		// containers. This applies per attempt of a task, meaning each
		// retry can run for the full timeout.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		timeout?: string
		vpc_access?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/vpc_access", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/vpc_access"]])
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers": close({
		// Arguments to the entrypoint. The docker image's CMD is used if
		// this is not provided. Variable references are not supported in
		// Cloud Run.
		args?: [...string]

		// Entrypoint array. Not executed within a shell. The docker
		// image's ENTRYPOINT is used if this is not provided. Variable
		// references $(VAR_NAME) are expanded using the container's
		// environment. If a variable cannot be resolved, the reference
		// in the input string will be unchanged. The $(VAR_NAME) syntax
		// can be escaped with a double $$, ie: $$(VAR_NAME). Escaped
		// references will never be expanded, regardless of whether the
		// variable exists or not. More info:
		// https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
		command?: [...string]

		// Names of the containers that must start before this container.
		depends_on?: [...string]
		env?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/env", [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/env"]])

		// URL of the Container image in Google Container Registry or
		// Google Artifact Registry. More info:
		// https://kubernetes.io/docs/concepts/containers/images
		image!: string
		ports?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/ports", [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/ports"]])
		resources?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/resources", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/resources"]])
		startup_probe?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/volume_mounts", [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/volume_mounts"]])

		// Name of the container specified as a DNS_LABEL.
		name?: string

		// Container's working directory. If not specified, the container
		// runtime's default will be used, which might be configured in
		// the container image.
		working_dir?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/env": close({
		value_source?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/env/$defs/value_source", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/env/$defs/value_source"]])

		// Name of the environment variable. Must be a C_IDENTIFIER, and
		// mnay not exceed 32768 characters.
		name!: string

		// Literal value of the environment variable. Defaults to "" and
		// the maximum allowed length is 32768 characters. Variable
		// references are not supported in Cloud Run.
		value?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/env/$defs/value_source": close({
		secret_key_ref?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref"]])
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref": close({
		// The name of the secret in Cloud Secret Manager. Format:
		// {secretName} if the secret is in the same project.
		// projects/{project}/secrets/{secretName} if the secret is in a
		// different project.
		secret!: string

		// The Cloud Secret Manager secret version. Can be 'latest' for
		// the latest value or an integer for a specific version.
		version!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/ports": close({
		// Port number the container listens on. This must be a valid TCP
		// port number, 0 < containerPort < 65536.
		container_port?: number

		// If specified, used to specify which protocol to use. Allowed
		// values are "http1" and "h2c".
		name?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/resources": close({
		// Only memory, CPU, and nvidia.com/gpu are supported. Use key
		// 'cpu' for CPU limit, 'memory' for memory limit,
		// 'nvidia.com/gpu' for gpu limit. Note: The only supported
		// values for CPU are '1', '2', '4', and '8'. Setting 4 CPU
		// requires at least 2Gi of memory. The values of the map is
		// string form of the 'quantity' k8s type:
		// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
		limits?: [string]: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/startup_probe": close({
		// Minimum consecutive failures for the probe to be considered
		// failed after
		// having succeeded. Defaults to 3. Minimum value is 1.
		failure_threshold?: number

		// Number of seconds after the container has started before the
		// probe is
		// initiated.
		// Defaults to 0 seconds. Minimum value is 0. Maximum value is
		// 240.
		initial_delay_seconds?: number

		// How often (in seconds) to perform the probe.
		// Default to 10 seconds. Minimum value is 1. Maximum value is
		// 240.
		period_seconds?: number
		grpc?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/grpc"]])
		http_get?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get"]])

		// Number of seconds after which the probe times out.
		// Defaults to 1 second. Minimum value is 1. Maximum value is
		// 3600.
		// Must be smaller than periodSeconds.
		timeout_seconds?: number
		tcp_socket?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/tcp_socket"]])
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/grpc": close({
		// Port number to access on the container. Number must be in the
		// range 1 to 65535.
		// If not specified, defaults to the same value as
		// container.ports[0].containerPort.
		port?: number

		// The name of the service to place in the gRPC HealthCheckRequest
		// (see
		// https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
		// If this is not specified, the default behavior is defined by
		// gRPC.
		service?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get": close({
		http_headers?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers"]])

		// Path to access on the HTTP server. If set, it should not be
		// empty string.
		path?: string

		// Port number to access on the container. Number must be in the
		// range 1 to 65535.
		// If not specified, defaults to the same value as
		// container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers": close({
		// The header field name.
		name!: string

		// The header field value.
		value?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/startup_probe/$defs/tcp_socket": close({
		// Port number to access on the container. Number must be in the
		// range 1 to 65535.
		// If not specified, defaults to the same value as
		// container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/template/$defs/template/$defs/containers/$defs/volume_mounts": close({
		// Path within the container at which the volume should be
		// mounted. Must not contain ':'. For Cloud SQL volumes, it can
		// be left empty, or must otherwise be /cloudsql. All instances
		// defined in the Volume will be available as
		// /cloudsql/[instance]. For more information on Cloud SQL
		// volumes, visit
		// https://cloud.google.com/sql/docs/mysql/connect-run
		mount_path!: string

		// This must match the Name of a Volume.
		name!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/node_selector": close({
		// The GPU to attach to an instance. See
		// https://cloud.google.com/run/docs/configuring/jobs/gpu for
		// configuring GPU.
		accelerator!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes": close({
		cloud_sql_instance?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes/$defs/cloud_sql_instance", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/volumes/$defs/cloud_sql_instance"]])
		empty_dir?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes/$defs/empty_dir", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/volumes/$defs/empty_dir"]])
		gcs?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/volumes/$defs/gcs"]])
		nfs?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes/$defs/nfs", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/volumes/$defs/nfs"]])
		secret?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes/$defs/secret", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/template/$defs/volumes/$defs/secret"]])

		// Volume's name.
		name!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes/$defs/cloud_sql_instance": close({
		// The Cloud SQL instance connection names, as can be found in
		// https://console.cloud.google.com/sql/instances. Visit
		// https://cloud.google.com/sql/docs/mysql/connect-run for more
		// information on how to connect Cloud SQL and Cloud Run. Format:
		// {project}:{location}:{instance}
		instances?: [...string]
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes/$defs/empty_dir": close({
		// The different types of medium supported for EmptyDir. Default
		// value: "MEMORY" Possible values: ["MEMORY"]
		medium?: string

		// Limit on the storage usable by this EmptyDir volume. The size
		// limit is also applicable for memory medium. The maximum usage
		// on memory medium EmptyDir would be the minimum value between
		// the SizeLimit specified here and the sum of memory limits of
		// all containers in a pod. This field's values are of the
		// 'Quantity' k8s type:
		// https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/.
		// The default is nil which means that the limit is undefined.
		// More info:
		// https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
		size_limit?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes/$defs/gcs": close({
		// Name of the cloud storage bucket to back the volume. The
		// resource service account must have permission to access the
		// bucket.
		bucket!: string

		// If true, mount this volume as read-only in all mounts. If
		// false, mount this volume as read-write.
		read_only?: bool
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes/$defs/nfs": close({
		// Path that is exported by the NFS server.
		path?: string

		// If true, mount this volume as read-only in all mounts.
		read_only?: bool

		// Hostname or IP address of the NFS server.
		server!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes/$defs/secret": close({
		items?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/volumes/$defs/secret/$defs/items", [..._#defs."/$defs/template/$defs/template/$defs/volumes/$defs/secret/$defs/items"]])

		// Integer representation of mode bits to use on created files by
		// default. Must be a value between 0000 and 0777 (octal),
		// defaulting to 0444. Directories within the path are not
		// affected by this setting.
		default_mode?: number

		// The name of the secret in Cloud Secret Manager. Format:
		// {secret} if the secret is in the same project.
		// projects/{project}/secrets/{secret} if the secret is in a
		// different project.
		secret!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/volumes/$defs/secret/$defs/items": close({
		// Integer octal mode bits to use on this file, must be a value
		// between 01 and 0777 (octal). If 0 or not set, the Volume's
		// default mode will be used.
		mode?: number

		// The relative path of the secret in the container.
		path!: string

		// The Cloud Secret Manager secret version. Can be 'latest' for
		// the latest value or an integer for a specific version
		version!: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/vpc_access": close({
		network_interfaces?: matchN(1, [_#defs."/$defs/template/$defs/template/$defs/vpc_access/$defs/network_interfaces", [..._#defs."/$defs/template/$defs/template/$defs/vpc_access/$defs/network_interfaces"]])

		// VPC Access connector name. Format:
		// projects/{project}/locations/{location}/connectors/{connector},
		// where {project} can be project id or number.
		connector?: string

		// Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC",
		// "PRIVATE_RANGES_ONLY"]
		egress?: string
	})

	_#defs: "/$defs/template/$defs/template/$defs/vpc_access/$defs/network_interfaces": close({
		// The VPC network that the Cloud Run resource will be able to
		// send traffic to. At least one of network or subnetwork must be
		// specified. If both
		// network and subnetwork are specified, the given VPC subnetwork
		// must belong to the given VPC network. If network is not
		// specified, it will be
		// looked up from the subnetwork.
		network?: string

		// The VPC subnetwork that the Cloud Run resource will get IPs
		// from. At least one of network or subnetwork must be specified.
		// If both
		// network and subnetwork are specified, the given VPC subnetwork
		// must belong to the given VPC network. If subnetwork is not
		// specified, the
		// subnetwork with the same name with the network will be used.
		subnetwork?: string

		// Network tags applied to this Cloud Run job.
		tags?: [...string]
	})
}
