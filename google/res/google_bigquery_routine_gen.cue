package res

import "list"

#google_bigquery_routine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_routine")
	close({
		// The time when this routine was created, in milliseconds since
		// the
		// epoch.
		creation_time?: number

		// If set to DATA_MASKING, the function is validated and made
		// available as a masking function. For more information, see
		// https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
		// Possible values: ["DATA_MASKING"]
		data_governance_type?: string

		// The ID of the dataset containing this routine
		dataset_id!: string

		// The body of the routine. For functions, this is the expression
		// in the AS clause.
		// If language=SQL, it is the substring inside (but excluding) the
		// parentheses.
		definition_body!: string

		// The description of the routine if defined.
		description?: string

		// The determinism level of the JavaScript UDF if defined.
		// Possible values: ["DETERMINISM_LEVEL_UNSPECIFIED",
		// "DETERMINISTIC", "NOT_DETERMINISTIC"]
		determinism_level?: string

		// Optional. If language = "JAVASCRIPT", this field stores the
		// path of the
		// imported JAVASCRIPT libraries.
		imported_libraries?: [...string]

		// The language of the routine. Possible values: ["SQL",
		// "JAVASCRIPT", "PYTHON", "JAVA", "SCALA"]
		language?: string
		id?:       string

		// The time when this routine was modified, in milliseconds since
		// the
		// epoch.
		last_modified_time?: number
		arguments?: matchN(1, [#arguments, [...#arguments]])
		remote_function_options?: matchN(1, [#remote_function_options, list.MaxItems(1) & [...#remote_function_options]])

		// Optional. Can be set only if routineType =
		// "TABLE_VALUED_FUNCTION".
		//
		// If absent, the return table type is inferred from
		// definitionBody at query time in each query
		// that references this routine. If present, then the columns in
		// the evaluated table result will
		// be cast to match the column types specificed in return table
		// type, at query time.
		return_table_type?: string
		spark_options?: matchN(1, [#spark_options, list.MaxItems(1) & [...#spark_options]])
		project?: string

		// A JSON schema for the return type. Optional if language =
		// "SQL"; required otherwise.
		// If absent, the return type is inferred from definitionBody at
		// query time in each query
		// that references this routine. If present, then the evaluated
		// result will be cast to
		// the specified returned type at query time. ~>**NOTE**: Because
		// this field expects a JSON
		// string, any changes to the string will create a diff, even if
		// the JSON itself hasn't
		// changed. If the API returns a different value for the same
		// schema, e.g. it switche
		// d the order of values or replaced STRUCT field type with RECORD
		// field type, we currently
		// cannot suppress the recurring diff this causes. As a
		// workaround, we recommend using
		// the schema as returned by the API.
		return_type?: string

		// The ID of the the routine. The ID must contain only letters
		// (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
		// length is 256 characters.
		routine_id!: string
		timeouts?:   #timeouts

		// The type of routine. Possible values: ["SCALAR_FUNCTION",
		// "PROCEDURE", "TABLE_VALUED_FUNCTION"]
		routine_type!: string

		// Optional. The security mode of the routine, if defined. If not
		// defined, the security mode is automatically determined from
		// the routine's configuration. Possible values: ["DEFINER",
		// "INVOKER"]
		security_mode?: string
	})

	#arguments: close({
		// Defaults to FIXED_TYPE. Default value: "FIXED_TYPE" Possible
		// values: ["FIXED_TYPE", "ANY_TYPE"]
		argument_kind?: string

		// A JSON schema for the data type. Required unless argumentKind =
		// ANY_TYPE.
		// ~>**NOTE**: Because this field expects a JSON string, any
		// changes to the string
		// will create a diff, even if the JSON itself hasn't changed. If
		// the API returns
		// a different value for the same schema, e.g. it switched the
		// order of values
		// or replaced STRUCT field type with RECORD field type, we
		// currently cannot
		// suppress the recurring diff this causes. As a workaround, we
		// recommend using
		// the schema as returned by the API.
		data_type?: string

		// Specifies whether the argument is input or output. Can be set
		// for procedures only. Possible values: ["IN", "OUT", "INOUT"]
		mode?: string

		// The name of this argument. Can be absent for function return
		// argument.
		name?: string
	})

	#remote_function_options: close({
		// Fully qualified name of the user-provided connection object
		// which holds
		// the authentication information to send requests to the remote
		// service.
		// Format:
		// "projects/{projectId}/locations/{locationId}/connections/{connectionId}"
		connection?: string

		// Endpoint of the user-provided remote service, e.g.
		// 'https://us-east1-my_gcf_project.cloudfunctions.net/remote_add'
		endpoint?: string

		// Max number of rows in each batch sent to the remote service. If
		// absent or if 0,
		// BigQuery dynamically decides the number of rows in a batch.
		max_batching_rows?: string

		// User-defined context as a set of key/value pairs, which will be
		// sent as function
		// invocation context together with batched arguments in the
		// requests to the remote
		// service. The total number of bytes of keys and values must be
		// less than 8KB.
		//
		// An object containing a list of "key": value pairs. Example:
		// '{ "name": "wrench", "mass": "1.3kg", "count": "3" }'.
		user_defined_context?: [string]: string
	})

	#spark_options: close({
		// Archive files to be extracted into the working directory of
		// each executor. For more information about Apache Spark, see
		// Apache Spark.
		archive_uris?: [...string]

		// Fully qualified name of the user-provided Spark connection
		// object.
		// Format:
		// "projects/{projectId}/locations/{locationId}/connections/{connectionId}"
		connection?: string

		// Custom container image for the runtime environment.
		container_image?: string

		// Files to be placed in the working directory of each executor.
		// For more information about Apache Spark, see Apache Spark.
		file_uris?: [...string]

		// JARs to include on the driver and executor CLASSPATH. For more
		// information about Apache Spark, see Apache Spark.
		jar_uris?: [...string]

		// The fully qualified name of a class in jarUris, for example,
		// com.example.wordcount.
		// Exactly one of mainClass and main_jar_uri field should be set
		// for Java/Scala language type.
		main_class?: string

		// The main file/jar URI of the Spark application.
		// Exactly one of the definitionBody field and the mainFileUri
		// field must be set for Python.
		// Exactly one of mainClass and mainFileUri field should be set
		// for Java/Scala language type.
		main_file_uri?: string

		// Configuration properties as a set of key/value pairs, which
		// will be passed on to the Spark application.
		// For more information, see Apache Spark and the procedure option
		// list.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		properties?: [string]: string

		// Python files to be placed on the PYTHONPATH for PySpark
		// application. Supported file types: .py, .egg, and .zip. For
		// more information about Apache Spark, see Apache Spark.
		py_file_uris?: [...string]

		// Runtime version. If not specified, the default runtime version
		// is used.
		runtime_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
