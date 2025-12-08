package res

import "list"

#google_dataproc_gdc_spark_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_gdc_spark_application")
	close({
		// The annotations to associate with this application. Annotations
		// may be used to store client information, but are not used by
		// the server.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// An ApplicationEnvironment from which to inherit configuration
		// properties.
		application_environment?: string

		// The timestamp when the resource was created.
		create_time?: string

		// List of container image uris for additional file dependencies.
		// Dependent files are sequentially copied from each image. If a
		// file with the same name exists in 2 images then the file from
		// later image is used.
		dependency_images?: [...string]

		// User-provided human-readable name to be used in user
		// interfaces.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The labels to associate with this application. Labels may be
		// used for filtering and billing tracking.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the spark application.
		location!: string

		// URL for a monitoring UI for this application (for eventual
		// Spark PHS/UI support) Out of scope for private GA
		monitoring_endpoint?: string

		// Identifier. The name of the application. Format:
		// projects/{project}/locations/{location}/serviceInstances/{service_instance}/sparkApplications/{application}
		name?: string

		// The Kubernetes namespace in which to create the application.
		// This namespace must already exist on the cluster.
		namespace?: string

		// An HCFS URI pointing to the location of stdout and stdout of
		// the application Mainly useful for Pantheon and gcloud Not in
		// scope for private GA
		output_uri?: string

		// application-specific properties.
		properties?: [string]: string
		pyspark_application_config?: matchN(1, [#pyspark_application_config, list.MaxItems(1) & [...#pyspark_application_config]])
		spark_application_config?: matchN(1, [#spark_application_config, list.MaxItems(1) & [...#spark_application_config]])
		spark_r_application_config?: matchN(1, [#spark_r_application_config, list.MaxItems(1) & [...#spark_r_application_config]])
		spark_sql_application_config?: matchN(1, [#spark_sql_application_config, list.MaxItems(1) & [...#spark_sql_application_config]])
		timeouts?: #timeouts
		project?:  string

		// Whether the application is currently reconciling. True if the
		// current state of the resource does not match the intended
		// state, and the system is working to reconcile them, whether or
		// not the change was user initiated.
		reconciling?: bool

		// The id of the service instance to which this spark application
		// belongs.
		serviceinstance!: string

		// The id of the application
		spark_application_id!: string

		// The current state.
		// Possible values:
		// * 'STATE_UNSPECIFIED'
		// * 'PENDING'
		// * 'RUNNING'
		// * 'CANCELLING'
		// * 'CANCELLED'
		// * 'SUCCEEDED'
		// * 'FAILED'
		state?: string

		// A message explaining the current state.
		state_message?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated unique identifier for this application,
		// formatted as UUID4.
		uid?: string

		// The timestamp when the resource was most recently updated.
		update_time?: string

		// The Dataproc version of this application.
		version?: string
	})

	#pyspark_application_config: close({
		// HCFS URIs of archives to be extracted into the working
		// directory of each executor. Supported file types: .jar, .tar,
		// .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver. Do not include arguments,
		// such as '--conf', that can be set as job properties, since a
		// collision may occur that causes an incorrect job submission.
		args?: [...string]

		// HCFS URIs of files to be placed in the working directory of
		// each executor. Useful for naively parallel tasks.
		file_uris?: [...string]

		// HCFS URIs of jar files to add to the CLASSPATHs of the Python
		// driver and tasks.
		jar_file_uris?: [...string]

		// The HCFS URI of the main Python file to use as the driver. Must
		// be a .py file.
		main_python_file_uri!: string

		// HCFS file URIs of Python files to pass to the PySpark
		// framework. Supported file types: .py, .egg, and .zip.
		python_file_uris?: [...string]
	})

	#spark_application_config: close({
		// HCFS URIs of archives to be extracted into the working
		// directory of each executor. Supported file types: '.jar',
		// '.tar', '.tar.gz', '.tgz', and '.zip'.
		archive_uris?: [...string]

		// The arguments to pass to the driver. Do not include arguments
		// that can be set as application properties, such as '--conf',
		// since a collision can occur that causes an incorrect
		// application submission.
		args?: [...string]

		// HCFS URIs of files to be placed in the working directory of
		// each executor.
		file_uris?: [...string]

		// HCFS URIs of jar files to add to the classpath of the Spark
		// driver and tasks.
		jar_file_uris?: [...string]

		// The name of the driver main class. The jar file that contains
		// the class must be in the classpath or specified in
		// 'jar_file_uris'.
		main_class?: string

		// The HCFS URI of the jar file that contains the main class.
		main_jar_file_uri?: string
	})

	#spark_r_application_config: close({
		// HCFS URIs of archives to be extracted into the working
		// directory of each executor. Supported file types: .jar, .tar,
		// .tar.gz, .tgz, and .zip.
		archive_uris?: [...string]

		// The arguments to pass to the driver. Do not include arguments,
		// such as '--conf', that can be set as job properties, since a
		// collision may occur that causes an incorrect job submission.
		args?: [...string]

		// HCFS URIs of files to be placed in the working directory of
		// each executor. Useful for naively parallel tasks.
		file_uris?: [...string]

		// The HCFS URI of the main R file to use as the driver. Must be a
		// .R file.
		main_r_file_uri!: string
	})

	#spark_sql_application_config: close({
		// HCFS URIs of jar files to be added to the Spark CLASSPATH.
		jar_file_uris?: [...string]
		query_list?: matchN(1, [_#defs."/$defs/spark_sql_application_config/$defs/query_list", list.MaxItems(1) & [..._#defs."/$defs/spark_sql_application_config/$defs/query_list"]])

		// The HCFS URI of the script that contains SQL queries.
		query_file_uri?: string

		// Mapping of query variable names to values (equivalent to the
		// Spark SQL command: SET 'name="value";').
		script_variables?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/spark_sql_application_config/$defs/query_list": close({
		// The queries to run.
		queries!: [...string]
	})
}
