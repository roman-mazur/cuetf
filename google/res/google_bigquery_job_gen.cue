package res

import "list"

#google_bigquery_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_job")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the job. The ID must contain only letters (a-z, A-Z),
		// numbers (0-9), underscores (_), or dashes (-). The maximum
		// length is 1,024 characters.
		job_id!: string
		id?:     string

		// Job timeout in milliseconds. If this time limit is exceeded,
		// BigQuery may attempt to terminate the job.
		job_timeout_ms?: string

		// The type of the job.
		job_type?: string

		// The labels associated with this job. You can use these to
		// organize and group your jobs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The geographic location of the job. The default value is US.
		location?: string
		copy?: matchN(1, [#copy, list.MaxItems(1) & [...#copy]])
		extract?: matchN(1, [#extract, list.MaxItems(1) & [...#extract]])
		load?: matchN(1, [#load, list.MaxItems(1) & [...#load]])
		project?: string
		query?: matchN(1, [#query, list.MaxItems(1) & [...#query]])

		// The status of this job. Examine this value when polling an
		// asynchronous job to see if the job is complete.
		status?: [...close({
			error_result?: [...close({
				location?: string
				message?:  string
				reason?:   string
			})]
			errors?: [...close({
				location?: string
				message?:  string
				reason?:   string
			})]
			state?: string
		})]
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Email address of the user who ran the job.
		user_email?: string
	})

	#copy: close({
		destination_encryption_configuration?: matchN(1, [_#defs."/$defs/copy/$defs/destination_encryption_configuration", list.MaxItems(1) & [..._#defs."/$defs/copy/$defs/destination_encryption_configuration"]])
		destination_table?: matchN(1, [_#defs."/$defs/copy/$defs/destination_table", list.MaxItems(1) & [..._#defs."/$defs/copy/$defs/destination_table"]])
		source_tables?: matchN(1, [_#defs."/$defs/copy/$defs/source_tables", [_, ...] & [..._#defs."/$defs/copy/$defs/source_tables"]])

		// Specifies whether the job is allowed to create new tables. The
		// following values are supported:
		// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates
		// the table.
		// CREATE_NEVER: The table must already exist. If it does not, a
		// 'notFound' error is returned in the job result.
		// Creation, truncation and append actions occur as one atomic
		// update upon job completion Default value: "CREATE_IF_NEEDED"
		// Possible values: ["CREATE_IF_NEEDED", "CREATE_NEVER"]
		create_disposition?: string

		// Specifies the action that occurs if the destination table
		// already exists. The following values are supported:
		// WRITE_TRUNCATE: If the table already exists, BigQuery
		// overwrites the table data and uses the schema from the query
		// result.
		// WRITE_APPEND: If the table already exists, BigQuery appends the
		// data to the table.
		// WRITE_EMPTY: If the table already exists and contains data, a
		// 'duplicate' error is returned in the job result.
		// Each action is atomic and only occurs if BigQuery is able to
		// complete the job successfully.
		// Creation, truncation and append actions occur as one atomic
		// update upon job completion. Default value: "WRITE_EMPTY"
		// Possible values: ["WRITE_TRUNCATE", "WRITE_APPEND",
		// "WRITE_EMPTY"]
		write_disposition?: string
	})

	#extract: close({
		// The compression type to use for exported files. Possible values
		// include GZIP, DEFLATE, SNAPPY, and NONE.
		// The default value is NONE. DEFLATE and SNAPPY are only
		// supported for Avro.
		compression?: string

		// The exported file format. Possible values include CSV,
		// NEWLINE_DELIMITED_JSON and AVRO for tables and SAVED_MODEL for
		// models.
		// The default value for tables is CSV. Tables with nested or
		// repeated fields cannot be exported as CSV.
		// The default value for models is SAVED_MODEL.
		destination_format?: string

		// A list of fully-qualified Google Cloud Storage URIs where the
		// extracted table should be written.
		destination_uris!: [...string]
		source_model?: matchN(1, [_#defs."/$defs/extract/$defs/source_model", list.MaxItems(1) & [..._#defs."/$defs/extract/$defs/source_model"]])

		// When extracting data in CSV format, this defines the delimiter
		// to use between fields in the exported data.
		// Default is ','
		field_delimiter?: string
		source_table?: matchN(1, [_#defs."/$defs/extract/$defs/source_table", list.MaxItems(1) & [..._#defs."/$defs/extract/$defs/source_table"]])

		// Whether to print out a header row in the results. Default is
		// true.
		print_header?: bool

		// Whether to use logical types when extracting to AVRO format.
		use_avro_logical_types?: bool
	})

	#load: close({
		// Accept rows that are missing trailing optional columns. The
		// missing values are treated as nulls.
		// If false, records with missing trailing columns are treated as
		// bad records, and if there are too many bad records,
		// an invalid error is returned in the job result. The default
		// value is false. Only applicable to CSV, ignored for other
		// formats.
		allow_jagged_rows?: bool

		// Indicates if BigQuery should allow quoted data sections that
		// contain newline characters in a CSV file.
		// The default value is false.
		allow_quoted_newlines?: bool

		// Indicates if we should automatically infer the options and
		// schema for CSV and JSON sources.
		autodetect?: bool

		// Specifies whether the job is allowed to create new tables. The
		// following values are supported:
		// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates
		// the table.
		// CREATE_NEVER: The table must already exist. If it does not, a
		// 'notFound' error is returned in the job result.
		// Creation, truncation and append actions occur as one atomic
		// update upon job completion Default value: "CREATE_IF_NEEDED"
		// Possible values: ["CREATE_IF_NEEDED", "CREATE_NEVER"]
		create_disposition?: string

		// The character encoding of the data. The supported values are
		// UTF-8 or ISO-8859-1.
		// The default value is UTF-8. BigQuery decodes the data after the
		// raw, binary data
		// has been split using the values of the quote and fieldDelimiter
		// properties.
		encoding?: string

		// The separator for fields in a CSV file. The separator can be
		// any ISO-8859-1 single-byte character.
		// To use a character in the range 128-255, you must encode the
		// character as UTF8. BigQuery converts
		// the string to ISO-8859-1 encoding, and then uses the first byte
		// of the encoded string to split the
		// data in its raw, binary state. BigQuery also supports the
		// escape sequence "\t" to specify a tab separator.
		// The default value is a comma (',').
		field_delimiter?: string

		// Indicates if BigQuery should allow extra values that are not
		// represented in the table schema.
		// If true, the extra values are ignored. If false, records with
		// extra columns are treated as bad records,
		// and if there are too many bad records, an invalid error is
		// returned in the job result.
		// The default value is false. The sourceFormat property
		// determines what BigQuery treats as an extra value:
		// CSV: Trailing columns
		// JSON: Named values that don't match any column names
		ignore_unknown_values?: bool

		// If sourceFormat is set to newline-delimited JSON, indicates
		// whether it should be processed as a JSON variant such as
		// GeoJSON.
		// For a sourceFormat other than JSON, omit this field. If the
		// sourceFormat is newline-delimited JSON: - for
		// newline-delimited
		// GeoJSON: set to GEOJSON.
		json_extension?: string

		// The maximum number of bad records that BigQuery can ignore when
		// running the job. If the number of bad records exceeds this
		// value,
		// an invalid error is returned in the job result. The default
		// value is 0, which requires that all records are valid.
		max_bad_records?: number

		// Specifies a string that represents a null value in a CSV file.
		// For example, if you specify "\N", BigQuery interprets "\N" as
		// a null value
		// when loading a CSV file. The default value is the empty string.
		// If you set this property to a custom value, BigQuery throws an
		// error if an
		// empty string is present for all data types except for STRING
		// and BYTE. For STRING and BYTE columns, BigQuery interprets the
		// empty string as
		// an empty value.
		null_marker?: string

		// If sourceFormat is set to "DATASTORE_BACKUP", indicates which
		// entity properties to load into BigQuery from a Cloud Datastore
		// backup.
		// Property names are case sensitive and must be top-level
		// properties. If no properties are specified, BigQuery loads all
		// properties.
		// If any named property isn't found in the Cloud Datastore
		// backup, an invalid error is returned in the job result.
		projection_fields?: [...string]
		destination_encryption_configuration?: matchN(1, [_#defs."/$defs/load/$defs/destination_encryption_configuration", list.MaxItems(1) & [..._#defs."/$defs/load/$defs/destination_encryption_configuration"]])
		destination_table?: matchN(1, [_#defs."/$defs/load/$defs/destination_table", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/load/$defs/destination_table"]])
		parquet_options?: matchN(1, [_#defs."/$defs/load/$defs/parquet_options", list.MaxItems(1) & [..._#defs."/$defs/load/$defs/parquet_options"]])
		time_partitioning?: matchN(1, [_#defs."/$defs/load/$defs/time_partitioning", list.MaxItems(1) & [..._#defs."/$defs/load/$defs/time_partitioning"]])

		// The value that is used to quote data sections in a CSV file.
		// BigQuery converts the string to ISO-8859-1 encoding,
		// and then uses the first byte of the encoded string to split the
		// data in its raw, binary state.
		// The default value is a double-quote ('"'). If your data does
		// not contain quoted sections, set the property value to an
		// empty string.
		// If your data contains quoted newline characters, you must also
		// set the allowQuotedNewlines property to true.
		quote?: string

		// Allows the schema of the destination table to be updated as a
		// side effect of the load job if a schema is autodetected or
		// supplied in the job configuration. Schema update options are
		// supported in two cases: when writeDisposition is WRITE_APPEND;
		// when writeDisposition is WRITE_TRUNCATE and the destination
		// table is a partition of a table, specified by partition
		// decorators.
		// For normal tables, WRITE_TRUNCATE will always overwrite the
		// schema. One or more of the following values are specified:
		// ALLOW_FIELD_ADDITION: allow adding a nullable field to the
		// schema.
		// ALLOW_FIELD_RELAXATION: allow relaxing a required field in the
		// original schema to nullable.
		schema_update_options?: [...string]

		// The number of rows at the top of a CSV file that BigQuery will
		// skip when loading the data.
		// The default value is 0. This property is useful if you have
		// header rows in the file that should be skipped.
		// When autodetect is on, the behavior is the following:
		// skipLeadingRows unspecified - Autodetect tries to detect
		// headers in the first row. If they are not detected,
		// the row is read as data. Otherwise data is read starting from
		// the second row.
		// skipLeadingRows is 0 - Instructs autodetect that there are no
		// headers and data should be read starting from the first row.
		// skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries
		// to detect headers in row N. If headers are not detected,
		// row N is just skipped. Otherwise row N is used to extract
		// column names for the detected schema.
		skip_leading_rows?: number

		// The format of the data files. For CSV files, specify "CSV". For
		// datastore backups, specify "DATASTORE_BACKUP".
		// For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON".
		// For Avro, specify "AVRO". For parquet, specify "PARQUET".
		// For orc, specify "ORC". [Beta] For Bigtable, specify
		// "BIGTABLE".
		// The default value is CSV.
		source_format?: string

		// The fully-qualified URIs that point to your data in Google
		// Cloud.
		// For Google Cloud Storage URIs: Each URI can contain one '\*'
		// wildcard character
		// and it must come after the 'bucket' name. Size limits related
		// to load jobs apply
		// to external data sources. For Google Cloud Bigtable URIs:
		// Exactly one URI can be
		// specified and it has be a fully specified and valid HTTPS URL
		// for a Google Cloud Bigtable table.
		// For Google Cloud Datastore backups: Exactly one URI can be
		// specified. Also, the '\*' wildcard character is not allowed.
		source_uris!: [...string]

		// Specifies the action that occurs if the destination table
		// already exists. The following values are supported:
		// WRITE_TRUNCATE: If the table already exists, BigQuery
		// overwrites the table data and uses the schema from the query
		// result.
		// WRITE_APPEND: If the table already exists, BigQuery appends the
		// data to the table.
		// WRITE_EMPTY: If the table already exists and contains data, a
		// 'duplicate' error is returned in the job result.
		// Each action is atomic and only occurs if BigQuery is able to
		// complete the job successfully.
		// Creation, truncation and append actions occur as one atomic
		// update upon job completion. Default value: "WRITE_EMPTY"
		// Possible values: ["WRITE_TRUNCATE", "WRITE_APPEND",
		// "WRITE_EMPTY"]
		write_disposition?: string
	})

	#query: close({
		// If true and query uses legacy SQL dialect, allows the query to
		// produce arbitrarily large result tables at a slight cost in
		// performance.
		// Requires destinationTable to be set. For standard SQL queries,
		// this flag is ignored and large results are always allowed.
		// However, you must still set destinationTable when result size
		// exceeds the allowed maximum response size.
		allow_large_results?: bool

		// Specifies whether the job is allowed to create new tables. The
		// following values are supported:
		// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates
		// the table.
		// CREATE_NEVER: The table must already exist. If it does not, a
		// 'notFound' error is returned in the job result.
		// Creation, truncation and append actions occur as one atomic
		// update upon job completion Default value: "CREATE_IF_NEEDED"
		// Possible values: ["CREATE_IF_NEEDED", "CREATE_NEVER"]
		create_disposition?: string

		// If true and query uses legacy SQL dialect, flattens all nested
		// and repeated fields in the query results.
		// allowLargeResults must be true if this is set to false. For
		// standard SQL queries, this flag is ignored and results are
		// never flattened.
		flatten_results?: bool

		// Limits the billing tier for this job. Queries that have
		// resource usage beyond this tier will fail (without incurring a
		// charge).
		// If unspecified, this will be set to your project default.
		maximum_billing_tier?: number

		// Limits the bytes billed for this job. Queries that will have
		// bytes billed beyond this limit will fail (without incurring a
		// charge).
		// If unspecified, this will be set to your project default.
		maximum_bytes_billed?: string

		// Standard SQL only. Set to POSITIONAL to use positional (?)
		// query parameters or to NAMED to use named (@myparam) query
		// parameters in this query.
		parameter_mode?: string

		// Specifies a priority for the query. Default value:
		// "INTERACTIVE" Possible values: ["INTERACTIVE", "BATCH"]
		priority?: string

		// SQL query text to execute. The useLegacySql field can be used
		// to indicate whether the query uses legacy SQL or standard SQL.
		// *NOTE*: queries containing [DML
		// language](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language)
		// ('DELETE', 'UPDATE', 'MERGE', 'INSERT') must specify
		// 'create_disposition = ""' and 'write_disposition = ""'.
		query!: string

		// Allows the schema of the destination table to be updated as a
		// side effect of the query job.
		// Schema update options are supported in two cases: when
		// writeDisposition is WRITE_APPEND;
		// when writeDisposition is WRITE_TRUNCATE and the destination
		// table is a partition of a table,
		// specified by partition decorators. For normal tables,
		// WRITE_TRUNCATE will always overwrite the schema.
		// One or more of the following values are specified:
		// ALLOW_FIELD_ADDITION: allow adding a nullable field to the
		// schema.
		// ALLOW_FIELD_RELAXATION: allow relaxing a required field in the
		// original schema to nullable.
		schema_update_options?: [...string]
		connection_properties?: matchN(1, [_#defs."/$defs/query/$defs/connection_properties", [..._#defs."/$defs/query/$defs/connection_properties"]])
		default_dataset?: matchN(1, [_#defs."/$defs/query/$defs/default_dataset", list.MaxItems(1) & [..._#defs."/$defs/query/$defs/default_dataset"]])
		destination_encryption_configuration?: matchN(1, [_#defs."/$defs/query/$defs/destination_encryption_configuration", list.MaxItems(1) & [..._#defs."/$defs/query/$defs/destination_encryption_configuration"]])
		destination_table?: matchN(1, [_#defs."/$defs/query/$defs/destination_table", list.MaxItems(1) & [..._#defs."/$defs/query/$defs/destination_table"]])
		script_options?: matchN(1, [_#defs."/$defs/query/$defs/script_options", list.MaxItems(1) & [..._#defs."/$defs/query/$defs/script_options"]])
		user_defined_function_resources?: matchN(1, [_#defs."/$defs/query/$defs/user_defined_function_resources", [..._#defs."/$defs/query/$defs/user_defined_function_resources"]])

		// Specifies whether to use BigQuery's legacy SQL dialect for this
		// query. The default value is true.
		// If set to false, the query will use BigQuery's standard SQL.
		use_legacy_sql?: bool

		// Whether to look for the result in the query cache. The query
		// cache is a best-effort cache that will be flushed whenever
		// tables in the query are modified. Moreover, the query cache is
		// only available when a query does not have a destination table
		// specified.
		// The default value is true.
		use_query_cache?: bool

		// Specifies the action that occurs if the destination table
		// already exists. The following values are supported:
		// WRITE_TRUNCATE: If the table already exists, BigQuery
		// overwrites the table data and uses the schema from the query
		// result.
		// WRITE_APPEND: If the table already exists, BigQuery appends the
		// data to the table.
		// WRITE_EMPTY: If the table already exists and contains data, a
		// 'duplicate' error is returned in the job result.
		// Each action is atomic and only occurs if BigQuery is able to
		// complete the job successfully.
		// Creation, truncation and append actions occur as one atomic
		// update upon job completion. Default value: "WRITE_EMPTY"
		// Possible values: ["WRITE_TRUNCATE", "WRITE_APPEND",
		// "WRITE_EMPTY"]
		write_disposition?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/copy/$defs/destination_encryption_configuration": close({
		// Describes the Cloud KMS encryption key that will be used to
		// protect destination BigQuery table.
		// The BigQuery Service Account associated with your project
		// requires access to this encryption key.
		kms_key_name!: string

		// Describes the Cloud KMS encryption key version used to protect
		// destination BigQuery table.
		kms_key_version?: string
	})

	_#defs: "/$defs/copy/$defs/destination_table": close({
		// The ID of the dataset containing this table.
		dataset_id?: string

		// The ID of the project containing this table.
		project_id?: string

		// The table. Can be specified '{{table_id}}' if 'project_id' and
		// 'dataset_id' are also set,
		// or of the form
		// 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}'
		// if not.
		table_id!: string
	})

	_#defs: "/$defs/copy/$defs/source_tables": close({
		// The ID of the dataset containing this table.
		dataset_id?: string

		// The ID of the project containing this table.
		project_id?: string

		// The table. Can be specified '{{table_id}}' if 'project_id' and
		// 'dataset_id' are also set,
		// or of the form
		// 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}'
		// if not.
		table_id!: string
	})

	_#defs: "/$defs/extract/$defs/source_model": close({
		// The ID of the dataset containing this model.
		dataset_id!: string

		// The ID of the model.
		model_id!: string

		// The ID of the project containing this model.
		project_id!: string
	})

	_#defs: "/$defs/extract/$defs/source_table": close({
		// The ID of the dataset containing this table.
		dataset_id?: string

		// The ID of the project containing this table.
		project_id?: string

		// The table. Can be specified '{{table_id}}' if 'project_id' and
		// 'dataset_id' are also set,
		// or of the form
		// 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}'
		// if not.
		table_id!: string
	})

	_#defs: "/$defs/load/$defs/destination_encryption_configuration": close({
		// Describes the Cloud KMS encryption key that will be used to
		// protect destination BigQuery table.
		// The BigQuery Service Account associated with your project
		// requires access to this encryption key.
		kms_key_name!: string

		// Describes the Cloud KMS encryption key version used to protect
		// destination BigQuery table.
		kms_key_version?: string
	})

	_#defs: "/$defs/load/$defs/destination_table": close({
		// The ID of the dataset containing this table.
		dataset_id?: string

		// The ID of the project containing this table.
		project_id?: string

		// The table. Can be specified '{{table_id}}' if 'project_id' and
		// 'dataset_id' are also set,
		// or of the form
		// 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}'
		// if not.
		table_id!: string
	})

	_#defs: "/$defs/load/$defs/parquet_options": close({
		// If sourceFormat is set to PARQUET, indicates whether to use
		// schema inference specifically for Parquet LIST logical type.
		enable_list_inference?: bool

		// If sourceFormat is set to PARQUET, indicates whether to infer
		// Parquet ENUM logical type as STRING instead of BYTES by
		// default.
		enum_as_string?: bool
	})

	_#defs: "/$defs/load/$defs/time_partitioning": close({
		// Number of milliseconds for which to keep the storage for a
		// partition. A wrapper is used here because 0 is an invalid
		// value.
		expiration_ms?: string

		// If not set, the table is partitioned by pseudo column
		// '_PARTITIONTIME'; if set, the table is partitioned by this
		// field.
		// The field must be a top-level TIMESTAMP or DATE field. Its mode
		// must be NULLABLE or REQUIRED.
		// A wrapper is used here because an empty string is an invalid
		// value.
		field?: string

		// The only type supported is DAY, which will generate one
		// partition per day. Providing an empty string used to cause an
		// error,
		// but in OnePlatform the field will be treated as unset.
		type!: string
	})

	_#defs: "/$defs/query/$defs/connection_properties": close({
		// The key of the property to set. Currently supported connection
		// properties:
		// * 'dataset_project_id': represents the default project for
		// datasets that are used in the query
		// * 'time_zone': represents the default timezone used to run the
		// query
		// * 'session_id': associates the query with a given session
		// * 'query_label': associates the query with a given job label
		// * 'service_account': indicates the service account to use to
		// run a continuous query
		key!: string

		// The value of the property to set.
		value!: string
	})

	_#defs: "/$defs/query/$defs/default_dataset": close({
		// The dataset. Can be specified '{{dataset_id}}' if 'project_id'
		// is also set,
		// or of the form 'projects/{{project}}/datasets/{{dataset_id}}'
		// if not.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id?: string
	})

	_#defs: "/$defs/query/$defs/destination_encryption_configuration": close({
		// Describes the Cloud KMS encryption key that will be used to
		// protect destination BigQuery table.
		// The BigQuery Service Account associated with your project
		// requires access to this encryption key.
		kms_key_name!: string

		// Describes the Cloud KMS encryption key version used to protect
		// destination BigQuery table.
		kms_key_version?: string
	})

	_#defs: "/$defs/query/$defs/destination_table": close({
		// The ID of the dataset containing this table.
		dataset_id?: string

		// The ID of the project containing this table.
		project_id?: string

		// The table. Can be specified '{{table_id}}' if 'project_id' and
		// 'dataset_id' are also set,
		// or of the form
		// 'projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}'
		// if not.
		table_id!: string
	})

	_#defs: "/$defs/query/$defs/script_options": close({
		// Determines which statement in the script represents the "key
		// result",
		// used to populate the schema and query results of the script
		// job. Possible values: ["LAST", "FIRST_SELECT"]
		key_result_statement?: string

		// Limit on the number of bytes billed per statement. Exceeding
		// this budget results in an error.
		statement_byte_budget?: string

		// Timeout period for each statement in a script.
		statement_timeout_ms?: string
	})

	_#defs: "/$defs/query/$defs/user_defined_function_resources": close({
		// An inline resource that contains code for a user-defined
		// function (UDF).
		// Providing a inline code resource is equivalent to providing a
		// URI for a file containing the same code.
		inline_code?: string

		// A code resource to load from a Google Cloud Storage URI
		// (gs://bucket/path).
		resource_uri?: string
	})
}
