package data

#google_cloudfunctions_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloudfunctions_function")
	close({
		// Security patches are applied automatically to the runtime
		// without requiring the function to be redeployed.
		automatic_update_policy?: [...close({})]

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

		// A source that fires events in response to a condition in
		// another service. Cannot be used with trigger_http.
		event_trigger?: [...close({
			event_type?: string
			failure_policy?: [...close({
				retry?: bool
			})]
			resource?: string
		})]

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
		id?:           string

		// A set of key/value label pairs to assign to the function. Label
		// keys must follow the requirements at
		// https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The limit on the maximum number of function instances that may
		// coexist at a given time.
		max_instances?: number

		// The limit on the minimum number of function instances that may
		// coexist at a given time.
		min_instances?: number

		// A user-defined name of the function. Function names must be
		// unique globally.
		name!: string

		// Security patches are only applied when a function is
		// redeployed.
		on_deploy_update_policy?: [...close({
			runtime_version?: string
		})]

		// Project of the function. If it is not provided, the provider
		// project is used.
		project?: string

		// Region of function. If it is not provided, the provider region
		// is used.
		region?: string

		// The runtime in which the function is going to run. Eg.
		// "nodejs20", "python37", "go111".
		runtime?: string

		// Secret environment variables configuration
		secret_environment_variables?: [...close({
			key?:        string
			project_id?: string
			secret?:     string
			version?:    string
		})]

		// Secret volumes configuration.
		secret_volumes?: [...close({
			mount_path?: string
			project_id?: string
			secret?:     string
			versions?: [...close({
				path?:    string
				version?: string
			})]
		})]

		// If provided, the self-provided service account to run the
		// function with.
		service_account_email?: string

		// The GCS bucket containing the zip archive which contains the
		// function.
		source_archive_bucket?: string

		// The source archive object (file) in archive bucket.
		source_archive_object?: string

		// Represents parameters related to source repository where a
		// function is hosted. Cannot be set alongside
		// source_archive_bucket or source_archive_object.
		source_repository?: [...close({
			deployed_url?: string
			url?:          string
		})]

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
}
