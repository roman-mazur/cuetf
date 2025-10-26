package res

import "list"

#google_data_loss_prevention_job_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_loss_prevention_job_trigger")
	close({
		// The creation timestamp of an inspectTemplate. Set by the
		// server.
		create_time?: string

		// A description of the job trigger.
		description?: string

		// User set display name of the job trigger.
		display_name?: string

		// The timestamp of the last time this trigger executed.
		last_run_time?: string
		id?:            string

		// The resource name of the job trigger. Set by the server.
		name?: string

		// The parent of the trigger, either in the format
		// 'projects/{{project}}'
		// or 'projects/{{project}}/locations/{{location}}'
		parent!: string
		inspect_job?: matchN(1, [#inspect_job, list.MaxItems(1) & [...#inspect_job]])
		timeouts?: #timeouts
		triggers?: matchN(1, [#triggers, [_, ...] & [...#triggers]])

		// Whether the trigger is currently active. Default value:
		// "HEALTHY" Possible values: ["PAUSED", "HEALTHY", "CANCELLED"]
		status?: string

		// The trigger id can contain uppercase and lowercase letters,
		// numbers, and hyphens;
		// that is, it must match the regular expression: [a-zA-Z\d-_]+.
		// The maximum length is 100 characters. Can be empty to allow the
		// system to generate one.
		trigger_id?: string

		// The last update timestamp of an inspectTemplate. Set by the
		// server.
		update_time?: string
	})

	#inspect_job: close({
		actions?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions", [..._#defs."/$defs/inspect_job/$defs/actions"]])
		inspect_config?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config"]])
		storage_config?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/storage_config"]])

		// The name of the template to run when this job is triggered.
		inspect_template_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#triggers: close({
		manual?: matchN(1, [_#defs."/$defs/triggers/$defs/manual", list.MaxItems(1) & [..._#defs."/$defs/triggers/$defs/manual"]])
		schedule?: matchN(1, [_#defs."/$defs/triggers/$defs/schedule", list.MaxItems(1) & [..._#defs."/$defs/triggers/$defs/schedule"]])
	})

	_#defs: "/$defs/inspect_job/$defs/actions": close({
		deidentify?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify"]])
		job_notification_emails?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/job_notification_emails", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/job_notification_emails"]])
		pub_sub?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/pub_sub", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/pub_sub"]])
		publish_findings_to_cloud_data_catalog?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/publish_findings_to_cloud_data_catalog", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/publish_findings_to_cloud_data_catalog"]])
		publish_findings_to_dataplex_catalog?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/publish_findings_to_dataplex_catalog", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/publish_findings_to_dataplex_catalog"]])
		publish_summary_to_cscc?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/publish_summary_to_cscc", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/publish_summary_to_cscc"]])
		publish_to_stackdriver?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/publish_to_stackdriver", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/publish_to_stackdriver"]])
		save_findings?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings"]])
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/deidentify": close({
		transformation_config?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_config", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_config"]])
		transformation_details_storage_config?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_details_storage_config", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_details_storage_config"]])

		// User settable Cloud Storage bucket and folders to store
		// de-identified files.
		//
		// This field must be set for cloud storage deidentification.
		//
		// The output Cloud Storage bucket must be different from the
		// input bucket.
		//
		// De-identified files will overwrite files in the output path.
		//
		// Form of: gs://bucket/folder/ or gs://bucket
		cloud_storage_output!: string

		// List of user-specified file type groups to transform. If
		// specified, only the files with these filetypes will be
		// transformed.
		//
		// If empty, all supported files will be transformed. Supported
		// types may be automatically added over time.
		//
		// If a file type is set in this field that isn't supported by the
		// Deidentify action then the job will fail and will not be
		// successfully created/started. Possible values: ["IMAGE",
		// "TEXT_FILE", "CSV", "TSV"]
		file_types_to_transform?: [...string]
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_config": close({
		// If this template is specified, it will serve as the default
		// de-identify template.
		deidentify_template?: string

		// If this template is specified, it will serve as the de-identify
		// template for images.
		image_redact_template?: string

		// If this template is specified, it will serve as the de-identify
		// template for structured content such as delimited files and
		// tables.
		structured_deidentify_template?: string
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_details_storage_config": close({
		table?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_details_storage_config/$defs/table", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_details_storage_config/$defs/table"]])
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/deidentify/$defs/transformation_details_storage_config/$defs/table": close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string

		// The ID of the table. The ID must contain only letters (a-z,
		// A-Z), numbers (0-9), or underscores (_). The maximum length
		// is 1,024 characters.
		table_id?: string
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/job_notification_emails": close({})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/pub_sub": close({
		// Cloud Pub/Sub topic to send notifications to.
		topic!: string
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/publish_findings_to_cloud_data_catalog": close({})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/publish_findings_to_dataplex_catalog": close({})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/publish_summary_to_cscc": close({})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/publish_to_stackdriver": close({})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/save_findings": close({
		output_config?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config"]])
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config": close({
		storage_path?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config/$defs/storage_path", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config/$defs/storage_path"]])
		table?: matchN(1, [_#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config/$defs/table", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config/$defs/table"]])

		// Schema used for writing the findings for Inspect jobs. This
		// field is only used for
		// Inspect and must be unspecified for Risk jobs. Columns are
		// derived from the Finding
		// object. If appending to an existing table, any columns from the
		// predefined schema
		// that are missing will be added. No columns in the existing
		// table will be deleted.
		//
		// If unspecified, then all available columns will be used for a
		// new table or an (existing)
		// table with no schema, and no changes will be made to an
		// existing table that has a schema.
		// Only for use with external storage. Possible values:
		// ["BASIC_COLUMNS", "GCS_COLUMNS", "DATASTORE_COLUMNS",
		// "BIG_QUERY_COLUMNS", "ALL_COLUMNS"]
		output_schema?: string
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config/$defs/storage_path": close({
		// A URL representing a file or path (no wildcards) in Cloud
		// Storage.
		// Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})

	_#defs: "/$defs/inspect_job/$defs/actions/$defs/save_findings/$defs/output_config/$defs/table": close({
		// Dataset ID of the table.
		dataset_id!: string

		// The Google Cloud Platform project ID of the project containing
		// the table.
		project_id!: string

		// Name of the table. If is not set a new one will be generated
		// for you with the following format:
		// 'dlp_googleapis_yyyy_mm_dd_[dlp_job_id]'. Pacific timezone will
		// be used for generating the date details.
		table_id?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config": close({
		// When true, excludes type information of the findings.
		exclude_info_types?: bool

		// When true, a contextual quote from the data that triggered a
		// finding is included in the response.
		include_quote?: bool

		// Only returns findings equal or above this threshold. See
		// https://cloud.google.com/dlp/docs/likelihood for more info
		// Default value: "POSSIBLE" Possible values: ["VERY_UNLIKELY",
		// "UNLIKELY", "POSSIBLE", "LIKELY", "VERY_LIKELY"]
		min_likelihood?: string
		custom_info_types?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types", [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types"]])
		info_types?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/info_types", [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/info_types"]])
		limits?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits"]])
		rule_set?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set", [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types": close({
		dictionary?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary"]])
		info_type?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/info_type", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/info_type"]])

		// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a
		// finding to be returned. It still can be used for rules
		// matching. Possible values: ["EXCLUSION_TYPE_EXCLUDE"]
		exclusion_type?: string

		// Likelihood to return for this CustomInfoType. This base value
		// can be altered by a detection rule if the finding meets the
		// criteria
		// specified by the rule. Default value: "VERY_LIKELY" Possible
		// values: ["VERY_UNLIKELY", "UNLIKELY", "POSSIBLE", "LIKELY",
		// "VERY_LIKELY"]
		likelihood?: string
		regex?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/regex", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/regex"]])
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/sensitivity_score"]])
		stored_type?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/stored_type", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/stored_type"]])
		surrogate_type?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/surrogate_type", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/surrogate_type"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary": close({
		cloud_storage_path?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/cloud_storage_path", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/cloud_storage_path"]])
		word_list?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/word_list", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/word_list"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/cloud_storage_path": close({
		// A url representing a file or path (no wildcards) in Cloud
		// Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one
		// phrase and every phrase must contain at least 2 characters that
		// are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names
		// listed at https://cloud.google.com/dlp/docs/infotypes-reference
		// when specifying a built-in type.
		name!: string

		// Version of the information type to use. By default, the version
		// is set to stable.
		version?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/regex": close({
		// The index of the submatch to extract as findings. When not
		// specified, the entire match is returned. No more than 3 may be
		// included.
		group_indexes?: [...number]

		// Pattern defining the regular expression.
		// Its syntax (https://github.com/google/re2/wiki/Syntax) can be
		// found under the google/re2 repository on GitHub.
		pattern!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/stored_type": close({
		// The creation timestamp of an inspectTemplate. Set by the
		// server.
		create_time?: string

		// Resource name of the requested StoredInfoType, for example
		// 'organizations/433245324/storedInfoTypes/432452342'
		// or 'projects/project-id/storedInfoTypes/432452342'.
		name!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/custom_info_types/$defs/surrogate_type": close({})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version of the information type to use. By default, the version
		// is set to stable
		version?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/limits": close({
		max_findings_per_info_type?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type", [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type"]])

		// Max number of findings that will be returned for each item
		// scanned. The maximum returned is 2000.
		max_findings_per_item?: number

		// Max number of findings that will be returned per request/job.
		// The maximum returned is 2000.
		max_findings_per_request?: number
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type": close({
		info_type?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type"]])

		// Max findings limit for the given infoType.
		max_findings?: number
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version of the information type to use. By default, the version
		// is set to stable
		version?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set": close({
		info_types?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/info_types", [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/info_types"]])
		rules?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules", [_, ...] & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version of the information type to use. By default, the version
		// is set to stable.
		version?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules": close({
		exclusion_rule?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule"]])
		hotword_rule?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule": close({
		dictionary?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary"]])
		exclude_by_hotword?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword"]])
		exclude_info_types?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types"]])
		regex?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/regex", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/regex"]])

		// How the rule is applied. See the documentation for more
		// information:
		// https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
		// Possible values: ["MATCHING_TYPE_FULL_MATCH",
		// "MATCHING_TYPE_PARTIAL_MATCH", "MATCHING_TYPE_INVERSE_MATCH"]
		matching_type!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary": close({
		cloud_storage_path?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/cloud_storage_path", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/cloud_storage_path"]])
		word_list?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/word_list", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/word_list"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/cloud_storage_path": close({
		// A url representing a file or path (no wildcards) in Cloud
		// Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one
		// phrase and every phrase must contain at least 2 characters that
		// are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword": close({
		hotword_regex?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/hotword_regex", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/hotword_regex"]])
		proximity?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/proximity", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/proximity"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/hotword_regex": close({
		// The index of the submatch to extract as findings. When not
		// specified,
		// the entire match is returned. No more than 3 may be included.
		group_indexes?: [...number]

		// Pattern defining the regular expression. Its syntax
		// (https://github.com/google/re2/wiki/Syntax) can be found under
		// the google/re2 repository on GitHub.
		pattern?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/proximity": close({
		// Number of characters after the finding to consider. Either this
		// or window_before must be specified
		window_after?: number

		// Number of characters before the finding to consider. Either
		// this or window_after must be specified
		window_before?: number
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types": close({
		info_types?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types", [_, ...] & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version of the information type to use. By default, the version
		// is set to stable.
		version?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/regex": close({
		// The index of the submatch to extract as findings. When not
		// specified, the entire match is returned. No more than 3 may be
		// included.
		group_indexes?: [...number]

		// Pattern defining the regular expression.
		// Its syntax (https://github.com/google/re2/wiki/Syntax) can be
		// found under the google/re2 repository on GitHub.
		pattern!: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule": close({
		hotword_regex?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/hotword_regex", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/hotword_regex"]])
		likelihood_adjustment?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/likelihood_adjustment", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/likelihood_adjustment"]])
		proximity?: matchN(1, [_#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/proximity", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/proximity"]])
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/hotword_regex": close({
		// The index of the submatch to extract as findings. When not
		// specified,
		// the entire match is returned. No more than 3 may be included.
		group_indexes?: [...number]

		// Pattern defining the regular expression. Its syntax
		// (https://github.com/google/re2/wiki/Syntax) can be found under
		// the google/re2 repository on GitHub.
		pattern?: string
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/likelihood_adjustment": close({
		// Set the likelihood of a finding to a fixed value. Either this
		// or relative_likelihood can be set. Possible values:
		// ["VERY_UNLIKELY", "UNLIKELY", "POSSIBLE", "LIKELY",
		// "VERY_LIKELY"]
		fixed_likelihood?: string

		// Increase or decrease the likelihood by the specified number of
		// levels. For example,
		// if a finding would be POSSIBLE without the detection rule and
		// relativeLikelihood is 1,
		// then it is upgraded to LIKELY, while a value of -1 would
		// downgrade it to UNLIKELY.
		// Likelihood may never drop below VERY_UNLIKELY or exceed
		// VERY_LIKELY, so applying an
		// adjustment of 1 followed by an adjustment of -1 when base
		// likelihood is VERY_LIKELY
		// will result in a final likelihood of LIKELY. Either this or
		// fixed_likelihood can be set.
		relative_likelihood?: number
	})

	_#defs: "/$defs/inspect_job/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/proximity": close({
		// Number of characters after the finding to consider. Either this
		// or window_before must be specified
		window_after?: number

		// Number of characters before the finding to consider. Either
		// this or window_after must be specified
		window_before?: number
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config": close({
		big_query_options?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options"]])
		cloud_storage_options?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options"]])
		datastore_options?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/datastore_options", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/datastore_options"]])
		hybrid_options?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options"]])
		timespan_config?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/timespan_config", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/timespan_config"]])
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/big_query_options": close({
		// Max number of rows to scan. If the table has more rows than
		// this value, the rest of the rows are omitted.
		// If not set, or if set to 0, all rows will be scanned. Only one
		// of rowsLimit and rowsLimitPercent can be
		// specified. Cannot be used in conjunction with TimespanConfig.
		rows_limit?: number

		// Max percentage of rows to scan. The rest are omitted. The
		// number of rows scanned is rounded down.
		// Must be between 0 and 100, inclusively. Both 0 and 100 means no
		// limit. Defaults to 0. Only one of
		// rowsLimit and rowsLimitPercent can be specified. Cannot be used
		// in conjunction with TimespanConfig.
		rows_limit_percent?: number

		// How to sample rows if not all rows are scanned. Meaningful only
		// when used in conjunction with either
		// rowsLimit or rowsLimitPercent. If not specified, rows are
		// scanned in the order BigQuery reads them.
		// If TimespanConfig is set, set this to an empty string to avoid
		// using the default value. Default value: "TOP" Possible values:
		// ["TOP", "RANDOM_START"]
		sample_method?: string
		excluded_fields?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/excluded_fields", [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/excluded_fields"]])
		identifying_fields?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/identifying_fields", [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/identifying_fields"]])
		included_fields?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/included_fields", [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/included_fields"]])
		table_reference?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/table_reference", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/table_reference"]])
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/excluded_fields": close({
		// Name describing the field excluded from scanning.
		name!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/identifying_fields": close({
		// Name of a BigQuery field to be returned with the findings.
		name!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/included_fields": close({
		// Name describing the field to which scanning is limited.
		name!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/big_query_options/$defs/table_reference": close({
		// The dataset ID of the table.
		dataset_id!: string

		// The Google Cloud Platform project ID of the project containing
		// the table.
		project_id!: string

		// The name of the table.
		table_id!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options": close({
		// Max number of bytes to scan from a file. If a scanned file's
		// size is bigger than this value
		// then the rest of the bytes are omitted.
		bytes_limit_per_file?: number

		// Max percentage of bytes to scan from a file. The rest are
		// omitted. The number of bytes scanned is rounded down.
		// Must be between 0 and 100, inclusively. Both 0 and 100 means no
		// limit.
		bytes_limit_per_file_percent?: number

		// List of file type groups to include in the scan. If empty, all
		// files are scanned and available data
		// format processors are applied. In addition, the binary content
		// of the selected files is always scanned as well.
		// Images are scanned only as binary if the specified region does
		// not support image inspection and no fileTypes were specified.
		// Possible values: ["BINARY_FILE", "TEXT_FILE", "IMAGE", "WORD",
		// "PDF", "AVRO", "CSV", "TSV", "POWERPOINT", "EXCEL"]
		file_types?: [...string]

		// Limits the number of files to scan to this percentage of the
		// input FileSet. Number of files scanned is rounded down.
		// Must be between 0 and 100, inclusively. Both 0 and 100 means no
		// limit.
		files_limit_percent?: number
		file_set?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options/$defs/file_set", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options/$defs/file_set"]])

		// How to sample bytes if not all bytes are scanned. Meaningful
		// only when used in conjunction with bytesLimitPerFile.
		// If not specified, scanning would start from the top. Possible
		// values: ["TOP", "RANDOM_START"]
		sample_method?: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options/$defs/file_set": close({
		regex_file_set?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options/$defs/file_set/$defs/regex_file_set", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options/$defs/file_set/$defs/regex_file_set"]])

		// The Cloud Storage url of the file(s) to scan, in the format
		// 'gs://<bucket>/<path>'. Trailing wildcard
		// in the path is allowed.
		//
		// If the url ends in a trailing slash, the bucket or directory
		// represented by the url will be scanned
		// non-recursively (content in sub-directories will not be
		// scanned). This means that 'gs://mybucket/' is
		// equivalent to 'gs://mybucket/*', and 'gs://mybucket/directory/'
		// is equivalent to 'gs://mybucket/directory/*'.
		url?: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/cloud_storage_options/$defs/file_set/$defs/regex_file_set": close({
		// The name of a Cloud Storage bucket.
		bucket_name!: string

		// A list of regular expressions matching file paths to exclude.
		// All files in the bucket that match at
		// least one of these regular expressions will be excluded from
		// the scan.
		exclude_regex?: [...string]

		// A list of regular expressions matching file paths to include.
		// All files in the bucket
		// that match at least one of these regular expressions will be
		// included in the set of files,
		// except for those that also match an item in excludeRegex.
		// Leaving this field empty will
		// match all files by default (this is equivalent to including .*
		// in the list)
		include_regex?: [...string]
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/datastore_options": close({
		kind?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/datastore_options/$defs/kind", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/datastore_options/$defs/kind"]])
		partition_id?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/datastore_options/$defs/partition_id", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/datastore_options/$defs/partition_id"]])
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/datastore_options/$defs/kind": close({
		// The name of the Datastore kind.
		name!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/datastore_options/$defs/partition_id": close({
		// If not empty, the ID of the namespace to which the entities
		// belong.
		namespace_id?: string

		// The ID of the project to which the entities belong.
		project_id!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options": close({
		// A short description of where the data is coming from. Will be
		// stored once in the job. 256 max length.
		description?: string
		table_options?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options/$defs/table_options", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options/$defs/table_options"]])

		// To organize findings, these labels will be added to each
		// finding.
		//
		// Label keys must be between 1 and 63 characters long and must
		// conform to the following regular expression:
		// '[a-z]([-a-z0-9]*[a-z0-9])?'.
		//
		// Label values must be between 0 and 63 characters long and must
		// conform to the regular expression
		// '([a-z]([-a-z0-9]*[a-z0-9])?)?'.
		//
		// No more than 10 labels can be associated with a given finding.
		//
		// Examples:
		// * '"environment" : "production"'
		// * '"pipeline" : "etl"'
		labels?: [string]: string

		// These are labels that each inspection request must include
		// within their 'finding_labels' map. Request
		// may contain others, but any missing one of these will be
		// rejected.
		//
		// Label keys must be between 1 and 63 characters long and must
		// conform to the following regular expression:
		// '[a-z]([-a-z0-9]*[a-z0-9])?'.
		//
		// No more than 10 keys can be required.
		required_finding_label_keys?: [...string]
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options/$defs/table_options": close({
		identifying_fields?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options/$defs/table_options/$defs/identifying_fields", [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options/$defs/table_options/$defs/identifying_fields"]])
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/hybrid_options/$defs/table_options/$defs/identifying_fields": close({
		// Name describing the field.
		name!: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/timespan_config": close({
		// When the job is started by a JobTrigger we will automatically
		// figure out a valid startTime to avoid
		// scanning files that have not been modified since the last time
		// the JobTrigger executed. This will
		// be based on the time of the execution of the last run of the
		// JobTrigger or the timespan endTime
		// used in the last run of the JobTrigger.
		enable_auto_population_of_timespan_config?: bool
		timestamp_field?: matchN(1, [_#defs."/$defs/inspect_job/$defs/storage_config/$defs/timespan_config/$defs/timestamp_field", list.MaxItems(1) & [..._#defs."/$defs/inspect_job/$defs/storage_config/$defs/timespan_config/$defs/timestamp_field"]])

		// Exclude files, tables, or rows newer than this value. If not
		// set, no upper time limit is applied.
		end_time?: string

		// Exclude files, tables, or rows older than this value. If not
		// set, no lower time limit is applied.
		start_time?: string
	})

	_#defs: "/$defs/inspect_job/$defs/storage_config/$defs/timespan_config/$defs/timestamp_field": close({
		// Specification of the field containing the timestamp of scanned
		// items. Used for data sources like Datastore and BigQuery.
		//
		// For BigQuery: Required to filter out rows based on the given
		// start and end times. If not specified and the table was
		// modified between the given start and end times, the entire
		// table will be scanned. The valid data types of the timestamp
		// field are: INTEGER, DATE, TIMESTAMP, or DATETIME BigQuery
		// column.
		//
		// For Datastore. Valid data types of the timestamp field are:
		// TIMESTAMP. Datastore entity will be scanned if the
		// timestamp property does not exist or its value is empty or
		// invalid.
		name!: string
	})

	_#defs: "/$defs/triggers/$defs/manual": close({})

	_#defs: "/$defs/triggers/$defs/schedule": close({
		// With this option a job is started a regular periodic basis. For
		// example: every day (86400 seconds).
		//
		// A scheduled start time will be skipped if the previous
		// execution has not ended when its scheduled time occurs.
		//
		// This value must be set to a time duration greater than or equal
		// to 1 day and can be no longer than 60 days.
		//
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		recurrence_period_duration?: string
	})
}
