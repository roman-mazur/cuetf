package res

import "list"

#google_dataplex_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_task")
	close({
		// The time when the task was created.
		create_time?: string

		// User-provided description of the task.
		description?: string

		// User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Configuration for the cluster
		execution_status?: [...close({
			latest_job?: [...close({
				end_time?:    string
				message?:     string
				name?:        string
				retry_count?: number
				service?:     string
				service_job?: string
				start_time?:  string
				state?:       string
				uid?:         string
			})]
			update_time?: string
		})]

		// User-defined labels for the task.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The lake in which the task will be created in.
		lake?: string
		id?:   string

		// The location in which the task will be created in.
		location?: string

		// The relative resource name of the task, of the form:
		// projects/{project_number}/locations/{locationId}/lakes/{lakeId}/
		// tasks/{name}.
		name?: string

		// Current state of the task.
		state?: string
		execution_spec?: matchN(1, [#execution_spec, list.MaxItems(1) & [_, ...] & [...#execution_spec]])
		notebook?: matchN(1, [#notebook, list.MaxItems(1) & [...#notebook]])
		spark?: matchN(1, [#spark, list.MaxItems(1) & [...#spark]])
		timeouts?: #timeouts
		trigger_spec?: matchN(1, [#trigger_spec, list.MaxItems(1) & [_, ...] & [...#trigger_spec]])

		// The task Id of the task.
		task_id?: string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated globally unique ID for the task. This ID will
		// be different if the task is deleted and re-created with the
		// same name.
		uid?: string

		// The time when the task was last updated.
		update_time?: string
	})

	#execution_spec: close({
		// The arguments to pass to the task. The args can use
		// placeholders of the format ${placeholder} as part of key/value
		// string. These will be interpolated before passing the args to
		// the driver. Currently supported placeholders: - ${taskId} -
		// ${job_time} To pass positional args, set the key as TASK_ARGS.
		// The value should be a comma-separated string of all the
		// positional arguments. To use a delimiter other than comma,
		// refer to
		// https://cloud.google.com/sdk/gcloud/reference/topic/escaping.
		// In case of other keys being present in the args, then
		// TASK_ARGS will be passed as the last argument. An object
		// containing a list of 'key': value pairs. Example: { 'name':
		// 'wrench', 'mass': '1.3kg', 'count': '3' }.
		args?: [string]: string

		// The Cloud KMS key to use for encryption, of the form:
		// projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
		kms_key?: string

		// The maximum duration after which the job execution is expired.
		// A duration in seconds with up to nine fractional digits,
		// ending with 's'. Example: '3.5s'.
		max_job_execution_lifetime?: string

		// The project in which jobs are run. By default, the project
		// containing the Lake is used. If a project is provided, the
		// ExecutionSpec.service_account must belong to this project.
		project?: string

		// Service account to use to execute a task. If not provided, the
		// default Compute service account for the project is used.
		service_account!: string
	})

	#notebook: close({
		// Cloud Storage URIs of archives to be extracted into the working
		// directory of each executor. Supported file types: .jar, .tar,
		// .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]
		infrastructure_spec?: matchN(1, [_#defs."/$defs/notebook/$defs/infrastructure_spec", list.MaxItems(1) & [..._#defs."/$defs/notebook/$defs/infrastructure_spec"]])

		// Cloud Storage URIs of files to be placed in the working
		// directory of each executor.
		file_uris?: [...string]

		// Path to input notebook. This can be the Cloud Storage URI of
		// the notebook file or the path to a Notebook Content. The
		// execution args are accessible as environment variables
		// (TASK_key=value).
		notebook!: string
	})

	#spark: close({
		// Cloud Storage URIs of archives to be extracted into the working
		// directory of each executor. Supported file types: .jar, .tar,
		// .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// Cloud Storage URIs of files to be placed in the working
		// directory of each executor.
		file_uris?: [...string]

		// The name of the driver's main class. The jar file that contains
		// the class must be in the default CLASSPATH or specified in
		// jar_file_uris. The execution args are passed in as a sequence
		// of named process arguments (--key=value).
		main_class?: string

		// The Cloud Storage URI of the jar file that contains the main
		// class. The execution args are passed in as a sequence of named
		// process arguments (--key=value).
		main_jar_file_uri?: string

		// The Gcloud Storage URI of the main Python file to use as the
		// driver. Must be a .py file. The execution args are passed in
		// as a sequence of named process arguments (--key=value).
		python_script_file?: string

		// The query text. The execution args are used to declare a set of
		// script variables (set key='value';).
		sql_script?: string
		infrastructure_spec?: matchN(1, [_#defs."/$defs/spark/$defs/infrastructure_spec", list.MaxItems(1) & [..._#defs."/$defs/spark/$defs/infrastructure_spec"]])

		// A reference to a query file. This can be the Cloud Storage URI
		// of the query file or it can the path to a SqlScript Content.
		// The execution args are used to declare a set of script
		// variables (set key='value';).
		sql_script_file?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#trigger_spec: close({
		// Prevent the task from executing. This does not cancel already
		// running tasks. It is intended to temporarily disable RECURRING
		// tasks.
		disabled?: bool

		// Number of retry attempts before aborting. Set to zero to never
		// attempt to retry a failed task.
		max_retries?: number

		// Cron schedule (https://en.wikipedia.org/wiki/Cron) for running
		// tasks periodically. To explicitly set a timezone to the cron
		// tab, apply a prefix in the cron tab:
		// 'CRON_TZ=${IANA_TIME_ZONE}' or 'TZ=${IANA_TIME_ZONE}'. The
		// ${IANA_TIME_ZONE} may only be a valid string from IANA time
		// zone database. For example, CRON_TZ=America/New_York 1 * * *
		// *, or TZ=America/New_York 1 * * * *. This field is required
		// for RECURRING tasks.
		schedule?: string

		// The first run of the task will be after this time. If not
		// specified, the task will run shortly after being submitted if
		// ON_DEMAND and based on the schedule if RECURRING.
		start_time?: string

		// Trigger type of the user-specified Task Possible values:
		// ["ON_DEMAND", "RECURRING"]
		type!: string
	})

	_#defs: "/$defs/notebook/$defs/infrastructure_spec": close({
		batch?: matchN(1, [_#defs."/$defs/notebook/$defs/infrastructure_spec/$defs/batch", list.MaxItems(1) & [..._#defs."/$defs/notebook/$defs/infrastructure_spec/$defs/batch"]])
		container_image?: matchN(1, [_#defs."/$defs/notebook/$defs/infrastructure_spec/$defs/container_image", list.MaxItems(1) & [..._#defs."/$defs/notebook/$defs/infrastructure_spec/$defs/container_image"]])
		vpc_network?: matchN(1, [_#defs."/$defs/notebook/$defs/infrastructure_spec/$defs/vpc_network", list.MaxItems(1) & [..._#defs."/$defs/notebook/$defs/infrastructure_spec/$defs/vpc_network"]])
	})

	_#defs: "/$defs/notebook/$defs/infrastructure_spec/$defs/batch": close({
		// Total number of job executors. Executor Count should be between
		// 2 and 100. [Default=2]
		executors_count?: number

		// Max configurable executors. If maxExecutorsCount >
		// executorsCount, then auto-scaling is enabled. Max Executor
		// Count should be between 2 and 1000. [Default=1000]
		max_executors_count?: number
	})

	_#defs: "/$defs/notebook/$defs/infrastructure_spec/$defs/container_image": close({
		// Container image to use.
		image?: string

		// A list of Java JARS to add to the classpath. Valid input
		// includes Cloud Storage URIs to Jar binaries. For example,
		// gs://bucket-name/my/path/to/file.jar
		java_jars?: [...string]

		// Override to common configuration of open source components
		// installed on the Dataproc cluster. The properties to set on
		// daemon config files. Property keys are specified in
		// prefix:property format, for example core:hadoop.tmp.dir. For
		// more information, see Cluster properties.
		properties?: [string]: string

		// A list of python packages to be installed. Valid formats
		// include Cloud Storage URI to a PIP installable library. For
		// example, gs://bucket-name/my/path/to/lib.tar.gz
		python_packages?: [...string]
	})

	_#defs: "/$defs/notebook/$defs/infrastructure_spec/$defs/vpc_network": close({
		// The Cloud VPC network in which the job is run. By default, the
		// Cloud VPC network named Default within the project is used.
		network?: string

		// List of network tags to apply to the job.
		network_tags?: [...string]

		// The Cloud VPC sub-network in which the job is run.
		sub_network?: string
	})

	_#defs: "/$defs/spark/$defs/infrastructure_spec": close({
		batch?: matchN(1, [_#defs."/$defs/spark/$defs/infrastructure_spec/$defs/batch", list.MaxItems(1) & [..._#defs."/$defs/spark/$defs/infrastructure_spec/$defs/batch"]])
		container_image?: matchN(1, [_#defs."/$defs/spark/$defs/infrastructure_spec/$defs/container_image", list.MaxItems(1) & [..._#defs."/$defs/spark/$defs/infrastructure_spec/$defs/container_image"]])
		vpc_network?: matchN(1, [_#defs."/$defs/spark/$defs/infrastructure_spec/$defs/vpc_network", list.MaxItems(1) & [..._#defs."/$defs/spark/$defs/infrastructure_spec/$defs/vpc_network"]])
	})

	_#defs: "/$defs/spark/$defs/infrastructure_spec/$defs/batch": close({
		// Total number of job executors. Executor Count should be between
		// 2 and 100. [Default=2]
		executors_count?: number

		// Max configurable executors. If maxExecutorsCount >
		// executorsCount, then auto-scaling is enabled. Max Executor
		// Count should be between 2 and 1000. [Default=1000]
		max_executors_count?: number
	})

	_#defs: "/$defs/spark/$defs/infrastructure_spec/$defs/container_image": close({
		// Container image to use.
		image?: string

		// A list of Java JARS to add to the classpath. Valid input
		// includes Cloud Storage URIs to Jar binaries. For example,
		// gs://bucket-name/my/path/to/file.jar
		java_jars?: [...string]

		// Override to common configuration of open source components
		// installed on the Dataproc cluster. The properties to set on
		// daemon config files. Property keys are specified in
		// prefix:property format, for example core:hadoop.tmp.dir. For
		// more information, see Cluster properties.
		properties?: [string]: string

		// A list of python packages to be installed. Valid formats
		// include Cloud Storage URI to a PIP installable library. For
		// example, gs://bucket-name/my/path/to/lib.tar.gz
		python_packages?: [...string]
	})

	_#defs: "/$defs/spark/$defs/infrastructure_spec/$defs/vpc_network": close({
		// The Cloud VPC network in which the job is run. By default, the
		// Cloud VPC network named Default within the project is used.
		network?: string

		// List of network tags to apply to the job.
		network_tags?: [...string]

		// The Cloud VPC sub-network in which the job is run.
		sub_network?: string
	})
}
