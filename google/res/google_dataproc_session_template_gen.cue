package res

import "list"

#google_dataproc_session_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_session_template")
	close({
		// The time when the session template was created.
		create_time?: string

		// The email address of the user who created the session template.
		creator?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The labels to associate with this session template.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location in which the session template will be created in.
		location?: string

		// The resource name of the session template in the following
		// format:
		// projects/{project}/locations/{location}/sessionTemplates/{template_id}
		name!: string
		environment_config?: matchN(1, [#environment_config, list.MaxItems(1) & [...#environment_config]])
		jupyter_session?: matchN(1, [#jupyter_session, list.MaxItems(1) & [...#jupyter_session]])
		runtime_config?: matchN(1, [#runtime_config, list.MaxItems(1) & [...#runtime_config]])
		project?: string
		spark_connect_session?: matchN(1, [#spark_connect_session, list.MaxItems(1) & [...#spark_connect_session]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		timeouts?: #timeouts

		// The time when the session template was updated.
		update_time?: string

		// A session template UUID (Unique Universal Identifier). The
		// service generates this value when it creates the session
		// template.
		uuid?: string
	})

	#environment_config: close({
		execution_config?: matchN(1, [_#defs."/$defs/environment_config/$defs/execution_config", list.MaxItems(1) & [..._#defs."/$defs/environment_config/$defs/execution_config"]])
		peripherals_config?: matchN(1, [_#defs."/$defs/environment_config/$defs/peripherals_config", list.MaxItems(1) & [..._#defs."/$defs/environment_config/$defs/peripherals_config"]])
	})

	#jupyter_session: close({
		// Display name, shown in the Jupyter kernelspec card.
		display_name?: string

		// Kernel to be used with Jupyter interactive session. Possible
		// values: ["PYTHON", "SCALA"]
		kernel?: string
	})

	#runtime_config: close({
		// Optional custom container image for the job runtime
		// environment. If not specified, a default container image will
		// be used.
		container_image?: string

		// A mapping of property names to values, which are used to
		// configure workload execution.
		effective_properties?: [string]: string

		// A mapping of property names to values, which are used to
		// configure workload execution.
		properties?: [string]: string

		// Version of the session runtime.
		version?: string
	})

	#spark_connect_session: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/environment_config/$defs/execution_config": close({
		// The duration to keep the session alive while it's idling.
		// Exceeding this threshold causes the session to terminate.
		// Minimum value is 10 minutes; maximum value is 14 day.
		// Defaults to 1 hour if not set. If both ttl and idleTtl are
		// specified for an interactive session, the conditions
		// are treated as OR conditions: the workload will be terminated
		// when it has been idle for idleTtl or when ttl has
		// been exceeded, whichever occurs first.
		idle_ttl?: string

		// The Cloud KMS key to use for encryption.
		kms_key?: string

		// Tags used for network traffic control.
		network_tags?: [...string]

		// Service account that used to execute workload.
		service_account?: string

		// A Cloud Storage bucket used to stage workload dependencies,
		// config files, and store
		// workload output and other ephemeral data, such as Spark history
		// files. If you do not specify a staging bucket,
		// Cloud Dataproc will determine a Cloud Storage location
		// according to the region where your workload is running,
		// and then create and manage project-level, per-location staging
		// and temporary buckets.
		// This field requires a Cloud Storage bucket name, not a gs://...
		// URI to a Cloud Storage bucket.
		staging_bucket?: string

		// Subnetwork configuration for workload execution.
		subnetwork_uri?: string
		authentication_config?: matchN(1, [_#defs."/$defs/environment_config/$defs/execution_config/$defs/authentication_config", list.MaxItems(1) & [..._#defs."/$defs/environment_config/$defs/execution_config/$defs/authentication_config"]])

		// The duration after which the workload will be terminated.
		// When the workload exceeds this duration, it will be
		// unconditionally terminated without waiting for ongoing
		// work to finish. If ttl is not specified for a session workload,
		// the workload will be allowed to run until it
		// exits naturally (or run forever without exiting). If ttl is not
		// specified for an interactive session,
		// it defaults to 24 hours. If ttl is not specified for a batch
		// that uses 2.1+ runtime version, it defaults to 4 hours.
		// Minimum value is 10 minutes; maximum value is 14 days. If both
		// ttl and idleTtl are specified (for an interactive session),
		// the conditions are treated as OR conditions: the workload will
		// be terminated when it has been idle for idleTtl or
		// when ttl has been exceeded, whichever occurs first.
		ttl?: string
	})

	_#defs: "/$defs/environment_config/$defs/execution_config/$defs/authentication_config": close({
		// Authentication type for the user workload running in
		// containers. Possible values: ["SERVICE_ACCOUNT",
		// "END_USER_CREDENTIALS"]
		user_workload_authentication_type?: string
	})

	_#defs: "/$defs/environment_config/$defs/peripherals_config": close({
		spark_history_server_config?: matchN(1, [_#defs."/$defs/environment_config/$defs/peripherals_config/$defs/spark_history_server_config", list.MaxItems(1) & [..._#defs."/$defs/environment_config/$defs/peripherals_config/$defs/spark_history_server_config"]])

		// Resource name of an existing Dataproc Metastore service.
		metastore_service?: string
	})

	_#defs: "/$defs/environment_config/$defs/peripherals_config/$defs/spark_history_server_config": close({
		// Resource name of an existing Dataproc Cluster to act as a Spark
		// History Server for the workload.
		dataproc_cluster?: string
	})
}
