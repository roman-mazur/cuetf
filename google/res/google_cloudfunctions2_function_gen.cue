package res

import "list"

#google_cloudfunctions2_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloudfunctions2_function")
	close({
		// User-provided description of a function.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The environment the function is hosted on.
		environment?: string

		// Resource name of a KMS crypto key (managed by the user) used to
		// encrypt/decrypt function resources.
		// It must match the pattern
		// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}.
		kms_key_name?: string
		id?:           string

		// A set of key/value label pairs associated with this Cloud
		// Function.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of this cloud function.
		location!: string

		// A user-defined name of the function. Function names must
		// be unique globally and match pattern
		// 'projects/*/locations/*/functions/*'.
		name!: string

		// Describes the current state of the function.
		state?: string
		build_config?: matchN(1, [#build_config, list.MaxItems(1) & [...#build_config]])
		event_trigger?: matchN(1, [#event_trigger, list.MaxItems(1) & [...#event_trigger]])
		service_config?: matchN(1, [#service_config, list.MaxItems(1) & [...#service_config]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The last update timestamp of a Cloud Function.
		update_time?: string

		// Output only. The deployed url for the function.
		url?: string
	})

	#build_config: close({
		// The Cloud Build name of the latest successful
		// deployment of the function.
		build?: string

		// User managed repository created in Artifact Registry optionally
		// with a customer managed encryption key.
		docker_repository?: string

		// The name of the function (as defined in source code) that will
		// be executed.
		// Defaults to the resource name suffix, if not specified. For
		// backward
		// compatibility, if function with given name is not found, then
		// the system
		// will try to use function named "function". For Node.js this is
		// name of a
		// function exported by the module specified in source_location.
		entry_point?: string

		// User-provided build-time environment variables for the
		// function.
		environment_variables?: [string]: string

		// The runtime in which to run the function. Required when
		// deploying a new
		// function, optional when updating an existing function.
		runtime?: string
		automatic_update_policy?: matchN(1, [_#defs."/$defs/build_config/$defs/automatic_update_policy", list.MaxItems(1) & [..._#defs."/$defs/build_config/$defs/automatic_update_policy"]])
		on_deploy_update_policy?: matchN(1, [_#defs."/$defs/build_config/$defs/on_deploy_update_policy", list.MaxItems(1) & [..._#defs."/$defs/build_config/$defs/on_deploy_update_policy"]])

		// The fully-qualified name of the service account to be used for
		// building the container.
		service_account?: string
		source?: matchN(1, [_#defs."/$defs/build_config/$defs/source", list.MaxItems(1) & [..._#defs."/$defs/build_config/$defs/source"]])

		// Name of the Cloud Build Custom Worker Pool that should be used
		// to build the function.
		worker_pool?: string
	})

	#event_trigger: close({
		// Required. The type of event to observe.
		event_type!: string

		// The name of a Pub/Sub topic in the same project that will be
		// used
		// as the transport topic for the event delivery.
		pubsub_topic?: string

		// Describes the retry policy in case of function's execution
		// failure.
		// Retried execution is charged as any other execution. Possible
		// values: ["RETRY_POLICY_UNSPECIFIED",
		// "RETRY_POLICY_DO_NOT_RETRY", "RETRY_POLICY_RETRY"]
		retry_policy?: string

		// Optional. The email of the trigger's service account. The
		// service account
		// must have permission to invoke Cloud Run services. If empty,
		// defaults to the
		// Compute Engine default service account:
		// {project_number}-compute@developer.gserviceaccount.com.
		service_account_email?: string

		// Output only. The resource name of the Eventarc trigger.
		trigger?: string

		// The region that the trigger will be in. The trigger will only
		// receive
		// events originating in this region. It can be the same
		// region as the function, a different region or multi-region, or
		// the global
		// region. If not provided, defaults to the same region as the
		// function.
		trigger_region?: string
		event_filters?: matchN(1, [_#defs."/$defs/event_trigger/$defs/event_filters", [..._#defs."/$defs/event_trigger/$defs/event_filters"]])
	})

	#service_config: close({
		// Whether 100% of traffic is routed to the latest revision.
		// Defaults to true.
		all_traffic_on_latest_revision?: bool

		// The number of CPUs used in a single container instance. Default
		// value is calculated from available memory.
		available_cpu?: string

		// The amount of memory available for a function.
		// Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no
		// unit is
		// supplied the value is interpreted as bytes.
		available_memory?: string

		// The binary authorization policy to be checked when deploying
		// the Cloud Run service.
		binary_authorization_policy?: string

		// Environment variables that shall be available during function
		// execution.
		environment_variables?: [string]: string

		// URIs of the Service deployed
		gcf_uri?: string

		// Available ingress settings. Defaults to "ALLOW_ALL" if
		// unspecified. Default value: "ALLOW_ALL" Possible values:
		// ["ALLOW_ALL", "ALLOW_INTERNAL_ONLY",
		// "ALLOW_INTERNAL_AND_GCLB"]
		ingress_settings?: string

		// The limit on the maximum number of function instances that may
		// coexist at a
		// given time.
		max_instance_count?: number

		// Sets the maximum number of concurrent requests that each
		// instance can receive. Defaults to 1.
		max_instance_request_concurrency?: number

		// The limit on the minimum number of function instances that may
		// coexist at a
		// given time.
		min_instance_count?: number
		secret_environment_variables?: matchN(1, [_#defs."/$defs/service_config/$defs/secret_environment_variables", [..._#defs."/$defs/service_config/$defs/secret_environment_variables"]])
		secret_volumes?: matchN(1, [_#defs."/$defs/service_config/$defs/secret_volumes", [..._#defs."/$defs/service_config/$defs/secret_volumes"]])

		// Name of the service associated with a Function.
		service?: string

		// The email of the service account for this function.
		service_account_email?: string

		// The function execution timeout. Execution is considered failed
		// and
		// can be terminated if the function is not completed at the end
		// of the
		// timeout period. Defaults to 60 seconds.
		timeout_seconds?: number

		// URI of the Service deployed.
		uri?: string

		// The Serverless VPC Access connector that this cloud function
		// can connect to.
		vpc_connector?: string

		// Available egress settings. Possible values:
		// ["VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED",
		// "PRIVATE_RANGES_ONLY", "ALL_TRAFFIC"]
		vpc_connector_egress_settings?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/build_config/$defs/automatic_update_policy": close({})

	_#defs: "/$defs/build_config/$defs/on_deploy_update_policy": close({
		// The runtime version which was used during latest function
		// deployment.
		runtime_version?: string
	})

	_#defs: "/$defs/build_config/$defs/source": close({
		repo_source?: matchN(1, [_#defs."/$defs/build_config/$defs/source/$defs/repo_source", list.MaxItems(1) & [..._#defs."/$defs/build_config/$defs/source/$defs/repo_source"]])
		storage_source?: matchN(1, [_#defs."/$defs/build_config/$defs/source/$defs/storage_source", list.MaxItems(1) & [..._#defs."/$defs/build_config/$defs/source/$defs/storage_source"]])
	})

	_#defs: "/$defs/build_config/$defs/source/$defs/repo_source": close({
		// Regex matching branches to build.
		branch_name?: string

		// Regex matching tags to build.
		commit_sha?: string

		// Directory, relative to the source root, in which to run the
		// build.
		dir?: string

		// Only trigger a build if the revision regex does
		// NOT match the revision regex.
		invert_regex?: bool

		// ID of the project that owns the Cloud Source Repository. If
		// omitted, the
		// project ID requesting the build is assumed.
		project_id?: string

		// Name of the Cloud Source Repository.
		repo_name?: string

		// Regex matching tags to build.
		tag_name?: string
	})

	_#defs: "/$defs/build_config/$defs/source/$defs/storage_source": close({
		// Google Cloud Storage bucket containing the source
		bucket?: string

		// Google Cloud Storage generation for the object. If the
		// generation
		// is omitted, the latest generation will be used.
		generation?: number

		// Google Cloud Storage object containing the source.
		object?: string
	})

	_#defs: "/$defs/event_trigger/$defs/event_filters": close({
		// 'Required. The name of a CloudEvents attribute.
		// Currently, only a subset of attributes are supported for
		// filtering. Use the 'gcloud eventarc providers describe'
		// command to learn more about events and their attributes.
		// Do not filter for the 'type' attribute here, as this is already
		// achieved by the resource's 'event_type' attribute.
		attribute!: string

		// Optional. The operator used for matching the events with the
		// value of
		// the filter. If not specified, only events that have an exact
		// key-value
		// pair specified in the filter are matched.
		// The only allowed value is 'match-path-pattern'.
		// [See documentation on path patterns
		// here](https://cloud.google.com/eventarc/docs/path-patterns)'
		operator?: string

		// Required. The value for the attribute.
		// If the operator field is set as 'match-path-pattern', this
		// value can be a path pattern instead of an exact value.
		value!: string
	})

	_#defs: "/$defs/service_config/$defs/secret_environment_variables": close({
		// Name of the environment variable.
		key!: string

		// Project identifier (preferably project number but can also be
		// the project ID) of the project that contains the secret. If
		// not set, it will be populated with the function's project
		// assuming that the secret exists in the same project as of the
		// function.
		project_id!: string

		// Name of the secret in secret manager (not the full resource
		// name).
		secret!: string

		// Version of the secret (version number or the string 'latest').
		// It is recommended to use a numeric version for secret
		// environment variables as any updates to the secret value is
		// not reflected until new instances start.
		version!: string
	})

	_#defs: "/$defs/service_config/$defs/secret_volumes": close({
		// The path within the container to mount the secret volume. For
		// example, setting the mountPath as /etc/secrets would mount the
		// secret value files under the /etc/secrets directory. This
		// directory will also be completely shadowed and unavailable to
		// mount any other secrets. Recommended mount path: /etc/secrets
		mount_path!: string
		versions?: matchN(1, [_#defs."/$defs/service_config/$defs/secret_volumes/$defs/versions", [..._#defs."/$defs/service_config/$defs/secret_volumes/$defs/versions"]])

		// Project identifier (preferably project number but can also be
		// the project ID) of the project that contains the secret. If
		// not set, it will be populated with the function's project
		// assuming that the secret exists in the same project as of the
		// function.
		project_id!: string

		// Name of the secret in secret manager (not the full resource
		// name).
		secret!: string
	})

	_#defs: "/$defs/service_config/$defs/secret_volumes/$defs/versions": close({
		// Relative path of the file under the mount path where the secret
		// value for this version will be fetched and made available. For
		// example, setting the mountPath as '/etc/secrets' and path as
		// secret_foo would mount the secret value file at
		// /etc/secrets/secret_foo.
		path!: string

		// Version of the secret (version number or the string 'latest').
		// It is preferable to use latest version with secret volumes as
		// secret value changes are reflected immediately.
		version!: string
	})
}
