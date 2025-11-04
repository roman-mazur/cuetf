package res

import "list"

#google_vertex_ai_endpoint_with_model_garden_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_endpoint_with_model_garden_deployment")
	close({
		// Output only. The display name assigned to the model deployed to
		// the endpoint.
		// This is not required to delete the resource but is used for
		// debug logging.
		deployed_model_display_name?: string

		// Output only. The unique numeric ID that Vertex AI assigns to
		// the model at the time it is deployed to the endpoint.
		// It is required to undeploy the model from the endpoint during
		// resource deletion as described in
		// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints/undeployModel.
		deployed_model_id?: string

		// Resource ID segment making up resource 'endpoint'. It
		// identifies the resource within its parent collection as
		// described in https://google.aip.dev/122.
		endpoint?: string

		// The Hugging Face model to deploy.
		// Format: Hugging Face model ID like 'google/gemma-2-2b-it'.
		hugging_face_model_id?: string
		id?:                    string

		// Resource ID segment making up resource 'location'. It
		// identifies the resource within its parent collection as
		// described in https://google.aip.dev/122.
		location!: string
		deploy_config?: matchN(1, [#deploy_config, list.MaxItems(1) & [...#deploy_config]])
		endpoint_config?: matchN(1, [#endpoint_config, list.MaxItems(1) & [...#endpoint_config]])
		model_config?: matchN(1, [#model_config, list.MaxItems(1) & [...#model_config]])

		// The Model Garden model to deploy.
		// Format:
		// 'publishers/{publisher}/models/{publisher_model}@{version_id}',
		// or
		// 'publishers/hf-{hugging-face-author}/models/{hugging-face-model-name}@001'.
		publisher_model_name?: string
		project?:              string
		timeouts?:             #timeouts
	})

	#deploy_config: close({
		dedicated_resources?: matchN(1, [_#defs."/$defs/deploy_config/$defs/dedicated_resources", list.MaxItems(1) & [..._#defs."/$defs/deploy_config/$defs/dedicated_resources"]])

		// If true, enable the QMT fast tryout feature for this model if
		// possible.
		fast_tryout_enabled?: bool

		// System labels for Model Garden deployments.
		// These labels are managed by Google and for tracking purposes
		// only.
		system_labels?: [string]: string
	})

	#endpoint_config: close({
		private_service_connect_config?: matchN(1, [_#defs."/$defs/endpoint_config/$defs/private_service_connect_config", list.MaxItems(1) & [..._#defs."/$defs/endpoint_config/$defs/private_service_connect_config"]])

		// If true, the endpoint will be exposed through a dedicated
		// DNS [Endpoint.dedicated_endpoint_dns]. Your request to the
		// dedicated DNS
		// will be isolated from other users' traffic and will have better
		// performance and reliability. Note: Once you enabled dedicated
		// endpoint,
		// you won't be able to send request to the shared DNS
		// {region}-aiplatform.googleapis.com. The limitations will be
		// removed soon.
		dedicated_endpoint_enabled?: bool

		// The user-specified display name of the endpoint. If not set, a
		// default name will be used.
		endpoint_display_name?: string
	})

	#model_config: close({
		// Whether the user accepts the End User License Agreement (EULA)
		// for the model.
		accept_eula?: bool

		// The Hugging Face read access token used to access the model
		// artifacts of gated models.
		hugging_face_access_token?: string

		// If true, the model will deploy with a cached version instead of
		// directly
		// downloading the model artifacts from Hugging Face. This is
		// suitable for
		// VPC-SC users with limited internet access.
		hugging_face_cache_enabled?: bool
		container_spec?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec"]])

		// The user-specified display name of the uploaded model. If not
		// set, a default name will be used.
		model_display_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/deploy_config/$defs/dedicated_resources": close({
		// The maximum number of replicas that may be deployed on when the
		// traffic
		// against it increases. If the requested value is too large, the
		// deployment
		// will error, but if deployment succeeds then the ability to
		// scale to that
		// many replicas is guaranteed (barring service outages). If
		// traffic increases
		// beyond what its replicas at maximum may handle, a portion of
		// the traffic
		// will be dropped. If this value is not provided, will use
		// min_replica_count as the default value.
		//
		// The value of this field impacts the charge against Vertex CPU
		// and GPU
		// quotas. Specifically, you will be charged for
		// (max_replica_count *
		// number of cores in the selected machine type) and
		// (max_replica_count *
		// number of GPUs per replica in the selected machine type).
		max_replica_count?: number

		// The minimum number of machine replicas that will be always
		// deployed on.
		// This value must be greater than or equal to 1.
		//
		// If traffic increases, it may dynamically be deployed onto more
		// replicas,
		// and as traffic decreases, some of these extra replicas may be
		// freed.
		min_replica_count!: number

		// Number of required available replicas for the deployment to
		// succeed.
		// This field is only needed when partial deployment/mutation is
		// desired. If set, the deploy/mutate operation will succeed once
		// available_replica_count reaches required_replica_count, and the
		// rest of
		// the replicas will be retried. If not set, the default
		// required_replica_count will be min_replica_count.
		required_replica_count?: number

		// If true, schedule the deployment workload on [spot
		// VMs](https://cloud.google.com/kubernetes-engine/docs/concepts/spot-vms).
		spot?: bool
		autoscaling_metric_specs?: matchN(1, [_#defs."/$defs/deploy_config/$defs/dedicated_resources/$defs/autoscaling_metric_specs", [..._#defs."/$defs/deploy_config/$defs/dedicated_resources/$defs/autoscaling_metric_specs"]])
		machine_spec!: matchN(1, [_#defs."/$defs/deploy_config/$defs/dedicated_resources/$defs/machine_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deploy_config/$defs/dedicated_resources/$defs/machine_spec"]])
	})

	_#defs: "/$defs/deploy_config/$defs/dedicated_resources/$defs/autoscaling_metric_specs": close({
		// The resource metric name.
		// Supported metrics:
		//
		// * For Online Prediction:
		// *
		// 'aiplatform.googleapis.com/prediction/online/accelerator/duty_cycle'
		// * 'aiplatform.googleapis.com/prediction/online/cpu/utilization'
		metric_name!: string

		// The target resource utilization in percentage (1% - 100%) for
		// the given
		// metric; once the real usage deviates from the target by a
		// certain
		// percentage, the machine replicas change. The default value is
		// 60
		// (representing 60%) if not provided.
		target?: number
	})

	_#defs: "/$defs/deploy_config/$defs/dedicated_resources/$defs/machine_spec": close({
		// The number of accelerators to attach to the machine.
		accelerator_count?: number

		// Possible values:
		// ACCELERATOR_TYPE_UNSPECIFIED
		// NVIDIA_TESLA_K80
		// NVIDIA_TESLA_P100
		// NVIDIA_TESLA_V100
		// NVIDIA_TESLA_P4
		// NVIDIA_TESLA_T4
		// NVIDIA_TESLA_A100
		// NVIDIA_A100_80GB
		// NVIDIA_L4
		// NVIDIA_H100_80GB
		// NVIDIA_H100_MEGA_80GB
		// NVIDIA_H200_141GB
		// NVIDIA_B200
		// TPU_V2
		// TPU_V3
		// TPU_V4_POD
		// TPU_V5_LITEPOD
		accelerator_type?: string

		// The type of the machine.
		//
		// See the [list of machine types supported for
		// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
		//
		// See the [list of machine types supported for custom
		// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
		//
		// For DeployedModel this field is optional, and the default
		// value is 'n1-standard-2'. For BatchPredictionJob or as part of
		// WorkerPoolSpec this field is required.
		machine_type?: string

		// The number of nodes per replica for multihost GPU deployments.
		multihost_gpu_node_count?: number
		reservation_affinity?: matchN(1, [_#defs."/$defs/deploy_config/$defs/dedicated_resources/$defs/machine_spec/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/deploy_config/$defs/dedicated_resources/$defs/machine_spec/$defs/reservation_affinity"]])

		// The topology of the TPUs. Corresponds to the TPU topologies
		// available from
		// GKE. (Example: tpu_topology: "2x2x1").
		tpu_topology?: string
	})

	_#defs: "/$defs/deploy_config/$defs/dedicated_resources/$defs/machine_spec/$defs/reservation_affinity": close({
		// Corresponds to the label key of a reservation resource. To
		// target a
		// SPECIFIC_RESERVATION by name, use
		// 'compute.googleapis.com/reservation-name'
		// as the key and specify the name of your reservation as its
		// value.
		key?: string

		// Specifies the reservation affinity type.
		// Possible values:
		// TYPE_UNSPECIFIED
		// NO_RESERVATION
		// ANY_RESERVATION
		// SPECIFIC_RESERVATION
		reservation_affinity_type!: string

		// Corresponds to the label values of a reservation resource. This
		// must be the
		// full resource name of the reservation or reservation block.
		values?: [...string]
	})

	_#defs: "/$defs/endpoint_config/$defs/private_service_connect_config": close({
		// Required. If true, expose the IndexEndpoint via private service
		// connect.
		enable_private_service_connect!: bool
		psc_automation_configs?: matchN(1, [_#defs."/$defs/endpoint_config/$defs/private_service_connect_config/$defs/psc_automation_configs", list.MaxItems(1) & [..._#defs."/$defs/endpoint_config/$defs/private_service_connect_config/$defs/psc_automation_configs"]])

		// A list of Projects from which the forwarding rule will target
		// the service attachment.
		project_allowlist?: [...string]

		// Output only. The name of the generated service attachment
		// resource.
		// This is only populated if the endpoint is deployed with
		// PrivateServiceConnect.
		service_attachment?: string
	})

	_#defs: "/$defs/endpoint_config/$defs/private_service_connect_config/$defs/psc_automation_configs": close({
		// Output only. Error message if the PSC service automation
		// failed.
		error_message?: string

		// Output only. Forwarding rule created by the PSC service
		// automation.
		forwarding_rule?: string

		// Output only. IP address rule created by the PSC service
		// automation.
		ip_address?: string

		// Required. The full name of the Google Compute Engine network.
		// Format: projects/{project}/global/networks/{network}.
		network!: string

		// Required. Project id used to create forwarding rule.
		project_id!: string

		// Output only. The state of the PSC service automation.
		state?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec": close({
		// Specifies arguments for the command that runs when the
		// container starts.
		// This overrides the container's
		// ['CMD'](https://docs.docker.com/engine/reference/builder/#cmd).
		// Specify
		// this field as an array of executable and arguments, similar to
		// a Docker
		// 'CMD''s "default parameters" form.
		//
		// If you don't specify this field but do specify the
		// command field, then the command from the
		// 'command' field runs without any additional arguments. See the
		// [Kubernetes documentation about how the
		// 'command' and 'args' fields interact with a container's
		// 'ENTRYPOINT' and
		// 'CMD'](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes).
		//
		// If you don't specify this field and don't specify the 'command'
		// field,
		// then the container's
		// ['ENTRYPOINT'](https://docs.docker.com/engine/reference/builder/#cmd)
		// and
		// 'CMD' determine what runs based on their default behavior. See
		// the Docker
		// documentation about [how 'CMD' and 'ENTRYPOINT'
		// interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact).
		//
		// In this field, you can reference [environment variables
		// set by Vertex
		// AI](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables)
		// and environment variables set in the env field.
		// You cannot reference environment variables set in the Docker
		// image. In
		// order for environment variables to be expanded, reference them
		// by using the
		// following syntax:$(VARIABLE_NAME)
		// Note that this differs from Bash variable expansion, which does
		// not use
		// parentheses. If a variable cannot be resolved, the reference in
		// the input
		// string is used unchanged. To avoid variable expansion, you can
		// escape this
		// syntax with '$$'; for example:$$(VARIABLE_NAME)
		// This field corresponds to the 'args' field of the Kubernetes
		// Containers
		// [v1 core
		// API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
		args?: [...string]

		// Specifies the command that runs when the container starts. This
		// overrides
		// the container's
		// [ENTRYPOINT](https://docs.docker.com/engine/reference/builder/#entrypoint).
		// Specify this field as an array of executable and arguments,
		// similar to a
		// Docker 'ENTRYPOINT''s "exec" form, not its "shell" form.
		//
		// If you do not specify this field, then the container's
		// 'ENTRYPOINT' runs,
		// in conjunction with the args field or the
		// container's
		// ['CMD'](https://docs.docker.com/engine/reference/builder/#cmd),
		// if either exists. If this field is not specified and the
		// container does not
		// have an 'ENTRYPOINT', then refer to the Docker documentation
		// about [how
		// 'CMD' and 'ENTRYPOINT'
		// interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact).
		//
		// If you specify this field, then you can also specify the 'args'
		// field to
		// provide additional arguments for this command. However, if you
		// specify this
		// field, then the container's 'CMD' is ignored. See the
		// [Kubernetes documentation about how the
		// 'command' and 'args' fields interact with a container's
		// 'ENTRYPOINT' and
		// 'CMD'](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes).
		//
		// In this field, you can reference [environment variables set by
		// Vertex
		// AI](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables)
		// and environment variables set in the env field.
		// You cannot reference environment variables set in the Docker
		// image. In
		// order for environment variables to be expanded, reference them
		// by using the
		// following syntax:$(VARIABLE_NAME)
		// Note that this differs from Bash variable expansion, which does
		// not use
		// parentheses. If a variable cannot be resolved, the reference in
		// the input
		// string is used unchanged. To avoid variable expansion, you can
		// escape this
		// syntax with '$$'; for example:$$(VARIABLE_NAME)
		// This field corresponds to the 'command' field of the Kubernetes
		// Containers
		// [v1 core
		// API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
		command?: [...string]

		// Deployment timeout.
		// Limit for deployment timeout is 2 hours.
		deployment_timeout?: string

		// HTTP path on the container to send health checks to. Vertex AI
		// intermittently sends GET requests to this path on the
		// container's IP
		// address and port to check that the container is healthy. Read
		// more about
		// [health
		// checks](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#health).
		//
		// For example, if you set this field to '/bar', then Vertex AI
		// intermittently sends a GET request to the '/bar' path on the
		// port of your
		// container specified by the first value of this
		// 'ModelContainerSpec''s
		// ports field.
		//
		// If you don't specify this field, it defaults to the following
		// value when
		// you deploy this Model to an
		// Endpoint:/v1/endpoints/ENDPOINT/deployedModels/DEPLOYED_MODEL:predict
		// The placeholders in this value are replaced as follows:
		//
		// * ENDPOINT: The last segment (following 'endpoints/')of the
		// Endpoint.name][] field of the Endpoint where this Model has
		// been
		// deployed. (Vertex AI makes this value available to your
		// container code
		// as the ['AIP_ENDPOINT_ID' environment
		// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
		//
		// * DEPLOYED_MODEL: DeployedModel.id of the 'DeployedModel'.
		// (Vertex AI makes this value available to your container code as
		// the
		// ['AIP_DEPLOYED_MODEL_ID' environment
		// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
		health_route?: string

		// URI of the Docker image to be used as the custom container for
		// serving
		// predictions. This URI must identify an image in Artifact
		// Registry or
		// Container Registry. Learn more about the [container publishing
		// requirements](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#publishing),
		// including permissions requirements for the Vertex AI Service
		// Agent.
		//
		// The container image is ingested upon ModelService.UploadModel,
		// stored
		// internally, and this original path is afterwards not used.
		//
		// To learn about the requirements for the Docker image itself,
		// see
		// [Custom container
		// requirements](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#).
		//
		// You can use the URI to one of Vertex AI's [pre-built container
		// images for
		// prediction](https://cloud.google.com/vertex-ai/docs/predictions/pre-built-containers)
		// in this field.
		image_uri!: string
		env?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/env", [..._#defs."/$defs/model_config/$defs/container_spec/$defs/env"]])
		grpc_ports?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/grpc_ports", [..._#defs."/$defs/model_config/$defs/container_spec/$defs/grpc_ports"]])
		health_probe?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe"]])
		liveness_probe?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe"]])
		ports?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/ports", [..._#defs."/$defs/model_config/$defs/container_spec/$defs/ports"]])
		startup_probe?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe"]])

		// HTTP path on the container to send prediction requests to.
		// Vertex AI
		// forwards requests sent using
		// projects.locations.endpoints.predict to this
		// path on the container's IP address and port. Vertex AI then
		// returns the
		// container's response in the API response.
		//
		// For example, if you set this field to '/foo', then when Vertex
		// AI
		// receives a prediction request, it forwards the request body in
		// a POST
		// request to the '/foo' path on the port of your container
		// specified by the
		// first value of this 'ModelContainerSpec''s
		// ports field.
		//
		// If you don't specify this field, it defaults to the following
		// value when
		// you deploy this Model to an
		// Endpoint:/v1/endpoints/ENDPOINT/deployedModels/DEPLOYED_MODEL:predict
		// The placeholders in this value are replaced as follows:
		//
		// * ENDPOINT: The last segment (following 'endpoints/')of the
		// Endpoint.name][] field of the Endpoint where this Model has
		// been
		// deployed. (Vertex AI makes this value available to your
		// container code
		// as the ['AIP_ENDPOINT_ID' environment
		// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
		//
		// * DEPLOYED_MODEL: DeployedModel.id of the 'DeployedModel'.
		// (Vertex AI makes this value available to your container code
		// as the ['AIP_DEPLOYED_MODEL_ID' environment
		// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
		predict_route?: string

		// The amount of the VM memory to reserve as the shared memory for
		// the model
		// in megabytes.
		shared_memory_size_mb?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/env": close({
		// Name of the environment variable. Must be a valid C identifier.
		name!: string

		// Variables that reference a $(VAR_NAME) are expanded
		// using the previous defined environment variables in the
		// container and
		// any service environment variables. If a variable cannot be
		// resolved,
		// the reference in the input string will be unchanged. The
		// $(VAR_NAME)
		// syntax can be escaped with a double $$, ie: $$(VAR_NAME).
		// Escaped
		// references will never be expanded, regardless of whether the
		// variable
		// exists or not.
		value!: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/grpc_ports": close({
		// The number of the port to expose on the pod's IP address.
		// Must be a valid port number, between 1 and 65535 inclusive.
		container_port?: number
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/health_probe": close({
		// Number of consecutive failures before the probe is considered
		// failed.
		// Defaults to 3. Minimum value is 1.
		//
		// Maps to Kubernetes probe argument 'failureThreshold'.
		failure_threshold?: number

		// Number of seconds to wait before starting the probe. Defaults
		// to 0.
		// Minimum value is 0.
		//
		// Maps to Kubernetes probe argument 'initialDelaySeconds'.
		initial_delay_seconds?: number

		// How often (in seconds) to perform the probe. Default to 10
		// seconds.
		// Minimum value is 1. Must be less than timeout_seconds.
		//
		// Maps to Kubernetes probe argument 'periodSeconds'.
		period_seconds?: number

		// Number of consecutive successes before the probe is considered
		// successful.
		// Defaults to 1. Minimum value is 1.
		//
		// Maps to Kubernetes probe argument 'successThreshold'.
		success_threshold?: number
		exec?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/exec"]])
		grpc?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/grpc"]])

		// Number of seconds after which the probe times out. Defaults to
		// 1 second.
		// Minimum value is 1. Must be greater or equal to period_seconds.
		//
		// Maps to Kubernetes probe argument 'timeoutSeconds'.
		timeout_seconds?: number
		http_get?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/http_get"]])
		tcp_socket?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/tcp_socket"]])
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/exec": close({
		// Command is the command line to execute inside the container,
		// the working
		// directory for the command is root ('/') in the container's
		// filesystem.
		// The command is simply exec'd, it is not run inside a shell, so
		// traditional shell instructions ('|', etc) won't work. To use a
		// shell, you
		// need to explicitly call out to that shell. Exit status of 0 is
		// treated as
		// live/healthy and non-zero is unhealthy.
		command?: [...string]
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/grpc": close({
		// Port number of the gRPC service. Number must be in the range 1
		// to 65535.
		port?: number

		// Service is the name of the service to place in the gRPC
		// HealthCheckRequest. See
		// https://github.com/grpc/grpc/blob/master/doc/health-checking.md.
		//
		// If this is not specified, the default behavior is defined by
		// gRPC.
		service?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/http_get": close({
		// Host name to connect to, defaults to the model serving
		// container's IP.
		// You probably want to set "Host" in httpHeaders instead.
		host?: string

		// Path to access on the HTTP server.
		path?: string

		// Number of the port to access on the container.
		// Number must be in the range 1 to 65535.
		port?: number
		http_headers?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/http_get/$defs/http_headers"]])

		// Scheme to use for connecting to the host.
		// Defaults to HTTP. Acceptable values are "HTTP" or "HTTPS".
		scheme?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/http_get/$defs/http_headers": close({
		// The header field name.
		// This will be canonicalized upon output, so case-variant names
		// will be
		// understood as the same header.
		name?: string

		// The header field value
		value?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/health_probe/$defs/tcp_socket": close({
		// Optional: Host name to connect to, defaults to the model
		// serving
		// container's IP.
		host?: string

		// Number of the port to access on the container.
		// Number must be in the range 1 to 65535.
		port?: number
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/liveness_probe": close({
		// Number of consecutive failures before the probe is considered
		// failed.
		// Defaults to 3. Minimum value is 1.
		//
		// Maps to Kubernetes probe argument 'failureThreshold'.
		failure_threshold?: number

		// Number of seconds to wait before starting the probe. Defaults
		// to 0.
		// Minimum value is 0.
		//
		// Maps to Kubernetes probe argument 'initialDelaySeconds'.
		initial_delay_seconds?: number

		// How often (in seconds) to perform the probe. Default to 10
		// seconds.
		// Minimum value is 1. Must be less than timeout_seconds.
		//
		// Maps to Kubernetes probe argument 'periodSeconds'.
		period_seconds?: number

		// Number of consecutive successes before the probe is considered
		// successful.
		// Defaults to 1. Minimum value is 1.
		//
		// Maps to Kubernetes probe argument 'successThreshold'.
		success_threshold?: number
		exec?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/exec"]])
		grpc?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/grpc"]])

		// Number of seconds after which the probe times out. Defaults to
		// 1 second.
		// Minimum value is 1. Must be greater or equal to period_seconds.
		//
		// Maps to Kubernetes probe argument 'timeoutSeconds'.
		timeout_seconds?: number
		http_get?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/http_get"]])
		tcp_socket?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/tcp_socket"]])
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/exec": close({
		// Command is the command line to execute inside the container,
		// the working
		// directory for the command is root ('/') in the container's
		// filesystem.
		// The command is simply exec'd, it is not run inside a shell, so
		// traditional shell instructions ('|', etc) won't work. To use a
		// shell, you
		// need to explicitly call out to that shell. Exit status of 0 is
		// treated as
		// live/healthy and non-zero is unhealthy.
		command?: [...string]
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/grpc": close({
		// Port number of the gRPC service. Number must be in the range 1
		// to 65535.
		port?: number

		// Service is the name of the service to place in the gRPC
		// HealthCheckRequest. See
		// https://github.com/grpc/grpc/blob/master/doc/health-checking.md.
		//
		// If this is not specified, the default behavior is defined by
		// gRPC.
		service?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/http_get": close({
		// Host name to connect to, defaults to the model serving
		// container's IP.
		// You probably want to set "Host" in httpHeaders instead.
		host?: string

		// Path to access on the HTTP server.
		path?: string

		// Number of the port to access on the container.
		// Number must be in the range 1 to 65535.
		port?: number
		http_headers?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/http_get/$defs/http_headers"]])

		// Scheme to use for connecting to the host.
		// Defaults to HTTP. Acceptable values are "HTTP" or "HTTPS".
		scheme?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/http_get/$defs/http_headers": close({
		// The header field name.
		// This will be canonicalized upon output, so case-variant names
		// will be
		// understood as the same header.
		name?: string

		// The header field value
		value?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/liveness_probe/$defs/tcp_socket": close({
		// Optional: Host name to connect to, defaults to the model
		// serving
		// container's IP.
		host?: string

		// Number of the port to access on the container.
		// Number must be in the range 1 to 65535.
		port?: number
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/ports": close({
		// The number of the port to expose on the pod's IP address.
		// Must be a valid port number, between 1 and 65535 inclusive.
		container_port?: number
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/startup_probe": close({
		// Number of consecutive failures before the probe is considered
		// failed.
		// Defaults to 3. Minimum value is 1.
		//
		// Maps to Kubernetes probe argument 'failureThreshold'.
		failure_threshold?: number

		// Number of seconds to wait before starting the probe. Defaults
		// to 0.
		// Minimum value is 0.
		//
		// Maps to Kubernetes probe argument 'initialDelaySeconds'.
		initial_delay_seconds?: number

		// How often (in seconds) to perform the probe. Default to 10
		// seconds.
		// Minimum value is 1. Must be less than timeout_seconds.
		//
		// Maps to Kubernetes probe argument 'periodSeconds'.
		period_seconds?: number

		// Number of consecutive successes before the probe is considered
		// successful.
		// Defaults to 1. Minimum value is 1.
		//
		// Maps to Kubernetes probe argument 'successThreshold'.
		success_threshold?: number
		exec?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/exec", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/exec"]])
		grpc?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/grpc", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/grpc"]])

		// Number of seconds after which the probe times out. Defaults to
		// 1 second.
		// Minimum value is 1. Must be greater or equal to period_seconds.
		//
		// Maps to Kubernetes probe argument 'timeoutSeconds'.
		timeout_seconds?: number
		http_get?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/http_get", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/http_get"]])
		tcp_socket?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/tcp_socket", list.MaxItems(1) & [..._#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/tcp_socket"]])
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/exec": close({
		// Command is the command line to execute inside the container,
		// the working
		// directory for the command is root ('/') in the container's
		// filesystem.
		// The command is simply exec'd, it is not run inside a shell, so
		// traditional shell instructions ('|', etc) won't work. To use a
		// shell, you
		// need to explicitly call out to that shell. Exit status of 0 is
		// treated as
		// live/healthy and non-zero is unhealthy.
		command?: [...string]
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/grpc": close({
		// Port number of the gRPC service. Number must be in the range 1
		// to 65535.
		port?: number

		// Service is the name of the service to place in the gRPC
		// HealthCheckRequest. See
		// https://github.com/grpc/grpc/blob/master/doc/health-checking.md.
		//
		// If this is not specified, the default behavior is defined by
		// gRPC.
		service?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/http_get": close({
		// Host name to connect to, defaults to the model serving
		// container's IP.
		// You probably want to set "Host" in httpHeaders instead.
		host?: string

		// Path to access on the HTTP server.
		path?: string

		// Number of the port to access on the container.
		// Number must be in the range 1 to 65535.
		port?: number
		http_headers?: matchN(1, [_#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/http_get/$defs/http_headers", [..._#defs."/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/http_get/$defs/http_headers"]])

		// Scheme to use for connecting to the host.
		// Defaults to HTTP. Acceptable values are "HTTP" or "HTTPS".
		scheme?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/http_get/$defs/http_headers": close({
		// The header field name.
		// This will be canonicalized upon output, so case-variant names
		// will be
		// understood as the same header.
		name?: string

		// The header field value
		value?: string
	})

	_#defs: "/$defs/model_config/$defs/container_spec/$defs/startup_probe/$defs/tcp_socket": close({
		// Optional: Host name to connect to, defaults to the model
		// serving
		// container's IP.
		host?: string

		// Number of the port to access on the container.
		// Number must be in the range 1 to 65535.
		port?: number
	})
}
