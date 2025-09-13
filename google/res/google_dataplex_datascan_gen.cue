package res

import "list"

#google_dataplex_datascan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataplex_datascan")
	close({
		// The time when the scan was created.
		create_time?: string
		data?: matchN(1, [#data, list.MaxItems(1) & [_, ...] & [...#data]])

		// DataScan identifier. Must contain only lowercase letters,
		// numbers and hyphens. Must start with a letter. Must end with a
		// number or a letter.
		data_scan_id!: string

		// Description of the scan.
		description?: string

		// User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Status of the data scan execution.
		execution_status?: [...close({
			latest_job_end_time?:   string
			latest_job_start_time?: string
		})]
		id?: string

		// User-defined labels for the scan. A list of key->value pairs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the data scan should reside.
		location!: string

		// The relative resource name of the scan, of the form:
		// projects/{project}/locations/{locationId}/dataScans/{datascan_id},
		// where project refers to a project_id or project_number and
		// locationId refers to a GCP region.
		name?: string
		data_discovery_spec?: matchN(1, [#data_discovery_spec, list.MaxItems(1) & [...#data_discovery_spec]])
		data_profile_spec?: matchN(1, [#data_profile_spec, list.MaxItems(1) & [...#data_profile_spec]])
		data_quality_spec?: matchN(1, [#data_quality_spec, list.MaxItems(1) & [...#data_quality_spec]])
		execution_spec?: matchN(1, [#execution_spec, list.MaxItems(1) & [_, ...] & [...#execution_spec]])
		timeouts?: #timeouts
		project?:  string

		// Current state of the DataScan.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of DataScan.
		type?: string

		// System generated globally unique ID for the scan. This ID will
		// be different if the scan is deleted and re-created with the
		// same name.
		uid?: string

		// The time when the scan was last updated.
		update_time?: string
	})

	#data: close({
		// The Dataplex entity that represents the data source(e.g.
		// BigQuery table) for Datascan.
		entity?: string

		// The service-qualified full resource name of the cloud resource
		// for a DataScan job to scan against. The field could be:
		// Cloud Storage bucket
		// (//storage.googleapis.com/projects/PROJECT_ID/buckets/BUCKET_ID)
		// for DataDiscoveryScan OR BigQuery table of type "TABLE"
		// (/bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID)
		// for DataProfileScan/DataQualityScan.
		resource?: string
	})

	#data_discovery_spec: close({
		bigquery_publishing_config?: matchN(1, [_#defs."/$defs/data_discovery_spec/$defs/bigquery_publishing_config", list.MaxItems(1) & [..._#defs."/$defs/data_discovery_spec/$defs/bigquery_publishing_config"]])
		storage_config?: matchN(1, [_#defs."/$defs/data_discovery_spec/$defs/storage_config", list.MaxItems(1) & [..._#defs."/$defs/data_discovery_spec/$defs/storage_config"]])
	})

	#data_profile_spec: close({
		exclude_fields?: matchN(1, [_#defs."/$defs/data_profile_spec/$defs/exclude_fields", list.MaxItems(1) & [..._#defs."/$defs/data_profile_spec/$defs/exclude_fields"]])
		include_fields?: matchN(1, [_#defs."/$defs/data_profile_spec/$defs/include_fields", list.MaxItems(1) & [..._#defs."/$defs/data_profile_spec/$defs/include_fields"]])
		post_scan_actions?: matchN(1, [_#defs."/$defs/data_profile_spec/$defs/post_scan_actions", list.MaxItems(1) & [..._#defs."/$defs/data_profile_spec/$defs/post_scan_actions"]])

		// A filter applied to all rows in a single DataScan job. The
		// filter needs to be a valid SQL expression for a WHERE clause
		// in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 <
		// 10
		row_filter?: string

		// The percentage of the records to be selected from the dataset
		// for DataScan.
		// Value can range between 0.0 and 100.0 with up to 3 significant
		// decimal digits.
		// Sampling is not applied if 'sampling_percent' is not specified,
		// 0 or 100.
		sampling_percent?: number
	})

	#data_quality_spec: close({
		// If set, the latest DataScan job result will be published to
		// Dataplex Catalog.
		catalog_publishing_enabled?: bool

		// A filter applied to all rows in a single DataScan job. The
		// filter needs to be a valid SQL expression for a WHERE clause
		// in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 <
		// 10
		row_filter?: string
		post_scan_actions?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions"]])

		// The percentage of the records to be selected from the dataset
		// for DataScan.
		// Value can range between 0.0 and 100.0 with up to 3 significant
		// decimal digits.
		// Sampling is not applied if 'sampling_percent' is not specified,
		// 0 or 100.
		sampling_percent?: number
		rules?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules", [..._#defs."/$defs/data_quality_spec/$defs/rules"]])
	})

	#execution_spec: close({
		trigger?: matchN(1, [_#defs."/$defs/execution_spec/$defs/trigger", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/execution_spec/$defs/trigger"]])

		// The unnested field (of type Date or Timestamp) that contains
		// values which monotonically increase over time. If not
		// specified, a data scan will run for all data in the table.
		field?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/data_discovery_spec/$defs/bigquery_publishing_config": close({
		// The BigQuery connection used to create BigLake tables. Must be
		// in the form
		// 'projects/{projectId}/locations/{locationId}/connections/{connection_id}'.
		connection?: string

		// The location of the BigQuery dataset to publish BigLake
		// external or non-BigLake external tables to.
		location?: string

		// The project of the BigQuery dataset to publish BigLake external
		// or non-BigLake external tables to. If not specified, the
		// project of the Cloud Storage bucket will be used. The format
		// is "projects/{project_id_or_number}".
		project?: string

		// Determines whether to publish discovered tables as BigLake
		// external tables or non-BigLake external tables. Possible
		// values: ["TABLE_TYPE_UNSPECIFIED", "EXTERNAL", "BIGLAKE"]
		table_type?: string
	})

	_#defs: "/$defs/data_discovery_spec/$defs/storage_config": close({
		csv_options?: matchN(1, [_#defs."/$defs/data_discovery_spec/$defs/storage_config/$defs/csv_options", list.MaxItems(1) & [..._#defs."/$defs/data_discovery_spec/$defs/storage_config/$defs/csv_options"]])
		json_options?: matchN(1, [_#defs."/$defs/data_discovery_spec/$defs/storage_config/$defs/json_options", list.MaxItems(1) & [..._#defs."/$defs/data_discovery_spec/$defs/storage_config/$defs/json_options"]])

		// Defines the data to exclude during discovery. Provide a list of
		// patterns that identify the data to exclude. For Cloud Storage
		// bucket assets, these patterns are interpreted as glob patterns
		// used to match object names. For BigQuery dataset assets, these
		// patterns are interpreted as patterns to match table names.
		exclude_patterns?: [...string]

		// Defines the data to include during discovery when only a subset
		// of the data should be considered. Provide a list of patterns
		// that identify the data to include. For Cloud Storage bucket
		// assets, these patterns are interpreted as glob patterns used
		// to match object names. For BigQuery dataset assets, these
		// patterns are interpreted as patterns to match table names.
		include_patterns?: [...string]
	})

	_#defs: "/$defs/data_discovery_spec/$defs/storage_config/$defs/csv_options": close({
		// The delimiter that is used to separate values. The default is
		// ',' (comma).
		delimiter?: string

		// The character encoding of the data. The default is UTF-8.
		encoding?: string

		// The number of rows to interpret as header rows that should be
		// skipped when reading data rows.
		header_rows?: number

		// The character used to quote column values. Accepts '"' (double
		// quotation mark) or ''' (single quotation mark). If
		// unspecified, defaults to '"' (double quotation mark).
		quote?: string

		// Whether to disable the inference of data types for CSV data. If
		// true, all columns are registered as strings.
		type_inference_disabled?: bool
	})

	_#defs: "/$defs/data_discovery_spec/$defs/storage_config/$defs/json_options": close({
		// The character encoding of the data. The default is UTF-8.
		encoding?: string

		// Whether to disable the inference of data types for JSON data.
		// If true, all columns are registered as their primitive types
		// (strings, number, or boolean).
		type_inference_disabled?: bool
	})

	_#defs: "/$defs/data_profile_spec/$defs/exclude_fields": close({
		// Expected input is a list of fully qualified names of fields as
		// in the schema.
		// Only top-level field names for nested fields are supported.
		// For instance, if 'x' is of nested field type, listing 'x' is
		// supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are
		// nested fields of 'x'.
		field_names?: [...string]
	})

	_#defs: "/$defs/data_profile_spec/$defs/include_fields": close({
		// Expected input is a list of fully qualified names of fields as
		// in the schema.
		// Only top-level field names for nested fields are supported.
		// For instance, if 'x' is of nested field type, listing 'x' is
		// supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are
		// nested fields of 'x'.
		field_names?: [...string]
	})

	_#defs: "/$defs/data_profile_spec/$defs/post_scan_actions": close({
		bigquery_export?: matchN(1, [_#defs."/$defs/data_profile_spec/$defs/post_scan_actions/$defs/bigquery_export", list.MaxItems(1) & [..._#defs."/$defs/data_profile_spec/$defs/post_scan_actions/$defs/bigquery_export"]])
	})

	_#defs: "/$defs/data_profile_spec/$defs/post_scan_actions/$defs/bigquery_export": close({
		// The BigQuery table to export DataProfileScan results to.
		// Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
		results_table?: string
	})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions": close({
		bigquery_export?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/bigquery_export", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/bigquery_export"]])
		notification_report?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report"]])
	})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions/$defs/bigquery_export": close({
		// The BigQuery table to export DataQualityScan results to.
		// Format://bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
		results_table?: string
	})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report": close({
		job_end_trigger?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/job_end_trigger", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/job_end_trigger"]])
		job_failure_trigger?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/job_failure_trigger", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/job_failure_trigger"]])
		recipients?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/recipients", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/recipients"]])
		score_threshold_trigger?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/score_threshold_trigger", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/score_threshold_trigger"]])
	})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/job_end_trigger": close({})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/job_failure_trigger": close({})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/recipients": close({
		// The email recipients who will receive the DataQualityScan
		// results report.
		emails?: [...string]
	})

	_#defs: "/$defs/data_quality_spec/$defs/post_scan_actions/$defs/notification_report/$defs/score_threshold_trigger": close({
		// The score range is in [0,100].
		score_threshold?: number
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules": close({
		// The unnested column which this rule is evaluated against.
		column?: string

		// Description of the rule.
		// The maximum length is 1,024 characters.
		description?: string

		// The dimension name a rule belongs to. Custom dimension name is
		// supported with all uppercase letters and maximum length of 30
		// characters.
		dimension!: string

		// Rows with null values will automatically fail a rule, unless
		// ignoreNull is true. In that case, such null rows are trivially
		// considered passing. Only applicable to ColumnMap rules.
		ignore_null?: bool

		// A mutable name for the rule.
		// The name must contain only letters (a-z, A-Z), numbers (0-9),
		// or hyphens (-).
		// The maximum length is 63 characters.
		// Must start with a letter.
		// Must end with a number or a letter.
		name?: string
		non_null_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/non_null_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/non_null_expectation"]])
		range_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/range_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/range_expectation"]])
		regex_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/regex_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/regex_expectation"]])
		row_condition_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/row_condition_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/row_condition_expectation"]])
		set_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/set_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/set_expectation"]])
		sql_assertion?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/sql_assertion", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/sql_assertion"]])
		statistic_range_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/statistic_range_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/statistic_range_expectation"]])
		table_condition_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/table_condition_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/table_condition_expectation"]])
		uniqueness_expectation?: matchN(1, [_#defs."/$defs/data_quality_spec/$defs/rules/$defs/uniqueness_expectation", list.MaxItems(1) & [..._#defs."/$defs/data_quality_spec/$defs/rules/$defs/uniqueness_expectation"]])

		// Whether the Rule is active or suspended. Default = false.
		suspended?: bool

		// The minimum ratio of passing_rows / total_rows required to pass
		// this rule, with a range of [0.0, 1.0]. 0 indicates default
		// value (i.e. 1.0).
		threshold?: number
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/non_null_expectation": close({})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/range_expectation": close({
		// The maximum column value allowed for a row to pass this
		// validation. At least one of minValue and maxValue need to be
		// provided.
		max_value?: string

		// The minimum column value allowed for a row to pass this
		// validation. At least one of minValue and maxValue need to be
		// provided.
		min_value?: string

		// Whether each value needs to be strictly lesser than ('<') the
		// maximum, or if equality is allowed.
		// Only relevant if a maxValue has been defined. Default = false.
		strict_max_enabled?: bool

		// Whether each value needs to be strictly greater than ('>') the
		// minimum, or if equality is allowed.
		// Only relevant if a minValue has been defined. Default = false.
		strict_min_enabled?: bool
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/regex_expectation": close({
		// A regular expression the column value is expected to match.
		regex!: string
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/row_condition_expectation": close({
		// The SQL expression.
		sql_expression!: string
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/set_expectation": close({
		// Expected values for the column value.
		values!: [...string]
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/sql_assertion": close({
		// The SQL statement.
		sql_statement!: string
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/statistic_range_expectation": close({
		// The maximum column statistic value allowed for a row to pass
		// this validation.
		// At least one of minValue and maxValue need to be provided.
		max_value?: string

		// The minimum column statistic value allowed for a row to pass
		// this validation.
		// At least one of minValue and maxValue need to be provided.
		min_value?: string

		// column statistics. Possible values: ["STATISTIC_UNDEFINED",
		// "MEAN", "MIN", "MAX"]
		statistic!: string

		// Whether column statistic needs to be strictly lesser than ('<')
		// the maximum, or if equality is allowed.
		// Only relevant if a maxValue has been defined. Default = false.
		strict_max_enabled?: bool

		// Whether column statistic needs to be strictly greater than
		// ('>') the minimum, or if equality is allowed.
		// Only relevant if a minValue has been defined. Default = false.
		strict_min_enabled?: bool
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/table_condition_expectation": close({
		// The SQL expression.
		sql_expression!: string
	})

	_#defs: "/$defs/data_quality_spec/$defs/rules/$defs/uniqueness_expectation": close({})

	_#defs: "/$defs/execution_spec/$defs/trigger": close({
		on_demand?: matchN(1, [_#defs."/$defs/execution_spec/$defs/trigger/$defs/on_demand", list.MaxItems(1) & [..._#defs."/$defs/execution_spec/$defs/trigger/$defs/on_demand"]])
		schedule?: matchN(1, [_#defs."/$defs/execution_spec/$defs/trigger/$defs/schedule", list.MaxItems(1) & [..._#defs."/$defs/execution_spec/$defs/trigger/$defs/schedule"]])
	})

	_#defs: "/$defs/execution_spec/$defs/trigger/$defs/on_demand": close({})

	_#defs: "/$defs/execution_spec/$defs/trigger/$defs/schedule": close({
		// Cron schedule for running scans periodically. This field is
		// required for Schedule scans.
		cron!: string
	})
}
