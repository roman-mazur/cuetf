package res

import "list"

#google_cloud_run_v2_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_run_v2_service")
	close({
		// Unstructured key value map that may be set by external tools to
		// store and arbitrary metadata. They are not queryable and
		// should be preserved when modifying objects.
		//
		// Cloud Run API v2 does not support annotations with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected in new resources.
		// All system annotations in v1 now have a corresponding field in
		// v2 Service.
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
		// contain additional diagnostics information in case the Service
		// does not reach its Serving state. See comments in reconciling
		// for additional information on reconciliation process in Cloud
		// Run.
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

		// One or more custom audiences that you want this service to
		// support. Specify each custom audience as the full URL in a
		// string. The custom audiences are encoded in the token and used
		// to authenticate requests.
		// For more information, see
		// https://cloud.google.com/run/docs/configuring/custom-audiences.
		custom_audiences?: [...string]

		// Disables public resolution of the default URI of this service.
		default_uri_disabled?: bool

		// The deletion time.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the
		// service. Defaults to true.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// service,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the service will fail.
		// When the field is set to false, deleting the service is
		// allowed.
		deletion_protection?: bool

		// User-provided description of the Service. This field currently
		// has a 512-character limit.
		description?: string

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

		// For a deleted resource, the time after which it will be
		// permanently deleted.
		expire_time?: string

		// A number that monotonically increases every time the user
		// modifies the desired state. Please note that unlike v1, this
		// is an int64 value. As with most Google APIs, its JSON
		// representation will be a string instead of an integer.
		generation?: string

		// Provides the ingress settings for this Service. On output,
		// returns the currently observed ingress settings, or
		// INGRESS_TRAFFIC_UNSPECIFIED if no revision is active. Possible
		// values: ["INGRESS_TRAFFIC_ALL",
		// "INGRESS_TRAFFIC_INTERNAL_ONLY",
		// "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"]
		ingress?: string
		id?:      string

		// Disables IAM permission check for run.routes.invoke for callers
		// of this service. For more information, visit
		// https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
		invoker_iam_disabled?: bool

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
		// Service.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		binary_authorization?: matchN(1, [#binary_authorization, list.MaxItems(1) & [...#binary_authorization]])
		build_config?: matchN(1, [#build_config, list.MaxItems(1) & [...#build_config]])
		multi_region_settings?: matchN(1, [#multi_region_settings, list.MaxItems(1) & [...#multi_region_settings]])
		scaling?: matchN(1, [#scaling, list.MaxItems(1) & [...#scaling]])
		template?: matchN(1, [#template, list.MaxItems(1) & [_, ...] & [...#template]])
		timeouts?: #timeouts
		traffic?: matchN(1, [#traffic, [...#traffic]])

		// Email address of the last authenticated modifier.
		last_modifier?: string

		// Name of the last created revision. See comments in reconciling
		// for additional information on reconciliation process in Cloud
		// Run.
		latest_created_revision?: string

		// Name of the latest revision that is serving traffic. See
		// comments in reconciling for additional information on
		// reconciliation process in Cloud Run.
		latest_ready_revision?: string

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

		// The location of the cloud run service
		location!: string

		// Name of the Service.
		name!: string

		// The generation of this Service currently serving traffic. See
		// comments in reconciling for additional information on
		// reconciliation process in Cloud Run. Please note that unlike
		// v1, this is an int64 value. As with most Google APIs, its JSON
		// representation will be a string instead of an integer.
		observed_generation?: string
		project?:             string

		// Returns true if the Service is currently being acted upon by
		// the system to bring it into the desired state.
		//
		// When a new Service is created, or an existing one is updated,
		// Cloud Run will asynchronously perform all necessary steps to
		// bring the Service to the desired serving state. This process
		// is called reconciliation. While reconciliation is in process,
		// observedGeneration, latest_ready_revison, trafficStatuses, and
		// uri will have transient values that might mismatch the
		// intended state: Once reconciliation is over (and this field is
		// false), there are two possible outcomes: reconciliation
		// succeeded and the serving state matches the Service, or there
		// was an error, and reconciliation failed. This state can be
		// found in terminalCondition.state.
		//
		// If reconciliation succeeded, the following fields will match:
		// traffic and trafficStatuses, observedGeneration and
		// generation, latestReadyRevision and latestCreatedRevision.
		//
		// If reconciliation failed, trafficStatuses, observedGeneration,
		// and latestReadyRevision will have the state of the last
		// serving revision, or empty for newly created Services.
		// Additional information on the failure can be found in
		// terminalCondition and conditions.
		reconciling?: bool

		// The Condition of this Service, containing its readiness status,
		// and detailed error information in case it did not reach a
		// serving state. See comments in reconciling for additional
		// information on reconciliation process in Cloud Run.
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

		// Detailed status information for corresponding traffic targets.
		// See comments in reconciling for additional information on
		// reconciliation process in Cloud Run.
		traffic_statuses?: [...close({
			percent?:  number
			revision?: string
			tag?:      string
			type?:     string
			uri?:      string
		})]

		// Server assigned unique identifier for the trigger. The value is
		// a UUID4 string and guaranteed to remain unchanged until the
		// resource is deleted.
		uid?: string

		// The last-modified time.
		update_time?: string

		// The main URI in which this Service is serving traffic.
		uri?: string

		// All URLs serving traffic for this Service.
		urls?: [...string]
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

	#build_config: close({
		// The base image used to build the function.
		base_image?: string

		// Sets whether the function will receive automatic base image
		// updates.
		enable_automatic_updates?: bool

		// User-provided build-time environment variables for the
		// function.
		environment_variables?: [string]: string

		// The name of the function (as defined in source code) that will
		// be executed. Defaults to the resource name suffix, if not
		// specified. For backward compatibility, if function with given
		// name is not found, then the system will try to use function
		// named "function".
		function_target?: string

		// Artifact Registry URI to store the built image.
		image_uri?: string

		// The Cloud Build name of the latest successful deployment of the
		// function.
		name?: string

		// Service account to be used for building the container. The
		// format of this field is
		// 'projects/{projectId}/serviceAccounts/{serviceAccountEmail}'.
		service_account?: string

		// The Cloud Storage bucket URI where the function source code is
		// located.
		source_location?: string

		// Name of the Cloud Build Custom Worker Pool that should be used
		// to build the Cloud Run function. The format of this field is
		// 'projects/{project}/locations/{region}/workerPools/{workerPool}'
		// where {project} and {region} are the project id and region
		// respectively where the worker pool is defined and {workerPool}
		// is the short name of the worker pool.
		worker_pool?: string
	})

	#multi_region_settings: close({
		// System-generated unique id for the multi-region Service.
		multi_region_id?: string

		// The list of regions to deploy the multi-region Service.
		regions?: [...string]
	})

	#scaling: close({
		// Total instance count for the service in manual scaling mode.
		// This number of instances is divided among all revisions with
		// specified traffic based on the percent of traffic they are
		// receiving.
		manual_instance_count?: number

		// Combined maximum number of instances for all revisions
		// receiving traffic.
		max_instance_count?: number

		// Minimum number of instances for the service, to be divided
		// among all revisions receiving traffic.
		min_instance_count?: number

		// The [scaling
		// mode](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#scalingmode)
		// for the service. Possible values: ["AUTOMATIC", "MANUAL"]
		scaling_mode?: string
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
		// v2 RevisionTemplate.
		//
		// This field follows Kubernetes annotations' namespacing, limits,
		// and rules.
		annotations?: [string]: string

		// A reference to a customer managed encryption key (CMEK) to use
		// to encrypt this container image. For more information, go to
		// https://cloud.google.com/run/docs/securing/using-cmek
		encryption_key?: string

		// The sandbox environment to host this Revision. Possible values:
		// ["EXECUTION_ENVIRONMENT_GEN1", "EXECUTION_ENVIRONMENT_GEN2"]
		execution_environment?: string

		// True if GPU zonal redundancy is disabled on this revision.
		gpu_zonal_redundancy_disabled?: bool

		// Disables health checking containers during deployment.
		health_check_disabled?: bool

		// Unstructured key value map that can be used to organize and
		// categorize objects. User-provided labels are shared with
		// Google's billing system, so they can be used to filter, or
		// break down billing charges by team, component, environment,
		// state, etc.
		// For more information, visit
		// https://cloud.google.com/resource-manager/docs/creating-managing-labels
		// or https://cloud.google.com/run/docs/configuring/labels.
		//
		// Cloud Run API v2 does not support labels with
		// 'run.googleapis.com', 'cloud.googleapis.com',
		// 'serving.knative.dev', or 'autoscaling.knative.dev'
		// namespaces, and they will be rejected.
		// All system labels in v1 now have a corresponding field in v2
		// RevisionTemplate.
		labels?: [string]: string

		// Sets the maximum number of requests that each serving instance
		// can receive.
		// If not specified or 0, defaults to 80 when requested CPU >= 1
		// and defaults to 1 when requested CPU < 1.
		max_instance_request_concurrency?: number

		// The unique name for the revision. If this field is omitted, it
		// will be automatically generated based on the Service name.
		revision?: string
		containers?: matchN(1, [_#defs."/$defs/template/$defs/containers", [..._#defs."/$defs/template/$defs/containers"]])
		node_selector?: matchN(1, [_#defs."/$defs/template/$defs/node_selector", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/node_selector"]])
		scaling?: matchN(1, [_#defs."/$defs/template/$defs/scaling", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/scaling"]])
		volumes?: matchN(1, [_#defs."/$defs/template/$defs/volumes", [..._#defs."/$defs/template/$defs/volumes"]])
		vpc_access?: matchN(1, [_#defs."/$defs/template/$defs/vpc_access", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/vpc_access"]])

		// Email address of the IAM service account associated with the
		// revision of the service. The service account represents the
		// identity of the running revision, and determines what
		// permissions the revision has. If not provided, the revision
		// will use the project's default service account.
		service_account?: string

		// Enables session affinity. For more information, go to
		// https://cloud.google.com/run/docs/configuring/session-affinity
		session_affinity?: bool

		// Max allowed time for an instance to respond to a request.
		//
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		timeout?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#traffic: close({
		// Specifies percent of the traffic to this Revision. This
		// defaults to zero if unspecified.
		percent?: number

		// Revision to which to send this portion of traffic, if traffic
		// allocation is by revision.
		revision?: string

		// Indicates a string to be part of the URI to exclusively
		// reference this target.
		tag?: string

		// The allocation type for this traffic target. Possible values:
		// ["TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST",
		// "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"]
		type?: string
	})

	_#defs: "/$defs/template/$defs/containers": close({
		// Arguments to the entrypoint. The docker image's CMD is used if
		// this is not provided. Variable references are not supported in
		// Cloud Run.
		args?: [...string]

		// Base image for this container. If set, it indicates that the
		// service is enrolled into automatic base image update.
		base_image_uri?: string

		// The build info of the container image.
		build_info?: [...close({
			function_target?: string
			source_location?: string
		})]

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

		// Containers which should be started before this container. If
		// specified the container will wait to start until all
		// containers with the listed names are healthy.
		depends_on?: [...string]

		// URL of the Container image in Google Container Registry or
		// Google Artifact Registry. More info:
		// https://kubernetes.io/docs/concepts/containers/images
		image!: string
		env?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/env", [..._#defs."/$defs/template/$defs/containers/$defs/env"]])
		liveness_probe?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/liveness_probe", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/liveness_probe"]])
		ports?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/ports", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/ports"]])
		resources?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/resources", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/resources"]])
		startup_probe?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/startup_probe", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/startup_probe"]])

		// Name of the container specified as a DNS_LABEL.
		name?: string
		volume_mounts?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/volume_mounts", [..._#defs."/$defs/template/$defs/containers/$defs/volume_mounts"]])

		// Container's working directory. If not specified, the container
		// runtime's default will be used, which might be configured in
		// the container image.
		working_dir?: string
	})

	_#defs: "/$defs/template/$defs/containers/$defs/env": close({
		value_source?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/env/$defs/value_source", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/env/$defs/value_source"]])

		// Name of the environment variable. Must be a C_IDENTIFIER, and
		// may not exceed 32768 characters.
		name!: string

		// Literal value of the environment variable. Defaults to "" and
		// the maximum allowed length is 32768 characters. Variable
		// references are not supported in Cloud Run.
		value?: string
	})

	_#defs: "/$defs/template/$defs/containers/$defs/env/$defs/value_source": close({
		secret_key_ref?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref"]])
	})

	_#defs: "/$defs/template/$defs/containers/$defs/env/$defs/value_source/$defs/secret_key_ref": close({
		// The name of the secret in Cloud Secret Manager. Format:
		// {secretName} if the secret is in the same project.
		// projects/{project}/secrets/{secretName} if the secret is in a
		// different project.
		secret!: string

		// The Cloud Secret Manager secret version. Can be 'latest' for
		// the latest value or an integer for a specific version.
		version?: string
	})

	_#defs: "/$defs/template/$defs/containers/$defs/liveness_probe": close({
		// Minimum consecutive failures for the probe to be considered
		// failed after having succeeded. Defaults to 3. Minimum value is
		// 1.
		failure_threshold?: number

		// Number of seconds after the container has started before the
		// probe is initiated. Defaults to 0 seconds. Minimum value is 0.
		// Maximum value for liveness probe is 3600. Maximum value for
		// startup probe is 240. More info:
		// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		initial_delay_seconds?: number

		// How often (in seconds) to perform the probe. Default to 10
		// seconds. Minimum value is 1. Maximum value for liveness probe
		// is 3600. Maximum value for startup probe is 240. Must be
		// greater or equal than timeoutSeconds
		period_seconds?: number
		grpc?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/grpc"]])
		http_get?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/http_get"]])

		// Number of seconds after which the probe times out. Defaults to
		// 1 second. Minimum value is 1. Maximum value is 3600. Must be
		// smaller than periodSeconds. More info:
		// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		timeout_seconds?: number
		tcp_socket?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/tcp_socket"]])
	})

	_#defs: "/$defs/template/$defs/containers/$defs/liveness_probe/$defs/grpc": close({
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

	_#defs: "/$defs/template/$defs/containers/$defs/liveness_probe/$defs/http_get": close({
		http_headers?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/template/$defs/containers/$defs/liveness_probe/$defs/http_get/$defs/http_headers"]])

		// Path to access on the HTTP server. Defaults to '/'.
		path?: string

		// Port number to access on the container. Number must be in the
		// range 1 to 65535.
		// If not specified, defaults to the same value as
		// container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/template/$defs/containers/$defs/liveness_probe/$defs/http_get/$defs/http_headers": close({
		// The header field name
		name!: string

		// The header field value
		value?: string
	})

	_#defs: "/$defs/template/$defs/containers/$defs/liveness_probe/$defs/tcp_socket": close({
		// Port number to access on the container. Must be in the range 1
		// to 65535.
		// If not specified, defaults to the exposed port of the
		// container, which
		// is the value of container.ports[0].containerPort.
		port!: number
	})

	_#defs: "/$defs/template/$defs/containers/$defs/ports": close({
		// Port number the container listens on. This must be a valid TCP
		// port number, 0 < containerPort < 65536.
		container_port?: number

		// If specified, used to specify which protocol to use. Allowed
		// values are "http1" and "h2c".
		name?: string
	})

	_#defs: "/$defs/template/$defs/containers/$defs/resources": close({
		// Determines whether CPU is only allocated during requests. True
		// by default if the parent 'resources' field is not set.
		// However, if
		// 'resources' is set, this field must be explicitly set to true
		// to preserve the default behavior.
		cpu_idle?: bool

		// Only memory, CPU, and nvidia.com/gpu are supported. Use key
		// 'cpu' for CPU limit, 'memory' for memory limit,
		// 'nvidia.com/gpu' for gpu limit. Note: The only supported
		// values for CPU are '1', '2', '4', '6' and '8'. Setting 4 CPU
		// requires at least 2Gi of memory. The values of the map is
		// string form of the 'quantity' k8s type:
		// https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
		limits?: [string]: string

		// Determines whether CPU should be boosted on startup of a new
		// container instance above the requested CPU threshold, this can
		// help reduce cold-start latency.
		startup_cpu_boost?: bool
	})

	_#defs: "/$defs/template/$defs/containers/$defs/startup_probe": close({
		// Minimum consecutive failures for the probe to be considered
		// failed after having succeeded. Defaults to 3. Minimum value is
		// 1.
		failure_threshold?: number

		// Number of seconds after the container has started before the
		// probe is initiated. Defaults to 0 seconds. Minimum value is 0.
		// Maximum value for liveness probe is 3600. Maximum value for
		// startup probe is 240. More info:
		// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		initial_delay_seconds?: number

		// How often (in seconds) to perform the probe. Default to 10
		// seconds. Minimum value is 1. Maximum value for liveness probe
		// is 3600. Maximum value for startup probe is 240. Must be
		// greater or equal than timeoutSeconds
		period_seconds?: number
		grpc?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/grpc"]])
		http_get?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get"]])

		// Number of seconds after which the probe times out. Defaults to
		// 1 second. Minimum value is 1. Maximum value is 3600. Must be
		// smaller than periodSeconds. More info:
		// https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
		timeout_seconds?: number
		tcp_socket?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/tcp_socket"]])
	})

	_#defs: "/$defs/template/$defs/containers/$defs/startup_probe/$defs/grpc": close({
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

	_#defs: "/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get": close({
		http_headers?: matchN(1, [_#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers"]])

		// Path to access on the HTTP server. Defaults to '/'.
		path?: string

		// Port number to access on the container. Must be in the range 1
		// to 65535.
		// If not specified, defaults to the same value as
		// container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/template/$defs/containers/$defs/startup_probe/$defs/http_get/$defs/http_headers": close({
		// The header field name
		name!: string

		// The header field value
		value?: string
	})

	_#defs: "/$defs/template/$defs/containers/$defs/startup_probe/$defs/tcp_socket": close({
		// Port number to access on the container. Must be in the range 1
		// to 65535.
		// If not specified, defaults to the same value as
		// container.ports[0].containerPort.
		port?: number
	})

	_#defs: "/$defs/template/$defs/containers/$defs/volume_mounts": close({
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

		// Path within the volume from which the container's volume should
		// be mounted.
		sub_path?: string
	})

	_#defs: "/$defs/template/$defs/node_selector": close({
		// The GPU to attach to an instance. See
		// https://cloud.google.com/run/docs/configuring/services/gpu for
		// configuring GPU.
		accelerator!: string
	})

	_#defs: "/$defs/template/$defs/scaling": close({
		// Maximum number of serving instances that this resource should
		// have. Must not be less than minimum instance count. If absent,
		// Cloud Run will calculate
		// a default value based on the project's available container
		// instances quota in the region and specified instance size.
		max_instance_count?: number

		// Minimum number of serving instances that this resource should
		// have. Defaults to 0. Must not be greater than maximum instance
		// count.
		min_instance_count?: number
	})

	_#defs: "/$defs/template/$defs/volumes": close({
		cloud_sql_instance?: matchN(1, [_#defs."/$defs/template/$defs/volumes/$defs/cloud_sql_instance", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/volumes/$defs/cloud_sql_instance"]])
		empty_dir?: matchN(1, [_#defs."/$defs/template/$defs/volumes/$defs/empty_dir", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/volumes/$defs/empty_dir"]])
		gcs?: matchN(1, [_#defs."/$defs/template/$defs/volumes/$defs/gcs", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/volumes/$defs/gcs"]])
		nfs?: matchN(1, [_#defs."/$defs/template/$defs/volumes/$defs/nfs", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/volumes/$defs/nfs"]])
		secret?: matchN(1, [_#defs."/$defs/template/$defs/volumes/$defs/secret", list.MaxItems(1) & [..._#defs."/$defs/template/$defs/volumes/$defs/secret"]])

		// Volume's name.
		name!: string
	})

	_#defs: "/$defs/template/$defs/volumes/$defs/cloud_sql_instance": close({
		// The Cloud SQL instance connection names, as can be found in
		// https://console.cloud.google.com/sql/instances. Visit
		// https://cloud.google.com/sql/docs/mysql/connect-run for more
		// information on how to connect Cloud SQL and Cloud Run. Format:
		// {project}:{location}:{instance}
		instances?: [...string]
	})

	_#defs: "/$defs/template/$defs/volumes/$defs/empty_dir": close({
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

	_#defs: "/$defs/template/$defs/volumes/$defs/gcs": close({
		// GCS Bucket name
		bucket!: string

		// A list of flags to pass to the gcsfuse command for configuring
		// this volume.
		// Flags should be passed without leading dashes.
		mount_options?: [...string]

		// If true, mount the GCS bucket as read-only
		read_only?: bool
	})

	_#defs: "/$defs/template/$defs/volumes/$defs/nfs": close({
		// Path that is exported by the NFS server.
		path!: string

		// If true, mount the NFS volume as read only
		read_only?: bool

		// Hostname or IP address of the NFS server
		server!: string
	})

	_#defs: "/$defs/template/$defs/volumes/$defs/secret": close({
		items?: matchN(1, [_#defs."/$defs/template/$defs/volumes/$defs/secret/$defs/items", [..._#defs."/$defs/template/$defs/volumes/$defs/secret/$defs/items"]])

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

	_#defs: "/$defs/template/$defs/volumes/$defs/secret/$defs/items": close({
		// Integer octal mode bits to use on this file, must be a value
		// between 01 and 0777 (octal). If 0 or not set, the Volume's
		// default mode will be used.
		mode?: number

		// The relative path of the secret in the container.
		path!: string

		// The Cloud Secret Manager secret version. Can be 'latest' for
		// the latest value or an integer for a specific version
		version?: string
	})

	_#defs: "/$defs/template/$defs/vpc_access": close({
		network_interfaces?: matchN(1, [_#defs."/$defs/template/$defs/vpc_access/$defs/network_interfaces", [..._#defs."/$defs/template/$defs/vpc_access/$defs/network_interfaces"]])

		// VPC Access connector name. Format:
		// projects/{project}/locations/{location}/connectors/{connector},
		// where {project} can be project id or number.
		connector?: string

		// Traffic VPC egress settings. Possible values: ["ALL_TRAFFIC",
		// "PRIVATE_RANGES_ONLY"]
		egress?: string
	})

	_#defs: "/$defs/template/$defs/vpc_access/$defs/network_interfaces": close({
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

		// Network tags applied to this Cloud Run service.
		tags?: [...string]
	})
}
