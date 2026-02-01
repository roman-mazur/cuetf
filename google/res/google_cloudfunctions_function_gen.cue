package res

import "list"

#google_cloudfunctions_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloudfunctions_function")
	close({
		// Memory (in MB), available to the function. Default value is
		// 256. Possible values include 128, 256, 512, 1024, etc.
		available_memory_mb?: number

		// A set of key/value environment variable pairs available during
		// build time.
		build_environment_variables?: [string]: string

		// The fully-qualified name of the service account to be used for
		// the build step of deploying this function
		build_service_account?: string

		// Name of the Cloud Build Custom Worker Pool that should be used
		// to build the function.
		build_worker_pool?: string

		// Description of the function.
		description?: string

		// Docker Registry to use for storing the function's Docker
		// images. Allowed values are ARTIFACT_REGISTRY (default) and
		// CONTAINER_REGISTRY.
		docker_registry?: string

		// User managed repository created in Artifact Registry optionally
		// with a customer managed encryption key. If specified,
		// deployments will use Artifact Registry for storing images
		// built with Cloud Build.
		docker_repository?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Name of the function that will be executed when the Google
		// Cloud Function is triggered.
		entry_point?: string

		// A set of key/value environment variable pairs to assign to the
		// function.
		environment_variables?: [string]: string

		// The security level for the function. Defaults to
		// SECURE_OPTIONAL. Valid only if trigger_http is used.
		https_trigger_security_level?: string

		// URL which triggers function execution. Returned only if
		// trigger_http is used.
		https_trigger_url?: string

		// String value that controls what traffic can reach the function.
		// Allowed values are ALLOW_ALL and ALLOW_INTERNAL_ONLY. Changes
		// to this field will recreate the cloud function.
		ingress_settings?: string

		// Resource name of a KMS crypto key (managed by the user) used to
		// encrypt/decrypt function resources.
		kms_key_name?: string

		// A set of key/value label pairs to assign to the function. Label
		// keys must follow the requirements at
		// https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The limit on the maximum number of function instances that may
		// coexist at a given time.
		max_instances?: number

		// The limit on the minimum number of function instances that may
		// coexist at a given time.
		min_instances?: number

		// A user-defined name of the function. Function names must be
		// unique globally.
		name!: string
		automatic_update_policy?: matchN(1, [#automatic_update_policy, list.MaxItems(1) & [...#automatic_update_policy]])
		event_trigger?: matchN(1, [#event_trigger, list.MaxItems(1) & [...#event_trigger]])
		on_deploy_update_policy?: matchN(1, [#on_deploy_update_policy, list.MaxItems(1) & [...#on_deploy_update_policy]])
		secret_environment_variables?: matchN(1, [#secret_environment_variables, [...#secret_environment_variables]])
		secret_volumes?: matchN(1, [#secret_volumes, [...#secret_volumes]])
		source_repository?: matchN(1, [#source_repository, list.MaxItems(1) & [...#source_repository]])

		// Project of the function. If it is not provided, the provider
		// project is used.
		project?: string

		// Region of function. If it is not provided, the provider region
		// is used.
		region?: string

		// The runtime in which the function is going to run. Eg.
		// "nodejs20", "python37", "go111".
		runtime!: string

		// If provided, the self-provided service account to run the
		// function with.
		service_account_email?: string

		// The GCS bucket containing the zip archive which contains the
		// function.
		source_archive_bucket?: string

		// The source archive object (file) in archive bucket.
		source_archive_object?: string
		timeouts?:              #timeouts

		// Describes the current stage of a deployment.
		status?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Timeout (in seconds) for the function. Default value is 60
		// seconds. Cannot be more than 540 seconds.
		timeout?: number

		// Boolean variable. Any HTTP request (of a supported type) to the
		// endpoint will trigger function execution. Supported HTTP
		// request types are: POST, PUT, GET, DELETE, and OPTIONS.
		// Endpoint is returned as https_trigger_url. Cannot be used with
		// trigger_bucket and trigger_topic.
		trigger_http?: bool

		// The version identifier of the Cloud Function. Each deployment
		// attempt results in a new version of a function being created.
		version_id?: string

		// The VPC Network Connector that this cloud function can connect
		// to. It can be either the fully-qualified URI, or the short
		// name of the network connector resource. The format of this
		// field is projects/*/locations/*/connectors/*.
		vpc_connector?: string

		// The egress settings for the connector, controlling what traffic
		// is diverted through it. Allowed values are ALL_TRAFFIC and
		// PRIVATE_RANGES_ONLY. Defaults to PRIVATE_RANGES_ONLY. If
		// unset, this field preserves the previously set value.
		vpc_connector_egress_settings?: string
	})

	#automatic_update_policy: close({})

	#event_trigger: close({
		failure_policy?: matchN(1, [_#defs."/$defs/event_trigger/$defs/failure_policy", list.MaxItems(1) & [..._#defs."/$defs/event_trigger/$defs/failure_policy"]])

		// The type of event to observe. For example:
		// "google.storage.object.finalize". See the documentation on
		// calling Cloud Functions for a full reference of accepted
		// triggers.
		event_type!: string

		// The name or partial URI of the resource from which to observe
		// events. For example, "myBucket" or
		// "projects/my-project/topics/my-topic"
		resource!: string
	})

	#on_deploy_update_policy: close({
		// The runtime version which was used during latest function
		// deployment.
		runtime_version?: string
	})

	#secret_environment_variables: close({
		// Name of the environment variable.
		key!: string

		// Project identifier (due to a known limitation, only project
		// number is supported by this field) of the project that
		// contains the secret. If not set, it will be populated with the
		// function's project, assuming that the secret exists in the
		// same project as of the function.
		project_id?: string

		// ID of the secret in secret manager (not the full resource
		// name).
		secret!: string

		// Version of the secret (version number or the string "latest").
		// It is recommended to use a numeric version for secret
		// environment variables as any updates to the secret value is
		// not reflected until new clones start.
		version!: string
	})

	#secret_volumes: close({
		// The path within the container to mount the secret volume. For
		// example, setting the mount_path as "/etc/secrets" would mount
		// the secret value files under the "/etc/secrets" directory.
		// This directory will also be completely shadowed and
		// unavailable to mount any other secrets. Recommended mount
		// paths: "/etc/secrets" Restricted mount paths: "/cloudsql",
		// "/dev/log", "/pod", "/proc", "/var/log".
		mount_path!: string
		versions?: matchN(1, [_#defs."/$defs/secret_volumes/$defs/versions", [..._#defs."/$defs/secret_volumes/$defs/versions"]])

		// Project identifier (due to a known limitation, only project
		// number is supported by this field) of the project that
		// contains the secret. If not set, it will be populated with the
		// function's project, assuming that the secret exists in the
		// same project as of the function.
		project_id?: string

		// ID of the secret in secret manager (not the full resource
		// name).
		secret!: string
	})

	#source_repository: close({
		// The URL pointing to the hosted repository where the function
		// was defined at the time of deployment.
		deployed_url?: string

		// The URL pointing to the hosted repository where the function is
		// defined.
		url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/event_trigger/$defs/failure_policy": close({
		// Whether the function should be retried on failure. Defaults to
		// false.
		retry!: bool
	})

	_#defs: "/$defs/secret_volumes/$defs/versions": close({
		// Relative path of the file under the mount path where the secret
		// value for this version will be fetched and made available. For
		// example, setting the mount_path as "/etc/secrets" and path as
		// "/secret_foo" would mount the secret value file at
		// "/etc/secrets/secret_foo".
		path!: string

		// Version of the secret (version number or the string "latest").
		// It is preferable to use "latest" version with secret volumes
		// as secret value changes are reflected immediately.
		version!: string
	})
}
