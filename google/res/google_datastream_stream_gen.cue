package res

import "list"

#google_datastream_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_datastream_stream")
	close({
		// Create the stream without validating it.
		create_without_validation?: bool

		// A reference to a KMS encryption key. If provided, it will be
		// used to encrypt the data. If left blank, data
		// will be encrypted using an internal Stream-specific encryption
		// key provisioned through KMS.
		customer_managed_encryption_key?: string

		// Desired state of the Stream. Set this field to 'RUNNING' to
		// start the stream,
		// 'NOT_STARTED' to create the stream without starting and
		// 'PAUSED' to pause
		// the stream from a 'RUNNING' state.
		// Possible values: NOT_STARTED, RUNNING, PAUSED. Default:
		// NOT_STARTED
		desired_state?: string

		// Display name.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the location this stream is located in.
		location!: string

		// The stream's name.
		name?: string
		backfill_all?: matchN(1, [#backfill_all, list.MaxItems(1) & [...#backfill_all]])
		backfill_none?: matchN(1, [#backfill_none, list.MaxItems(1) & [...#backfill_none]])
		destination_config?: matchN(1, [#destination_config, list.MaxItems(1) & [_, ...] & [...#destination_config]])
		source_config?: matchN(1, [#source_config, list.MaxItems(1) & [_, ...] & [...#source_config]])
		timeouts?: #timeouts

		// The state of the stream.
		state?:   string
		project?: string

		// The stream identifier.
		stream_id!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#backfill_all: close({
		mysql_excluded_objects?: matchN(1, [_#defs."/$defs/backfill_all/$defs/mysql_excluded_objects", list.MaxItems(1) & [..._#defs."/$defs/backfill_all/$defs/mysql_excluded_objects"]])
		oracle_excluded_objects?: matchN(1, [_#defs."/$defs/backfill_all/$defs/oracle_excluded_objects", list.MaxItems(1) & [..._#defs."/$defs/backfill_all/$defs/oracle_excluded_objects"]])
		postgresql_excluded_objects?: matchN(1, [_#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects", list.MaxItems(1) & [..._#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects"]])
		salesforce_excluded_objects?: matchN(1, [_#defs."/$defs/backfill_all/$defs/salesforce_excluded_objects", list.MaxItems(1) & [..._#defs."/$defs/backfill_all/$defs/salesforce_excluded_objects"]])
		sql_server_excluded_objects?: matchN(1, [_#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects", list.MaxItems(1) & [..._#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects"]])
	})

	#backfill_none: close({})

	#destination_config: close({
		bigquery_destination_config?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config"]])
		gcs_destination_config?: matchN(1, [_#defs."/$defs/destination_config/$defs/gcs_destination_config", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/gcs_destination_config"]])

		// Destination connection profile resource. Format:
		// projects/{project}/locations/{location}/connectionProfiles/{name}
		destination_connection_profile!: string
	})

	#source_config: close({
		mysql_source_config?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/mysql_source_config"]])
		oracle_source_config?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/oracle_source_config"]])
		postgresql_source_config?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/postgresql_source_config"]])
		salesforce_source_config?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/salesforce_source_config"]])
		sql_server_source_config?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/sql_server_source_config"]])

		// Source connection profile resource. Format:
		// projects/{project}/locations/{location}/connectionProfiles/{name}
		source_connection_profile!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/backfill_all/$defs/mysql_excluded_objects": close({
		mysql_databases?: matchN(1, [_#defs."/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases", [_, ...] & [..._#defs."/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases"]])
	})

	_#defs: "/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases": close({
		mysql_tables?: matchN(1, [_#defs."/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases/$defs/mysql_tables", [..._#defs."/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases/$defs/mysql_tables"]])

		// Database name.
		database!: string
	})

	_#defs: "/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases/$defs/mysql_tables": close({
		mysql_columns?: matchN(1, [_#defs."/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns", [..._#defs."/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/backfill_all/$defs/mysql_excluded_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns": close({
		// Column collation.
		collation?: string

		// Column name.
		column?: string

		// The MySQL data type. Full data types list can be found here:
		// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool
	})

	_#defs: "/$defs/backfill_all/$defs/oracle_excluded_objects": close({
		oracle_schemas?: matchN(1, [_#defs."/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas", [_, ...] & [..._#defs."/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas"]])
	})

	_#defs: "/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas": close({
		oracle_tables?: matchN(1, [_#defs."/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas/$defs/oracle_tables", [..._#defs."/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas/$defs/oracle_tables"]])

		// Schema name.
		schema!: string
	})

	_#defs: "/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas/$defs/oracle_tables": close({
		oracle_columns?: matchN(1, [_#defs."/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns", [..._#defs."/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/backfill_all/$defs/oracle_excluded_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns": close({
		// Column name.
		column?: string

		// The Oracle data type. Full data types list can be found here:
		// https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html
		data_type?: string

		// Column encoding.
		encoding?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/backfill_all/$defs/postgresql_excluded_objects": close({
		postgresql_schemas?: matchN(1, [_#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas", [_, ...] & [..._#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas"]])
	})

	_#defs: "/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas": close({
		postgresql_tables?: matchN(1, [_#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas/$defs/postgresql_tables", [..._#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas/$defs/postgresql_tables"]])

		// Database name.
		schema!: string
	})

	_#defs: "/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas/$defs/postgresql_tables": close({
		postgresql_columns?: matchN(1, [_#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns", [..._#defs."/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/backfill_all/$defs/postgresql_excluded_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns": close({
		// Column name.
		column?: string

		// The PostgreSQL data type. Full data types list can be found
		// here:
		// https://www.postgresql.org/docs/current/datatype.html
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/backfill_all/$defs/salesforce_excluded_objects": close({
		objects?: matchN(1, [_#defs."/$defs/backfill_all/$defs/salesforce_excluded_objects/$defs/objects", [_, ...] & [..._#defs."/$defs/backfill_all/$defs/salesforce_excluded_objects/$defs/objects"]])
	})

	_#defs: "/$defs/backfill_all/$defs/salesforce_excluded_objects/$defs/objects": close({
		fields?: matchN(1, [_#defs."/$defs/backfill_all/$defs/salesforce_excluded_objects/$defs/objects/$defs/fields", [..._#defs."/$defs/backfill_all/$defs/salesforce_excluded_objects/$defs/objects/$defs/fields"]])

		// Name of object in Salesforce Org.
		object_name?: string
	})

	_#defs: "/$defs/backfill_all/$defs/salesforce_excluded_objects/$defs/objects/$defs/fields": close({
		// Field name.
		name?: string
	})

	_#defs: "/$defs/backfill_all/$defs/sql_server_excluded_objects": close({
		schemas?: matchN(1, [_#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas", [_, ...] & [..._#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas"]])
	})

	_#defs: "/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas": close({
		tables?: matchN(1, [_#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas/$defs/tables", [..._#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas/$defs/tables"]])

		// Schema name.
		schema!: string
	})

	_#defs: "/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas/$defs/tables": close({
		columns?: matchN(1, [_#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas/$defs/tables/$defs/columns", [..._#defs."/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas/$defs/tables/$defs/columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/backfill_all/$defs/sql_server_excluded_objects/$defs/schemas/$defs/tables/$defs/columns": close({
		// Column name.
		column?: string

		// The SQL Server data type. Full data types list can be found
		// here:
		// https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config": close({
		append_only?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/append_only", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/append_only"]])
		blmt_config?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/blmt_config", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/blmt_config"]])
		merge?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/merge", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/merge"]])
		single_target_dataset?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/single_target_dataset", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/single_target_dataset"]])
		source_hierarchy_datasets?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/source_hierarchy_datasets", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/source_hierarchy_datasets"]])

		// The guaranteed data freshness (in seconds) when querying tables
		// created by the stream.
		// Editing this field will only affect new tables created in the
		// future, but existing tables
		// will not be impacted. Lower values mean that queries will
		// return fresher data, but may result in higher cost.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s". Defaults to 900s.
		data_freshness?: string
	})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config/$defs/append_only": close({})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config/$defs/blmt_config": close({
		// The Cloud Storage bucket name.
		bucket!: string

		// The bigquery connection. Format: '{project}.{location}.{name}'
		connection_name!: string

		// The file format.
		file_format!: string

		// The root path inside the Cloud Storage bucket.
		root_path?: string

		// The table format.
		table_format!: string
	})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config/$defs/merge": close({})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config/$defs/single_target_dataset": close({
		// Dataset ID in the format
		// projects/{project}/datasets/{dataset_id} or
		// {project}:{dataset_id}
		dataset_id!: string
	})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config/$defs/source_hierarchy_datasets": close({
		dataset_template?: matchN(1, [_#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/source_hierarchy_datasets/$defs/dataset_template", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_config/$defs/bigquery_destination_config/$defs/source_hierarchy_datasets/$defs/dataset_template"]])

		// Optional. The project id of the BigQuery dataset. If not
		// specified, the project will be inferred from the stream
		// resource.
		project_id?: string
	})

	_#defs: "/$defs/destination_config/$defs/bigquery_destination_config/$defs/source_hierarchy_datasets/$defs/dataset_template": close({
		// If supplied, every created dataset will have its name prefixed
		// by the provided value.
		// The prefix and name will be separated by an underscore. i.e. _.
		dataset_id_prefix?: string

		// Describes the Cloud KMS encryption key that will be used to
		// protect destination BigQuery
		// table. The BigQuery Service Account associated with your
		// project requires access to this
		// encryption key. i.e.
		// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}.
		// See
		// https://cloud.google.com/bigquery/docs/customer-managed-encryption
		// for more information.
		kms_key_name?: string

		// The geographic location where the dataset should reside.
		// See https://cloud.google.com/bigquery/docs/locations for
		// supported locations.
		location!: string
	})

	_#defs: "/$defs/destination_config/$defs/gcs_destination_config": close({
		// The maximum duration for which new events are added before a
		// file is closed and a new file is created.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s". Defaults to 900s.
		file_rotation_interval?: string

		// The maximum file size to be saved in the bucket.
		file_rotation_mb?: number
		avro_file_format?: matchN(1, [_#defs."/$defs/destination_config/$defs/gcs_destination_config/$defs/avro_file_format", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/gcs_destination_config/$defs/avro_file_format"]])

		// Path inside the Cloud Storage bucket to write data to.
		path?: string
		json_file_format?: matchN(1, [_#defs."/$defs/destination_config/$defs/gcs_destination_config/$defs/json_file_format", list.MaxItems(1) & [..._#defs."/$defs/destination_config/$defs/gcs_destination_config/$defs/json_file_format"]])
	})

	_#defs: "/$defs/destination_config/$defs/gcs_destination_config/$defs/avro_file_format": close({})

	_#defs: "/$defs/destination_config/$defs/gcs_destination_config/$defs/json_file_format": close({
		// Compression of the loaded JSON file. Possible values:
		// ["NO_COMPRESSION", "GZIP"]
		compression?: string

		// The schema file format along JSON data files. Possible values:
		// ["NO_SCHEMA_FILE", "AVRO_SCHEMA_FILE"]
		schema_file_format?: string
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config": close({
		// Maximum number of concurrent backfill tasks. The number should
		// be non negative.
		// If not set (or set to 0), the system's default value will be
		// used.
		max_concurrent_backfill_tasks?: number
		binary_log_position?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/binary_log_position", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/binary_log_position"]])
		exclude_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects"]])
		gtid?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/gtid", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/gtid"]])
		include_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects"]])

		// Maximum number of concurrent CDC tasks. The number should be
		// non negative.
		// If not set (or set to 0), the system's default value will be
		// used.
		max_concurrent_cdc_tasks?: number
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/binary_log_position": close({})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects": close({
		mysql_databases?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases", [_, ...] & [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases"]])
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases": close({
		mysql_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases/$defs/mysql_tables", [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases/$defs/mysql_tables"]])

		// Database name.
		database!: string
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases/$defs/mysql_tables": close({
		mysql_columns?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns", [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/exclude_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns": close({
		// Column collation.
		collation?: string

		// Column name.
		column?: string

		// The MySQL data type. Full data types list can be found here:
		// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/gtid": close({})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/include_objects": close({
		mysql_databases?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases", [_, ...] & [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases"]])
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases": close({
		mysql_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases/$defs/mysql_tables", [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases/$defs/mysql_tables"]])

		// Database name.
		database!: string
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases/$defs/mysql_tables": close({
		mysql_columns?: matchN(1, [_#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns", [..._#defs."/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/mysql_source_config/$defs/include_objects/$defs/mysql_databases/$defs/mysql_tables/$defs/mysql_columns": close({
		// Column collation.
		collation?: string

		// Column name.
		column?: string

		// The MySQL data type. Full data types list can be found here:
		// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config": close({
		// Maximum number of concurrent backfill tasks. The number should
		// be non negative.
		// If not set (or set to 0), the system's default value will be
		// used.
		max_concurrent_backfill_tasks?: number
		drop_large_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/drop_large_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/drop_large_objects"]])
		exclude_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects"]])
		include_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects"]])
		stream_large_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/stream_large_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/stream_large_objects"]])

		// Maximum number of concurrent CDC tasks. The number should be
		// non negative.
		// If not set (or set to 0), the system's default value will be
		// used.
		max_concurrent_cdc_tasks?: number
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/drop_large_objects": close({})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects": close({
		oracle_schemas?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas", [_, ...] & [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas"]])
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas": close({
		oracle_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas/$defs/oracle_tables", [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas/$defs/oracle_tables"]])

		// Schema name.
		schema!: string
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas/$defs/oracle_tables": close({
		oracle_columns?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns", [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/exclude_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns": close({
		// Column name.
		column?: string

		// The Oracle data type. Full data types list can be found here:
		// https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html
		data_type?: string

		// Column encoding.
		encoding?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/include_objects": close({
		oracle_schemas?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas", [_, ...] & [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas"]])
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas": close({
		oracle_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas/$defs/oracle_tables", [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas/$defs/oracle_tables"]])

		// Schema name.
		schema!: string
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas/$defs/oracle_tables": close({
		oracle_columns?: matchN(1, [_#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns", [..._#defs."/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/include_objects/$defs/oracle_schemas/$defs/oracle_tables/$defs/oracle_columns": close({
		// Column name.
		column?: string

		// The Oracle data type. Full data types list can be found here:
		// https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html
		data_type?: string

		// Column encoding.
		encoding?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/source_config/$defs/oracle_source_config/$defs/stream_large_objects": close({})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config": close({
		// Maximum number of concurrent backfill tasks. The number should
		// be non
		// negative. If not set (or set to 0), the system's default value
		// will be used.
		max_concurrent_backfill_tasks?: number

		// The name of the publication that includes the set of all tables
		// that are defined in the stream's include_objects.
		publication!: string
		exclude_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects"]])

		// The name of the logical replication slot that's configured with
		// the pgoutput plugin.
		replication_slot!: string
		include_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects"]])
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects": close({
		postgresql_schemas?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas", [_, ...] & [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas"]])
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas": close({
		postgresql_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas/$defs/postgresql_tables", [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas/$defs/postgresql_tables"]])

		// Database name.
		schema!: string
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas/$defs/postgresql_tables": close({
		postgresql_columns?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns", [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/exclude_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns": close({
		// Column name.
		column?: string

		// The PostgreSQL data type. Full data types list can be found
		// here:
		// https://www.postgresql.org/docs/current/datatype.html
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects": close({
		postgresql_schemas?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas", [_, ...] & [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas"]])
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas": close({
		postgresql_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas/$defs/postgresql_tables", [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas/$defs/postgresql_tables"]])

		// Database name.
		schema!: string
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas/$defs/postgresql_tables": close({
		postgresql_columns?: matchN(1, [_#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns", [..._#defs."/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/postgresql_source_config/$defs/include_objects/$defs/postgresql_schemas/$defs/postgresql_tables/$defs/postgresql_columns": close({
		// Column name.
		column?: string

		// The PostgreSQL data type. Full data types list can be found
		// here:
		// https://www.postgresql.org/docs/current/datatype.html
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config": close({
		exclude_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects"]])
		include_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects"]])

		// Salesforce objects polling interval. The interval at which new
		// changes will be polled for each object. The duration must be
		// between 5 minutes and 24 hours.
		polling_interval!: string
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects": close({
		objects?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects/$defs/objects", [_, ...] & [..._#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects/$defs/objects"]])
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects/$defs/objects": close({
		fields?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects/$defs/objects/$defs/fields", [..._#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects/$defs/objects/$defs/fields"]])

		// Name of object in Salesforce Org.
		object_name?: string
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config/$defs/exclude_objects/$defs/objects/$defs/fields": close({
		// Field name.
		name?: string
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects": close({
		objects?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects/$defs/objects", [_, ...] & [..._#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects/$defs/objects"]])
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects/$defs/objects": close({
		fields?: matchN(1, [_#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects/$defs/objects/$defs/fields", [..._#defs."/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects/$defs/objects/$defs/fields"]])

		// Name of object in Salesforce Org.
		object_name?: string
	})

	_#defs: "/$defs/source_config/$defs/salesforce_source_config/$defs/include_objects/$defs/objects/$defs/fields": close({
		// Field name.
		name?: string
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config": close({
		// Max concurrent backfill tasks.
		max_concurrent_backfill_tasks?: number
		change_tables?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/change_tables", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/change_tables"]])
		exclude_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects"]])
		include_objects?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects"]])
		transaction_logs?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/transaction_logs", list.MaxItems(1) & [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/transaction_logs"]])

		// Max concurrent CDC tasks.
		max_concurrent_cdc_tasks?: number
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/change_tables": close({})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects": close({
		schemas?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas", [_, ...] & [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas"]])
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas": close({
		tables?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas/$defs/tables", [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas/$defs/tables"]])

		// Schema name.
		schema!: string
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas/$defs/tables": close({
		columns?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas/$defs/tables/$defs/columns", [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas/$defs/tables/$defs/columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/exclude_objects/$defs/schemas/$defs/tables/$defs/columns": close({
		// Column name.
		column?: string

		// The SQL Server data type. Full data types list can be found
		// here:
		// https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects": close({
		schemas?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas", [_, ...] & [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas"]])
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas": close({
		tables?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas/$defs/tables", [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas/$defs/tables"]])

		// Schema name.
		schema!: string
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas/$defs/tables": close({
		columns?: matchN(1, [_#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas/$defs/tables/$defs/columns", [..._#defs."/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas/$defs/tables/$defs/columns"]])

		// Table name.
		table!: string
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/include_objects/$defs/schemas/$defs/tables/$defs/columns": close({
		// Column name.
		column?: string

		// The SQL Server data type. Full data types list can be found
		// here:
		// https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
		data_type?: string

		// Column length.
		length?: number

		// Whether or not the column can accept a null value.
		nullable?: bool

		// The ordinal position of the column in the table.
		ordinal_position?: number

		// Column precision.
		precision?: number

		// Whether or not the column represents a primary key.
		primary_key?: bool

		// Column scale.
		scale?: number
	})

	_#defs: "/$defs/source_config/$defs/sql_server_source_config/$defs/transaction_logs": close({})
}
