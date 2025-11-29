package res

import "list"

#google_dataproc_batch: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_batch")
	close({
		// The ID to use for the batch, which will become the final
		// component of the batch's resource name.
		// This value must be 4-63 characters. Valid characters are
		// /[a-z][0-9]-/.
		batch_id?: string

		// The time when the batch was created.
		create_time?: string

		// The email address of the user who created the batch.
		creator?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The labels to associate with this batch.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location in which the batch will be created in.
		location?: string

		// The resource name of the batch.
		name?: string

		// The resource name of the operation associated with this batch.
		operation?: string

		// Runtime information about batch execution.
		runtime_info?: [...close({
			approximate_usage?: [...close({
				accelerator_type?:           string
				milli_accelerator_seconds?:  string
				milli_dcu_seconds?:          string
				shuffle_storage_gb_seconds?: string
			})]
			current_usage?: [...close({
				accelerator_type?:           string
				milli_accelerator?:          string
				milli_dcu?:                  string
				milli_dcu_premium?:          string
				shuffle_storage_gb?:         string
				shuffle_storage_gb_premium?: string
				snapshot_time?:              string
			})]
			diagnostic_output_uri?: string
			endpoints?: [string]: string
			output_uri?: string
		})]

		// The state of the batch. For possible values, see the [API
		// documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches#State).
		state?:   string
		project?: string
		environment_config?: matchN(1, [#environment_config, list.MaxItems(1) & [...#environment_config]])
		pyspark_batch?: matchN(1, [#pyspark_batch, list.MaxItems(1) & [...#pyspark_batch]])
		runtime_config?: matchN(1, [#runtime_config, list.MaxItems(1) & [...#runtime_config]])
		spark_batch?: matchN(1, [#spark_batch, list.MaxItems(1) & [...#spark_batch]])
		spark_r_batch?: matchN(1, [#spark_r_batch, list.MaxItems(1) & [...#spark_r_batch]])
		spark_sql_batch?: matchN(1, [#spark_sql_batch, list.MaxItems(1) & [...#spark_sql_batch]])
		timeouts?: #timeouts

		// Historical state information for the batch.
		state_history?: [...close({
			state?:            string
			state_message?:    string
			state_start_time?: string
		})]

		// Batch state details, such as a failure description if the state
		// is FAILED.
		state_message?: string

		// Batch state details, such as a failure description if the state
		// is FAILED.
		state_time?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A batch UUID (Unique Universal Identifier). The service
		// generates this value when it creates the batch.
		uuid?: string
	})

	#environment_config: close({
		execution_config?: matchN(1, [_#defs."/$defs/environment_config/$defs/execution_config", list.MaxItems(1) & [..._#defs."/$defs/environment_config/$defs/execution_config"]])
		peripherals_config?: matchN(1, [_#defs."/$defs/environment_config/$defs/peripherals_config", list.MaxItems(1) & [..._#defs."/$defs/environment_config/$defs/peripherals_config"]])
	})

	#pyspark_batch: close({
		// HCFS URIs of archives to be extracted into the working
		// directory of each executor.
		// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver. Do not include arguments
		// that can be set as batch
		// properties, such as --conf, since a collision can occur that
		// causes an incorrect batch submission.
		args?: [...string]

		// HCFS URIs of files to be placed in the working directory of
		// each executor.
		file_uris?: [...string]

		// HCFS URIs of jar files to add to the classpath of the Spark
		// driver and tasks.
		jar_file_uris?: [...string]

		// The HCFS URI of the main Python file to use as the Spark
		// driver. Must be a .py file.
		main_python_file_uri?: string

		// HCFS file URIs of Python files to pass to the PySpark
		// framework.
		// Supported file types: .py, .egg, and .zip.
		python_file_uris?: [...string]
	})

	#runtime_config: close({
		// Optional. Cohort identifier. Identifies families of the
		// workloads having the same shape, e.g. daily ETL jobs.
		cohort?: string

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
		autotuning_config?: matchN(1, [_#defs."/$defs/runtime_config/$defs/autotuning_config", list.MaxItems(1) & [..._#defs."/$defs/runtime_config/$defs/autotuning_config"]])

		// Version of the batch runtime.
		version?: string
	})

	#spark_batch: close({
		// HCFS URIs of archives to be extracted into the working
		// directory of each executor.
		// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver. Do not include arguments
		// that can be set as batch
		// properties, such as --conf, since a collision can occur that
		// causes an incorrect batch submission.
		args?: [...string]

		// HCFS URIs of files to be placed in the working directory of
		// each executor.
		file_uris?: [...string]

		// HCFS URIs of jar files to add to the classpath of the Spark
		// driver and tasks.
		jar_file_uris?: [...string]

		// The name of the driver main class. The jar file that contains
		// the class must be in the
		// classpath or specified in jarFileUris.
		main_class?: string

		// The HCFS URI of the jar file that contains the main class.
		main_jar_file_uri?: string
	})

	#spark_r_batch: close({
		// HCFS URIs of archives to be extracted into the working
		// directory of each executor.
		// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver. Do not include arguments
		// that can be set as batch
		// properties, such as --conf, since a collision can occur that
		// causes an incorrect batch submission.
		args?: [...string]

		// HCFS URIs of files to be placed in the working directory of
		// each executor.
		file_uris?: [...string]

		// The HCFS URI of the main R file to use as the driver. Must be a
		// .R or .r file.
		main_r_file_uri?: string
	})

	#spark_sql_batch: close({
		// HCFS URIs of jar files to be added to the Spark CLASSPATH.
		jar_file_uris?: [...string]

		// The HCFS URI of the script that contains Spark SQL queries to
		// execute.
		query_file_uri?: string

		// Mapping of query variable names to values (equivalent to the
		// Spark SQL command: SET name="value";).
		query_variables?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/environment_config/$defs/execution_config": close({
		// The Cloud KMS key to use for encryption.
		kms_key?: string

		// Tags used for network traffic control.
		network_tags?: [...string]

		// Network configuration for workload execution.
		network_uri?: string

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
		// work to finish. If ttl is not specified for a batch workload,
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

	_#defs: "/$defs/runtime_config/$defs/autotuning_config": close({
		// Optional. Scenarios for which tunings are applied. Possible
		// values: ["SCALING", "BROADCAST_HASH_JOIN", "MEMORY"]
		scenarios?: [...string]
	})
}
