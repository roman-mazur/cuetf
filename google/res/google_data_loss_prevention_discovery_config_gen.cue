package res

import "list"

#google_data_loss_prevention_discovery_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_loss_prevention_discovery_config")
	close({
		// Output only. The creation timestamp of a DiscoveryConfig.
		create_time?: string

		// Display Name (max 1000 Chars)
		display_name?: string

		// Output only. A stream of errors encountered when the config was
		// activated. Repeated errors may result in the config
		// automatically being paused. Output only field. Will return the
		// last 100 errors. Whenever the config is modified this list
		// will be cleared.
		errors?: [...close({
			details?: [...close({
				code?: number
				details?: [...{
					[string]: string
				}]
				message?: string
			})]
			timestamp?: string
		})]

		// Detection logic for profile generation
		inspect_templates?: [...string]
		id?: string

		// Output only. The timestamp of the last time this config was
		// executed
		last_run_time?: string

		// Location to create the discovery config in.
		location!: string

		// Unique resource name for the DiscoveryConfig, assigned by the
		// service when the DiscoveryConfig is created.
		name?: string
		actions?: matchN(1, [#actions, [...#actions]])
		org_config?: matchN(1, [#org_config, list.MaxItems(1) & [...#org_config]])

		// The parent of the discovery config in any of the following
		// formats:
		//
		// * 'projects/{{project}}/locations/{{location}}'
		// * 'organizations/{{organization_id}}/locations/{{location}}'
		parent!: string
		targets?: matchN(1, [#targets, [...#targets]])
		timeouts?: #timeouts

		// Required. A status for this configuration Possible values:
		// ["RUNNING", "PAUSED"]
		status?: string

		// Output only. The last update timestamp of a DiscoveryConfig.
		update_time?: string
	})

	#actions: close({
		export_data?: matchN(1, [_#defs."/$defs/actions/$defs/export_data", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/export_data"]])
		pub_sub_notification?: matchN(1, [_#defs."/$defs/actions/$defs/pub_sub_notification", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/pub_sub_notification"]])
		tag_resources?: matchN(1, [_#defs."/$defs/actions/$defs/tag_resources", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/tag_resources"]])
	})

	#org_config: close({
		location?: matchN(1, [_#defs."/$defs/org_config/$defs/location", list.MaxItems(1) & [..._#defs."/$defs/org_config/$defs/location"]])

		// The project that will run the scan. The DLP service account
		// that exists within this project must have access to all
		// resources that are profiled, and the cloud DLP API must be
		// enabled.
		project_id?: string
	})

	#targets: close({
		big_query_target?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target"]])
		cloud_sql_target?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target"]])
		cloud_storage_target?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target"]])
		secrets_target?: matchN(1, [_#defs."/$defs/targets/$defs/secrets_target", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/secrets_target"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/actions/$defs/export_data": close({
		profile_table?: matchN(1, [_#defs."/$defs/actions/$defs/export_data/$defs/profile_table", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/export_data/$defs/profile_table"]])
	})

	_#defs: "/$defs/actions/$defs/export_data/$defs/profile_table": close({
		// Dataset Id of the table
		dataset_id?: string

		// The Google Cloud Platform project ID of the project containing
		// the table. If omitted, the project ID is inferred from the API
		// call.
		project_id?: string

		// Name of the table
		table_id?: string
	})

	_#defs: "/$defs/actions/$defs/pub_sub_notification": close({
		// How much data to include in the pub/sub message. Possible
		// values: ["TABLE_PROFILE", "RESOURCE_NAME"]
		detail_of_message?: string
		pubsub_condition?: matchN(1, [_#defs."/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition"]])

		// The type of event that triggers a Pub/Sub. At most one
		// PubSubNotification per EventType is permitted. Possible
		// values: ["NEW_PROFILE", "CHANGED_PROFILE", "SCORE_INCREASED",
		// "ERROR_CHANGED"]
		event?: string

		// Cloud Pub/Sub topic to send notifications to. Format is
		// projects/{project}/topics/{topic}.
		topic?: string
	})

	_#defs: "/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition": close({
		expressions?: matchN(1, [_#defs."/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition/$defs/expressions", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition/$defs/expressions"]])
	})

	_#defs: "/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition/$defs/expressions": close({
		conditions?: matchN(1, [_#defs."/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition/$defs/expressions/$defs/conditions", [..._#defs."/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition/$defs/expressions/$defs/conditions"]])

		// The operator to apply to the collection of conditions Possible
		// values: ["OR", "AND"]
		logical_operator?: string
	})

	_#defs: "/$defs/actions/$defs/pub_sub_notification/$defs/pubsub_condition/$defs/expressions/$defs/conditions": close({
		// The minimum data risk score that triggers the condition.
		// Possible values: ["HIGH", "MEDIUM_OR_HIGH"]
		minimum_risk_score?: string

		// The minimum sensitivity level that triggers the condition.
		// Possible values: ["HIGH", "MEDIUM_OR_HIGH"]
		minimum_sensitivity_score?: string
	})

	_#defs: "/$defs/actions/$defs/tag_resources": close({
		tag_conditions?: matchN(1, [_#defs."/$defs/actions/$defs/tag_resources/$defs/tag_conditions", [..._#defs."/$defs/actions/$defs/tag_resources/$defs/tag_conditions"]])

		// Whether applying a tag to a resource should lower the risk of
		// the profile for that resource. For example, in conjunction
		// with an [IAM deny
		// policy](https://cloud.google.com/iam/docs/deny-overview), you
		// can deny all principals a permission if a tag value is
		// present, mitigating the risk of the resource. This also lowers
		// the data risk of resources at the lower levels of the resource
		// hierarchy. For example, reducing the data risk of a table data
		// profile also reduces the data risk of the constituent column
		// data profiles.
		lower_data_risk_to_low?: bool

		// The profile generations for which the tag should be attached to
		// resources. If you attach a tag to only new profiles, then if
		// the sensitivity score of a profile subsequently changes, its
		// tag doesn't change. By default, this field includes only new
		// profiles. To include both new and updated profiles for
		// tagging, this field should explicitly include both
		// 'PROFILE_GENERATION_NEW' and 'PROFILE_GENERATION_UPDATE'.
		// Possible values: ["PROFILE_GENERATION_NEW",
		// "PROFILE_GENERATION_UPDATE"]
		profile_generations_to_tag?: [...string]
	})

	_#defs: "/$defs/actions/$defs/tag_resources/$defs/tag_conditions": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/actions/$defs/tag_resources/$defs/tag_conditions/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/tag_resources/$defs/tag_conditions/$defs/sensitivity_score"]])
		tag?: matchN(1, [_#defs."/$defs/actions/$defs/tag_resources/$defs/tag_conditions/$defs/tag", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/tag_resources/$defs/tag_conditions/$defs/tag"]])
	})

	_#defs: "/$defs/actions/$defs/tag_resources/$defs/tag_conditions/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/actions/$defs/tag_resources/$defs/tag_conditions/$defs/tag": close({
		// The namespaced name for the tag value to attach to resources.
		// Must be in the format
		// '{parent_id}/{tag_key_short_name}/{short_name}', for example,
		// "123456/environment/prod".
		namespaced_value?: string
	})

	_#defs: "/$defs/org_config/$defs/location": close({
		// The ID for the folder within an organization to scan
		folder_id?: string

		// The ID of an organization to scan
		organization_id?: string
	})

	_#defs: "/$defs/targets/$defs/big_query_target": close({
		cadence?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/cadence"]])
		conditions?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/conditions", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/conditions"]])
		disabled?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/disabled", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/disabled"]])
		filter?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/filter"]])
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/cadence": close({
		inspect_template_modified_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/inspect_template_modified_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/inspect_template_modified_cadence"]])
		schema_modified_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/schema_modified_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/schema_modified_cadence"]])
		table_modified_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/table_modified_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/table_modified_cadence"]])
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/inspect_template_modified_cadence": close({
		// How frequently data profiles can be updated when the template
		// is modified. Defaults to never. Possible values:
		// ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		frequency?: string
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/schema_modified_cadence": close({
		// How frequently profiles may be updated when schemas are
		// modified. Default to monthly Possible values:
		// ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		frequency?: string

		// The type of events to consider when deciding if the table's
		// schema has been modified and should have the profile updated.
		// Defaults to NEW_COLUMN. Possible values:
		// ["SCHEMA_NEW_COLUMNS", "SCHEMA_REMOVED_COLUMNS"]
		types?: [...string]
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/cadence/$defs/table_modified_cadence": close({
		// How frequently data profiles can be updated when tables are
		// modified. Defaults to never. Possible values:
		// ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		frequency?: string

		// The type of events to consider when deciding if the table has
		// been modified and should have the profile updated. Defaults to
		// MODIFIED_TIMESTAMP Possible values:
		// ["TABLE_MODIFIED_TIMESTAMP"]
		types?: [...string]
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/conditions": close({
		or_conditions?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/conditions/$defs/or_conditions", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/conditions/$defs/or_conditions"]])
		types?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/conditions/$defs/types", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/conditions/$defs/types"]])

		// A timestamp in RFC3339 UTC "Zulu" format with nanosecond
		// resolution and upto nine fractional digits.
		created_after?: string

		// Restrict discovery to categories of table types. Currently
		// view, materialized view, snapshot and non-biglake external
		// tables are supported. Possible values:
		// ["BIG_QUERY_COLLECTION_ALL_TYPES",
		// "BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES"]
		type_collection?: string
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/conditions/$defs/or_conditions": close({
		// Duration format. The minimum age a table must have before Cloud
		// DLP can profile it. Value greater than 1.
		min_age?: string

		// Minimum number of rows that should be present before Cloud DLP
		// profiles as a table.
		min_row_count?: number
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/conditions/$defs/types": close({
		// A set of BiqQuery table types Possible values:
		// ["BIG_QUERY_TABLE_TYPE_TABLE",
		// "BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE"]
		types?: [...string]
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/disabled": close({})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/filter": close({
		other_tables?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/other_tables", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/other_tables"]])
		table_reference?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/table_reference", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/table_reference"]])
		tables?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables"]])
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/filter/$defs/other_tables": close({})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/filter/$defs/table_reference": close({
		// Dataset ID of the table.
		dataset_id!: string

		// Name of the table.
		table_id!: string
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables": close({
		include_regexes?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables/$defs/include_regexes", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables/$defs/include_regexes"]])
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables/$defs/include_regexes": close({
		patterns?: matchN(1, [_#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables/$defs/include_regexes/$defs/patterns", [..._#defs."/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables/$defs/include_regexes/$defs/patterns"]])
	})

	_#defs: "/$defs/targets/$defs/big_query_target/$defs/filter/$defs/tables/$defs/include_regexes/$defs/patterns": close({
		// if unset, this property matches all datasets
		dataset_id_regex?: string

		// For organizations, if unset, will match all projects. Has no
		// effect for data profile configurations created within a
		// project.
		project_id_regex?: string

		// if unset, this property matches all tables
		table_id_regex?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target": close({
		conditions?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/conditions", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/conditions"]])
		disabled?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/disabled", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/disabled"]])
		filter?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter"]])
		generation_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/conditions": close({
		// Database engines that should be profiled. Optional. Defaults to
		// ALL_SUPPORTED_DATABASE_ENGINES if unspecified. Possible
		// values: ["ALL_SUPPORTED_DATABASE_ENGINES", "MYSQL",
		// "POSTGRES"]
		database_engines?: [...string]

		// Data profiles will only be generated for the database resource
		// types specified in this field. If not specified, defaults to
		// [DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES]. Possible values:
		// ["DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES",
		// "DATABASE_RESOURCE_TYPE_TABLE"]
		types?: [...string]
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/disabled": close({})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/filter": close({
		collection?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection"]])
		database_resource_reference?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/database_resource_reference", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/database_resource_reference"]])
		others?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/others", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/others"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection": close({
		include_regexes?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection/$defs/include_regexes", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection/$defs/include_regexes"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection/$defs/include_regexes": close({
		patterns?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns", [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns": close({
		// Regex to test the database name against. If empty, all
		// databases match.
		database_regex?: string

		// Regex to test the database resource's name against. An example
		// of a database resource name is a table's name. Other database
		// resource names like view names could be included in the
		// future. If empty, all database resources match.'
		database_resource_name_regex?: string

		// Regex to test the instance name against. If empty, all
		// instances match.
		instance_regex?: string

		// For organizations, if unset, will match all projects. Has no
		// effect for data profile configurations created within a
		// project.
		project_id_regex?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/database_resource_reference": close({
		// Required. Name of a database within the instance.
		database!: string

		// Required. Name of a database resource, for example, a table
		// within the database.
		database_resource!: string

		// Required. The instance where this resource is located. For
		// example: Cloud SQL instance ID.
		instance!: string

		// Required. If within a project-level config, then this must
		// match the config's project ID.
		project_id!: string
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/filter/$defs/others": close({})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence": close({
		inspect_template_modified_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence/$defs/inspect_template_modified_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence/$defs/inspect_template_modified_cadence"]])
		schema_modified_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence/$defs/schema_modified_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence/$defs/schema_modified_cadence"]])

		// Data changes (non-schema changes) in Cloud SQL tables can't
		// trigger reprofiling. If you set this field, profiles are
		// refreshed at this frequency regardless of whether the
		// underlying tables have changes. Defaults to never. Possible
		// values: ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		refresh_frequency?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence/$defs/inspect_template_modified_cadence": close({
		// How frequently data profiles can be updated when the template
		// is modified. Defaults to never. Possible values:
		// ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		frequency!: string
	})

	_#defs: "/$defs/targets/$defs/cloud_sql_target/$defs/generation_cadence/$defs/schema_modified_cadence": close({
		// Frequency to regenerate data profiles when the schema is
		// modified. Defaults to monthly. Possible values:
		// ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		frequency?: string

		// The types of schema modifications to consider. Defaults to
		// NEW_COLUMNS. Possible values: ["NEW_COLUMNS",
		// "REMOVED_COLUMNS"]
		types?: [...string]
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target": close({
		conditions?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/conditions", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/conditions"]])
		disabled?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/disabled", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/disabled"]])
		filter?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter"]])
		generation_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/generation_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/generation_cadence"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/conditions": close({
		cloud_storage_conditions?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/conditions/$defs/cloud_storage_conditions", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/conditions/$defs/cloud_storage_conditions"]])

		// File store must have been created after this date. Used to
		// avoid backfilling. A timestamp in RFC3339 UTC "Zulu" format
		// with nanosecond resolution and upto nine fractional digits.
		created_after?: string

		// Duration format. Minimum age a file store must have. If set,
		// the value must be 1 hour or greater.
		min_age?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/conditions/$defs/cloud_storage_conditions": close({
		// Only objects with the specified attributes will be scanned.
		// Defaults to [ALL_SUPPORTED_BUCKETS] if unset. Possible values:
		// ["ALL_SUPPORTED_BUCKETS", "AUTOCLASS_DISABLED",
		// "AUTOCLASS_ENABLED"]
		included_bucket_attributes?: [...string]

		// Only objects with the specified attributes will be scanned. If
		// an object has one of the specified attributes but is inside an
		// excluded bucket, it will not be scanned. Defaults to
		// [ALL_SUPPORTED_OBJECTS]. A profile will be created even if no
		// objects match the included_object_attributes. Possible values:
		// ["ALL_SUPPORTED_OBJECTS", "STANDARD", "NEARLINE", "COLDLINE",
		// "ARCHIVE", "REGIONAL", "MULTI_REGIONAL",
		// "DURABLE_REDUCED_AVAILABILITY"]
		included_object_attributes?: [...string]
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/disabled": close({})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter": close({
		cloud_storage_resource_reference?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/cloud_storage_resource_reference", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/cloud_storage_resource_reference"]])
		collection?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection"]])
		others?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/others", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/others"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/cloud_storage_resource_reference": close({
		// The bucket to scan.
		bucket_name?: string

		// If within a project-level config, then this must match the
		// config's project id.
		project_id?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection": close({
		include_regexes?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes": close({
		patterns?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns", [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns": close({
		cloud_storage_regex?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns/$defs/cloud_storage_regex", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns/$defs/cloud_storage_regex"]])
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/collection/$defs/include_regexes/$defs/patterns/$defs/cloud_storage_regex": close({
		// Regex to test the bucket name against. If empty, all buckets
		// match. Example: "marketing2021" or "(marketing)\d{4}" will
		// both match the bucket gs://marketing2021
		bucket_name_regex?: string

		// For organizations, if unset, will match all projects.
		project_id_regex?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/filter/$defs/others": close({})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/generation_cadence": close({
		inspect_template_modified_cadence?: matchN(1, [_#defs."/$defs/targets/$defs/cloud_storage_target/$defs/generation_cadence/$defs/inspect_template_modified_cadence", list.MaxItems(1) & [..._#defs."/$defs/targets/$defs/cloud_storage_target/$defs/generation_cadence/$defs/inspect_template_modified_cadence"]])

		// Data changes in Cloud Storage can't trigger reprofiling. If you
		// set this field, profiles are refreshed at this frequency
		// regardless of whether the underlying buckets have changes.
		// Defaults to never. Possible values: ["UPDATE_FREQUENCY_NEVER",
		// "UPDATE_FREQUENCY_DAILY", "UPDATE_FREQUENCY_MONTHLY"]
		refresh_frequency?: string
	})

	_#defs: "/$defs/targets/$defs/cloud_storage_target/$defs/generation_cadence/$defs/inspect_template_modified_cadence": close({
		// How frequently data profiles can be updated when the template
		// is modified. Defaults to never. Possible values:
		// ["UPDATE_FREQUENCY_NEVER", "UPDATE_FREQUENCY_DAILY",
		// "UPDATE_FREQUENCY_MONTHLY"]
		frequency?: string
	})

	_#defs: "/$defs/targets/$defs/secrets_target": close({})
}
