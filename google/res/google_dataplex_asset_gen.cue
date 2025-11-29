package res

import "list"

#google_dataplex_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_asset")
	close({
		// Output only. The time when the asset was created.
		create_time?: string

		// The zone for the resource
		dataplex_zone!: string

		// Optional. Description of the asset.
		description?: string

		// Output only. Status of the discovery feature applied to data
		// referenced by this asset.
		discovery_status?: [...close({
			last_run_duration?: string
			last_run_time?:     string
			message?:           string
			state?:             string
			stats?: [...close({
				data_items?: number
				data_size?:  number
				filesets?:   number
				tables?:     number
			})]
			update_time?: string
		})]

		// Optional. User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. User defined labels for the asset.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The lake for the resource
		lake!: string

		// The location for the resource
		location!: string
		id?:       string

		// The name of the asset.
		name!: string
		discovery_spec!: matchN(1, [#discovery_spec, list.MaxItems(1) & [_, ...] & [...#discovery_spec]])
		resource_spec!: matchN(1, [#resource_spec, list.MaxItems(1) & [_, ...] & [...#resource_spec]])
		timeouts?: #timeouts

		// The project for the resource
		project?: string

		// Output only. Status of the resource referenced by this asset.
		resource_status?: [...close({
			message?:     string
			state?:       string
			update_time?: string
		})]

		// Output only. Status of the security policy applied to resource
		// referenced by this asset.
		security_status?: [...close({
			message?:     string
			state?:       string
			update_time?: string
		})]

		// Output only. Current state of the asset. Possible values:
		// STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. System generated globally unique ID for the asset.
		// This ID will be different if the asset is deleted and
		// re-created with the same name.
		uid?: string

		// Output only. The time when the asset was last updated.
		update_time?: string
	})

	#discovery_spec: close({
		// Required. Whether discovery is enabled.
		enabled!: bool

		// Optional. The list of patterns to apply for selecting data to
		// exclude during discovery. For Cloud Storage bucket assets,
		// these are interpreted as glob patterns used to match object
		// names. For BigQuery dataset assets, these are interpreted as
		// patterns to match table names.
		exclude_patterns?: [...string]

		// Optional. The list of patterns to apply for selecting data to
		// include during discovery if only a subset of the data should
		// considered. For Cloud Storage bucket assets, these are
		// interpreted as glob patterns used to match object names. For
		// BigQuery dataset assets, these are interpreted as patterns to
		// match table names.
		include_patterns?: [...string]

		// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron)
		// for running discovery periodically. Successive discovery runs
		// must be scheduled at least 60 minutes apart. The default value
		// is to run discovery every 60 minutes. To explicitly set a
		// timezone to the cron tab, apply a prefix in the cron tab:
		// "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The
		// ${IANA_TIME_ZONE} may only be a valid string from IANA time
		// zone database. For example, "CRON_TZ=America/New_York 1 * * *
		// *", or "TZ=America/New_York 1 * * * *".
		schedule?: string
		csv_options?: matchN(1, [_#defs."/$defs/discovery_spec/$defs/csv_options", list.MaxItems(1) & [..._#defs."/$defs/discovery_spec/$defs/csv_options"]])
		json_options?: matchN(1, [_#defs."/$defs/discovery_spec/$defs/json_options", list.MaxItems(1) & [..._#defs."/$defs/discovery_spec/$defs/json_options"]])
	})

	#resource_spec: close({
		// Immutable. Relative name of the cloud resource that contains
		// the data that is being managed within a lake. For example:
		// `projects/{project_number}/buckets/{bucket_id}`
		// `projects/{project_number}/datasets/{dataset_id}`
		name?: string

		// Optional. Determines how read permissions are handled for each
		// asset and their associated tables. Only available to storage
		// buckets assets. Possible values: DIRECT, MANAGED
		read_access_mode?: string

		// Required. Immutable. Type of resource. Possible values:
		// STORAGE_BUCKET, BIGQUERY_DATASET
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/discovery_spec/$defs/csv_options": close({
		// Optional. The delimiter being used to separate values. This
		// defaults to ','.
		delimiter?: string

		// Optional. Whether to disable the inference of data type for CSV
		// data. If true, all columns will be registered as strings.
		disable_type_inference?: bool

		// Optional. The character encoding of the data. The default is
		// UTF-8.
		encoding?: string

		// Optional. The number of rows to interpret as header rows that
		// should be skipped when reading data rows.
		header_rows?: number
	})

	_#defs: "/$defs/discovery_spec/$defs/json_options": close({
		// Optional. Whether to disable the inference of data type for
		// Json data. If true, all columns will be registered as their
		// primitive types (strings, number or boolean).
		disable_type_inference?: bool

		// Optional. The character encoding of the data. The default is
		// UTF-8.
		encoding?: string
	})
}
