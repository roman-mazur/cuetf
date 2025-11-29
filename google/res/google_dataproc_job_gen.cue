package res

import "list"

#google_dataproc_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_job")
	close({
		// Output-only. If present, the location of miscellaneous control
		// files which may be used as part of job setup and handling. If
		// not present, control files may be placed in the same location
		// as driver_output_uri.
		driver_controls_files_uri?: string

		// Output-only. A URI pointing to the location of the stdout of
		// the job's driver program
		driver_output_resource_uri?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// By default, you can only delete inactive jobs within Dataproc.
		// Setting this to true, and calling destroy, will ensure that
		// the job is first cancelled before issuing the delete.
		force_delete?: bool

		// Optional. The labels to associate with this job.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The project in which the cluster can be found and jobs
		// subsequently run against. If it is not provided, the provider
		// project is used.
		project?: string
		hadoop_config?: matchN(1, [#hadoop_config, list.MaxItems(1) & [...#hadoop_config]])
		hive_config?: matchN(1, [#hive_config, list.MaxItems(1) & [...#hive_config]])
		pig_config?: matchN(1, [#pig_config, list.MaxItems(1) & [...#pig_config]])
		placement!: matchN(1, [#placement, list.MaxItems(1) & [_, ...] & [...#placement]])
		presto_config?: matchN(1, [#presto_config, list.MaxItems(1) & [...#presto_config]])
		pyspark_config?: matchN(1, [#pyspark_config, list.MaxItems(1) & [...#pyspark_config]])
		reference?: matchN(1, [#reference, list.MaxItems(1) & [...#reference]])
		scheduling?: matchN(1, [#scheduling, list.MaxItems(1) & [...#scheduling]])
		spark_config?: matchN(1, [#spark_config, list.MaxItems(1) & [...#spark_config]])
		sparksql_config?: matchN(1, [#sparksql_config, list.MaxItems(1) & [...#sparksql_config]])
		timeouts?: #timeouts

		// The Cloud Dataproc region. This essentially determines which
		// clusters are available for this job to be submitted to. If not
		// specified, defaults to global.
		region?: string

		// The status of the job.
		status?: [...close({
			details?:          string
			state?:            string
			state_start_time?: string
			substate?:         string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#hadoop_config: close({
		// HCFS URIs of archives to be extracted in the working directory
		// of .jar, .tar, .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver.
		args?: [...string]

		// HCFS URIs of files to be copied to the working directory of
		// Spark drivers and distributed tasks. Useful for naively
		// parallel tasks.
		file_uris?: [...string]

		// HCFS URIs of jar files to add to the CLASSPATHs of the Spark
		// driver and tasks.
		jar_file_uris?: [...string]

		// The class containing the main method of the driver. Must be in
		// a provided jar or jar that is already on the classpath.
		// Conflicts with main_jar_file_uri
		main_class?: string

		// The HCFS URI of jar file containing the driver jar. Conflicts
		// with main_class
		main_jar_file_uri?: string
		logging_config?: matchN(1, [_#defs."/$defs/hadoop_config/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/hadoop_config/$defs/logging_config"]])

		// A mapping of property names to values, used to configure Spark.
		// Properties that conflict with values set by the Cloud Dataproc
		// API may be overwritten. Can include properties set in
		// /etc/spark/conf/spark-defaults.conf and classes in user code.
		properties?: [string]: string
	})

	#hive_config: close({
		// Whether to continue executing queries if a query fails. The
		// default value is false. Setting to true can be useful when
		// executing independent parallel queries. Defaults to false.
		continue_on_failure?: bool

		// HCFS URIs of jar files to add to the CLASSPATH of the Hive
		// server and Hadoop MapReduce (MR) tasks. Can contain Hive
		// SerDes and UDFs.
		jar_file_uris?: [...string]

		// A mapping of property names and values, used to configure Hive.
		// Properties that conflict with values set by the Cloud Dataproc
		// API may be overwritten. Can include properties set in
		// /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and
		// classes in user code.
		properties?: [string]: string

		// HCFS URI of file containing Hive script to execute as the job.
		// Conflicts with query_list
		query_file_uri?: string

		// The list of Hive queries or statements to execute as part of
		// the job. Conflicts with query_file_uri
		query_list?: [...string]

		// Mapping of query variable names to values (equivalent to the
		// Hive command: SET name="value";).
		script_variables?: [string]: string
	})

	#pig_config: close({
		// Whether to continue executing queries if a query fails. The
		// default value is false. Setting to true can be useful when
		// executing independent parallel queries. Defaults to false.
		continue_on_failure?: bool

		// HCFS URIs of jar files to add to the CLASSPATH of the Pig
		// Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs.
		jar_file_uris?: [...string]

		// A mapping of property names to values, used to configure Pig.
		// Properties that conflict with values set by the Cloud Dataproc
		// API may be overwritten. Can include properties set in
		// /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and
		// classes in user code.
		properties?: [string]: string

		// HCFS URI of file containing Hive script to execute as the job.
		// Conflicts with query_list
		query_file_uri?: string

		// The list of Hive queries or statements to execute as part of
		// the job. Conflicts with query_file_uri
		query_list?: [...string]

		// Mapping of query variable names to values (equivalent to the
		// Pig command: name=[value]).
		script_variables?: [string]: string
		logging_config?: matchN(1, [_#defs."/$defs/pig_config/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/pig_config/$defs/logging_config"]])
	})

	#placement: close({
		// The name of the cluster where the job will be submitted
		cluster_name!: string

		// Output-only. A cluster UUID generated by the Cloud Dataproc
		// service when the job is submitted
		cluster_uuid?: string
	})

	#presto_config: close({
		// Presto client tags to attach to this query.
		client_tags?: [...string]

		// Whether to continue executing queries if a query fails. Setting
		// to true can be useful when executing independent parallel
		// queries. Defaults to false.
		continue_on_failure?: bool

		// The format in which query output will be displayed. See the
		// Presto documentation for supported output formats.
		output_format?: string

		// A mapping of property names to values. Used to set Presto
		// session properties Equivalent to using the --session flag in
		// the Presto CLI.
		properties?: [string]: string

		// The HCFS URI of the script that contains SQL queries. Conflicts
		// with query_list
		query_file_uri?: string

		// The list of SQL queries or statements to execute as part of the
		// job. Conflicts with query_file_uri
		query_list?: [...string]
		logging_config?: matchN(1, [_#defs."/$defs/presto_config/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/presto_config/$defs/logging_config"]])
	})

	#pyspark_config: close({
		// Optional. HCFS URIs of archives to be extracted in the working
		// directory of .jar, .tar, .tar.gz, .tgz, and .zip
		archive_uris?: [...string]

		// Optional. The arguments to pass to the driver. Do not include
		// arguments, such as --conf, that can be set as job properties,
		// since a collision may occur that causes an incorrect job
		// submission
		args?: [...string]

		// Optional. HCFS URIs of files to be copied to the working
		// directory of Python drivers and distributed tasks. Useful for
		// naively parallel tasks
		file_uris?: [...string]

		// Optional. HCFS URIs of jar files to add to the CLASSPATHs of
		// the Python driver and tasks
		jar_file_uris?: [...string]

		// Required. The HCFS URI of the main Python file to use as the
		// driver. Must be a .py file
		main_python_file_uri!: string

		// Optional. A mapping of property names to values, used to
		// configure PySpark. Properties that conflict with values set by
		// the Cloud Dataproc API may be overwritten. Can include
		// properties set in /etc/spark/conf/spark-defaults.conf and
		// classes in user code
		properties?: [string]: string
		logging_config?: matchN(1, [_#defs."/$defs/pyspark_config/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/pyspark_config/$defs/logging_config"]])

		// Optional. HCFS file URIs of Python files to pass to the PySpark
		// framework. Supported file types: .py, .egg, and .zip
		python_file_uris?: [...string]
	})

	#reference: close({
		// The job ID, which must be unique within the project. The job ID
		// is generated by the server upon job submission or provided by
		// the user as a means to perform retries without creating
		// duplicate jobs
		job_id?: string
	})

	#scheduling: close({
		// Maximum number of times per hour a driver may be restarted as a
		// result of driver exiting with non-zero code before job is
		// reported failed.
		max_failures_per_hour!: number

		// Maximum number of times in total a driver may be restarted as a
		// result of driver exiting with non-zero code before job is
		// reported failed.
		max_failures_total!: number
	})

	#spark_config: close({
		// HCFS URIs of archives to be extracted in the working directory
		// of .jar, .tar, .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver.
		args?: [...string]

		// HCFS URIs of files to be copied to the working directory of
		// Spark drivers and distributed tasks. Useful for naively
		// parallel tasks.
		file_uris?: [...string]

		// HCFS URIs of jar files to add to the CLASSPATHs of the Spark
		// driver and tasks.
		jar_file_uris?: [...string]

		// The class containing the main method of the driver. Must be in
		// a provided jar or jar that is already on the classpath.
		// Conflicts with main_jar_file_uri
		main_class?: string

		// The HCFS URI of jar file containing the driver jar. Conflicts
		// with main_class
		main_jar_file_uri?: string
		logging_config?: matchN(1, [_#defs."/$defs/spark_config/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/spark_config/$defs/logging_config"]])

		// A mapping of property names to values, used to configure Spark.
		// Properties that conflict with values set by the Cloud Dataproc
		// API may be overwritten. Can include properties set in
		// /etc/spark/conf/spark-defaults.conf and classes in user code.
		properties?: [string]: string
	})

	#sparksql_config: close({
		// HCFS URIs of jar files to be added to the Spark CLASSPATH.
		jar_file_uris?: [...string]

		// A mapping of property names to values, used to configure Spark
		// SQL's SparkConf. Properties that conflict with values set by
		// the Cloud Dataproc API may be overwritten.
		properties?: [string]: string

		// The HCFS URI of the script that contains SQL queries. Conflicts
		// with query_list
		query_file_uri?: string

		// The list of SQL queries or statements to execute as part of the
		// job. Conflicts with query_file_uri
		query_list?: [...string]
		logging_config?: matchN(1, [_#defs."/$defs/sparksql_config/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/sparksql_config/$defs/logging_config"]])

		// Mapping of query variable names to values (equivalent to the
		// Spark SQL command: SET name="value";).
		script_variables?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/hadoop_config/$defs/logging_config": close({
		// Optional. The per-package log levels for the driver. This may
		// include 'root' package name to configure rootLogger. Examples:
		// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
		driver_log_levels!: [string]: string
	})

	_#defs: "/$defs/pig_config/$defs/logging_config": close({
		// Optional. The per-package log levels for the driver. This may
		// include 'root' package name to configure rootLogger. Examples:
		// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
		driver_log_levels!: [string]: string
	})

	_#defs: "/$defs/presto_config/$defs/logging_config": close({
		// Optional. The per-package log levels for the driver. This may
		// include 'root' package name to configure rootLogger. Examples:
		// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
		driver_log_levels!: [string]: string
	})

	_#defs: "/$defs/pyspark_config/$defs/logging_config": close({
		// Optional. The per-package log levels for the driver. This may
		// include 'root' package name to configure rootLogger. Examples:
		// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
		driver_log_levels!: [string]: string
	})

	_#defs: "/$defs/spark_config/$defs/logging_config": close({
		// Optional. The per-package log levels for the driver. This may
		// include 'root' package name to configure rootLogger. Examples:
		// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
		driver_log_levels!: [string]: string
	})

	_#defs: "/$defs/sparksql_config/$defs/logging_config": close({
		// Optional. The per-package log levels for the driver. This may
		// include 'root' package name to configure rootLogger. Examples:
		// 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
		driver_log_levels!: [string]: string
	})
}
