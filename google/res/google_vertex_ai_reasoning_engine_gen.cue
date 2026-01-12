package res

import "list"

#google_vertex_ai_reasoning_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_reasoning_engine")
	close({
		// The timestamp of when the Index was created in RFC3339 UTC
		// "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		create_time?: string

		// The description of the ReasoningEngine.
		description?: string

		// The display name of the ReasoningEngine.
		display_name!: string
		id?:           string
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])

		// The generated name of the ReasoningEngine, in the format
		// projects/{project}/locations/{location}/reasoningEngines/{reasoningEngine}
		name?: string
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])
		timeouts?: #timeouts
		project?:  string

		// The region of the reasoning engine. eg us-central1
		region?: string

		// The timestamp of when the Index was last updated in RFC3339 UTC
		// "Zulu"
		// format, with nanosecond resolution and up to nine fractional
		// digits.
		update_time?: string
	})

	#encryption_spec: close({
		// Required. The Cloud KMS resource identifier of the customer
		// managed
		// encryption key used to protect a resource. Has the form:
		// projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key.
		// The key needs to be in the same region as where the compute
		// resource
		// is created.
		kms_key_name!: string
	})

	#spec: close({
		// Optional. The OSS agent framework used to develop the agent.
		agent_framework?: string
		deployment_spec?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/deployment_spec"]])

		// Optional. Declarations for object class methods in OpenAPI
		// specification format.
		class_methods?: string

		// Optional. The service account that the Reasoning Engine
		// artifact runs
		// as. It should have "roles/storage.objectViewer" for reading the
		// user
		// project's Cloud Storage and "roles/aiplatform.user" for using
		// Vertex
		// extensions. If not specified, the Vertex AI Reasoning Engine
		// service
		// Agent in the project will be used.
		service_account?: string
		package_spec?: matchN(1, [_#defs."/$defs/spec/$defs/package_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/package_spec"]])
		source_code_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/spec/$defs/deployment_spec": close({
		// Optional. Concurrency for each container and agent server.
		// Recommended value: 2 * cpu + 1. Defaults to 9.
		container_concurrency?: number

		// Optional. The maximum number of application instances that can
		// be
		// launched to handle increased traffic. Defaults to 100.
		// Range: [1, 1000]. If VPC-SC or PSC-I is enabled, the acceptable
		// range is [1, 100].
		max_instances?: number

		// Optional. The minimum number of application instances that will
		// be
		// kept running at all times. Defaults to 1. Range: [0, 10].
		min_instances?: number

		// Optional. Resource limits for each container.
		// Only 'cpu' and 'memory' keys are supported.
		//
		// Defaults to {"cpu": "4", "memory": "4Gi"}.
		//
		// The only supported values for CPU are '1', '2', '4', '6' and
		// '8'.
		// For more information, go to
		// https://cloud.google.com/run/docs/configuring/cpu.
		//
		// The only supported values for memory are '1Gi', '2Gi', ... '32
		// Gi'.
		// For more information, go to
		// https://cloud.google.com/run/docs/configuring/memory-limits.
		resource_limits?: [string]: string
		env?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/env", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/env"]])
		secret_env?: matchN(1, [_#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env", [..._#defs."/$defs/spec/$defs/deployment_spec/$defs/secret_env"]])
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
		// Optional. The Cloud Storage URI of the dependency files in
		// tar.gz
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
		inline_source?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/inline_source", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/inline_source"]])
		python_spec?: matchN(1, [_#defs."/$defs/spec/$defs/source_code_spec/$defs/python_spec", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/source_code_spec/$defs/python_spec"]])
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
