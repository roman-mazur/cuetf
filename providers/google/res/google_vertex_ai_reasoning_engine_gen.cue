package res

import "list"

google_vertex_ai_reasoning_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_reasoning_engine")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])
		timeouts?: #timeouts

		// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		create_time?: string

		// This field uses a custom implementation please refer to documentation under
		// /hashicorp/terraform-provider-google-beta/website/docs/r/vertex_ai_reasoning_engine.html.markdown
		// for specifics
		deletion_policy?: string

		// The description of the ReasoningEngine.
		description?: string

		// The display name of the ReasoningEngine.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// The labels associated with this ReasoningEngine. You can use these to
		// organize and group your ReasoningEngines.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The generated name of the ReasoningEngine, in the format
		// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
		name?: string

		// The region of the reasoning engine. eg us-central1
		region?:  string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu"
		// format, with nanosecond resolution and up to nine fractional digits.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer managed
		// encryption key used to protect a resource. Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the compute resource
		// is created.
		kms_key_name!: string
	})

	#spec: close({
		container_spec?: matchN(1, [_#defs."/$defs/spec/$defs/container_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/container_spec"]])
		deployment_spec?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec"]])
		package_spec?: matchN(1, [_#defs."/$defs/spec/$defs/package_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/package_spec"]])
		source_code_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec"]])

		// Optional. The OSS agent framework used to develop the agent.
		agent_framework?: string

		// Optional. Declarations for object class methods in OpenAPI
		// specification format.
		//
		// **Note**: When deploying via Terraform, this field must be populated manually.
		// Otherwise, client SDKs (like 'agent_engines.get()') will not be able to
		// discover the methods, and calls to the engine (or A2A integrations) will
		// fail.
		//
		// Depending on the template/framework used ('agent_framework'), the required
		// class methods and their parameters differ:
		//
		// **Warning**: The configuration snippets below are illustrative, may not be
		// exhaustive, and could stop working over time. For the most up-to-date method
		// lists and schemas, please consult the respective SDK source code:
		// * For Google ADK: See [ADK Python SDK
		// cli_deploy.py](https://github.com/google/adk-python/blob/68a780306e3bdd648a882ef34c0abf8e5148353e/src/google/adk/cli/cli_deploy.py#L109).
		// * For Langchain: See [Vertex AI Python SDK
		// langchain.py](https://github.com/googleapis/python-aiplatform/blob/c8a38a085931b01f4d6071f0ab7a64cb42851829/agentplatform/agent_engines/templates/langchain.py#L642-L717).
		//
		// ### 1. Langchain Template
		// * 'query' (api_mode = "sync" or empty)
		// * 'stream_query' (api_mode = "stream")
		//
		// Example for Langchain:
		// '''hcl
		// class_methods = jsonencode([
		// {
		// name = "query"
		// api_mode = "sync"
		// description = "Queries the reasoning engine"
		// parameters = {
		// type = "object"
		// required = ["input"]
		// properties = {
		// input = {
		// type = "string"
		// description = "The input prompt"
		// }
		// }
		// }
		// },
		// {
		// name = "stream_query"
		// api_mode = "stream"
		// description = "Streams queries from the reasoning engine"
		// parameters = {
		// type = "object"
		// required = ["input"]
		// properties = {
		// input = {
		// type = "string"
		// description = "The input prompt"
		// }
		// }
		// }
		// }
		// ])
		// '''
		//
		// ### 2. Google ADK Template (Standard - No A2A)
		// For standard Google ADK (Agent Development Kit) deployments, you must define
		// the following 11 methods:
		//
		// Example for Standard ADK:
		// '''hcl
		// class_methods = jsonencode([
		// {
		// name = "get_session"
		// api_mode = ""
		// description = "Retrieve session by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "async_get_session"
		// api_mode = "async"
		// description = "Retrieve session asynchronously by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "list_sessions"
		// api_mode = ""
		// description = "List all sessions for a user"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "async_list_sessions"
		// api_mode = "async"
		// description = "List all sessions for a user asynchronously"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "create_session"
		// api_mode = ""
		// description = "Create a new session"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// state = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "async_create_session"
		// api_mode = "async"
		// description = "Create a new session asynchronously"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// state = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "delete_session"
		// api_mode = ""
		// description = "Delete session by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "async_delete_session"
		// api_mode = "async"
		// description = "Delete session asynchronously by ID"
		// parameters = {
		// type = "object"
		// required = ["user_id", "session_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// }
		// }
		// },
		// {
		// name = "stream_query"
		// api_mode = "stream"
		// description = "Stream queries from the agent"
		// parameters = {
		// type = "object"
		// required = ["message", "user_id"]
		// properties = {
		// message = { description = "Message string or object" }
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// run_config = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "async_stream_query"
		// api_mode = "async_stream"
		// description = "Stream queries asynchronously from the agent"
		// parameters = {
		// type = "object"
		// required = ["message", "user_id"]
		// properties = {
		// message = { description = "Message string or object" }
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// session_events = { type = "array", items = { type = "object" } }
		// run_config = { type = "object" }
		// }
		// }
		// },
		// {
		// name = "streaming_agent_run_with_events"
		// api_mode = "async_stream"
		// description = "Stream agent run with events asynchronously"
		// parameters = {
		// type = "object"
		// required = ["request_json"]
		// properties = {
		// request_json = { type = "string" }
		// }
		// }
		// }
		// ])
		// '''
		//
		// ### 3. Google ADK Template (A2A-Enabled)
		// If the agent integrates with the Gemini Enterprise Agent Registry (A2A), you
		// must inject the 'a2a_agent_card' JSON metadata as a string **specifically
		// inside the 'async_create_session' method definition**:
		//
		// Example for A2A-Enabled ADK:
		// '''hcl
		// locals {
		// # Construct the A2A endpoint URL
		// a2a_url =
		// "https://us-central1-aiplatform.googleapis.com/v1/projects/my-project/locations/us-central1/reasoningEngines/my-agent/a2a"
		//
		// agent_card = {
		// name = "my-agent"
		// description = "A2A Agent"
		// version = "1.0.0"
		// preferred_transport = "HTTP_JSON"
		// supported_interfaces = [{ url = local.a2a_url, protocol_binding = "HTTP_JSON" }]
		// capabilities = { streaming = true }
		// }
		// }
		//
		// # In class_methods, append "a2a_agent_card" key ONLY to the "async_create_session" method:
		// class_methods = jsonencode([
		// # ... other 10 standard methods (same as Standard ADK) ...
		// {
		// name = "async_create_session"
		// api_mode = "async"
		// description = "Create a new session asynchronously"
		// parameters = {
		// type = "object"
		// required = ["user_id"]
		// properties = {
		// user_id = { type = "string" }
		// session_id = { type = "string" }
		// state = { type = "object" }
		// }
		// }
		// # Inject the serialized Agent Card here
		// a2a_agent_card = jsonencode(local.agent_card)
		// }
		// ])
		// '''
		class_methods?: string

		// The identity to use for the Reasoning Engine.
		effective_identity?: string

		// Optional. The identity type to use for the Reasoning Engine.
		// If not specified, the 'service_account' field will be used if set,
		// otherwise the default Vertex AI Reasoning Engine Service Agent in the project will be used.
		// Possible values:
		// * 'SERVICE_ACCOUNT': Use a custom service account if the 'service_account'
		// field is set, otherwise use the default Vertex AI Reasoning Engine Service
		// Agent in the project.
		// * 'AGENT_IDENTITY': Use Agent Identity. The 'service_account' field must not
		// be set. Possible values: ["SERVICE_ACCOUNT", "AGENT_IDENTITY"]
		identity_type?: string

		// Optional. The service account that the Reasoning Engine artifact runs
		// as. It should have "roles/storage.objectViewer" for reading the user
		// project's Cloud Storage and "roles/aiplatform.user" for using Vertex
		// extensions. If not specified, the Vertex AI Reasoning Engine service
		// Agent in the project will be used.
		service_account?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/spec/$defs/container_spec": close({
		// The Artifact Registry Docker image URI (e.g.,
		// 'us-central1-docker.pkg.dev/my-project/my-repo/my-image:tag') of the
		// container image that is to be run on each worker replica.
		image_uri!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec": close({
		env?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/env", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/env"]])
		psc_interface_config?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config"]])
		secret_env?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env"]])

		// Optional. Concurrency for each container and agent server.
		// Recommended value: 2 * cpu + 1. Defaults to 9.
		container_concurrency?: number

		// Optional. The maximum number of application instances that can be
		// launched to handle increased traffic. Defaults to 100.
		// Range: [1, 1000]. If VPC-SC or PSC-I is enabled, the acceptable
		// range is [1, 100].
		max_instances?: number

		// Optional. The minimum number of application instances that will be
		// kept running at all times. Defaults to 1. Range: [0, 10].
		min_instances?: number

		// Optional. Resource limits for each container.
		// Only 'cpu' and 'memory' keys are supported.
		//
		// Defaults to {"cpu": "4", "memory": "4Gi"}.
		//
		// The only supported values for CPU are '1', '2', '4', '6' and '8'.
		// For more information, go to
		// https://cloud.google.com/run/docs/configuring/cpu.
		//
		// The only supported values for memory are '1Gi', '2Gi', ... '32 Gi'.
		// For more information, go to
		// https://cloud.google.com/run/docs/configuring/memory-limits.
		resource_limits?: [string]: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/env": close({
		// The name of the environment variable. Must be a valid
		// C identifier.
		name!: string

		// Variables that reference a $(VAR_NAME) are expanded using
		// the previous defined environment variables in the container
		// and any service environment variables. If a variable cannot
		// be resolved, the reference in the input string will be
		// unchanged. The $(VAR_NAME) syntax can be escaped with a
		// double $$, ie: $$(VAR_NAME). Escaped references will never
		// be expanded, regardless of whether the variable exists
		// or not.
		value!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config": close({
		dns_peering_configs?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config/$defs/dns_peering_configs", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config/$defs/dns_peering_configs"]])

		// Optional. The name of the Compute Engine network attachment
		// to attach to the resource within the region and user project.
		// To specify this field, you must have already created a network attachment.
		// This field is only used for resources using PSC-Interface.
		network_attachment?: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/psc_interface_config/$defs/dns_peering_configs": close({
		// Required. The DNS name suffix of the zone being peered
		// to, e.g., "my-internal-domain.corp.".
		// Must end with a dot.
		domain!: string

		// Required. The VPC network name in the targetProject
		// where the DNS zone specified by 'domain' is visible.
		target_network!: string

		// Required. The project id hosting the Cloud DNS managed
		// zone that contains the 'domain'.
		// The Vertex AI service Agent requires the dns.peer role
		// on this project.
		target_project!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/secret_env": close({
		secret_ref!: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env/$defs/secret_ref", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env/$defs/secret_ref"]])

		// The name of the environment variable. Must be a valid C
		// identifier.
		name!: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec/$defs/secret_env/$defs/secret_ref": close({
		// The name of the secret in Cloud Secret Manager.
		// Format: {secret_name}.
		secret!: string

		// The Cloud Secret Manager secret version. Can be 'latest'
		// for the latest version, an integer for a specific
		// version, or a version alias.
		version?: string
	})

	_#defs: "/$defs/spec/$defs/package_spec": close({
		// Optional. The Cloud Storage URI of the dependency files in tar.gz
		// format.
		dependency_files_gcs_uri?: string

		// Optional. The Cloud Storage URI of the pickled python object.
		pickle_object_gcs_uri?: string

		// Optional. The Python version. Currently support 3.8, 3.9, 3.10,
		// 3.11, 3.12, 3.13. If not specified, default value is 3.10.
		python_version?: string

		// Optional. The Cloud Storage URI of the requirements.txtfile
		requirements_gcs_uri?: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec": close({
		developer_connect_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source"]])
		image_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/image_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/image_spec"]])
		inline_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/inline_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/inline_source"]])
		python_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/python_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/python_spec"]])
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source": close({
		config!: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source/$defs/config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source/$defs/config"]])
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/developer_connect_source/$defs/config": close({
		// Directory, relative to the source root, in which to run the build.
		dir!: string

		// The Developer Connect Git repository link, formatted as
		// projects/*/locations/*/connections/*/gitRepositoryLink/*.
		git_repository_link!: string

		// The revision to fetch from the Git repository such as a branch, a tag, a
		// commit SHA, or any Git ref.
		revision!: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/image_spec": close({
		// Build arguments to be used. They will be passed through --build-arg flags.
		build_args?: [string]: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/inline_source": close({
		// Required. Input only.
		// The application source code archive, provided as a compressed
		// tarball (.tar.gz) file. A base64-encoded string.
		source_archive?: string
	})

	_#defs: "/$defs/spec/$defs/source_code_spec/$defs/python_spec": close({
		// Optional. The Python module to load as the entrypoint,
		// specified as a fully qualified module name. For example:
		// path.to.agent. If not specified, defaults to "agent".
		// The project root will be added to Python sys.path, allowing
		// imports to be specified relative to the root.
		entrypoint_module?: string

		// Optional. The name of the callable object within the
		// entrypointModule to use as the application If not specified,
		// defaults to "root_agent".
		entrypoint_object?: string

		// Optional. The path to the requirements file, relative to the
		// source root. If not specified, defaults to "requirements.txt".
		requirements_file?: string

		// Optional. The version of Python to use. Support version
		// includes 3.9, 3.10, 3.11, 3.12, 3.13. If not specified,
		// default value is 3.10.
		version?: string
	})
}
