package res

import "list"

#google_dataplex_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataplex_zone")
	close({
		// Output only. Aggregated status of the underlying assets of the
		// zone.
		asset_status?: [...close({
			active_assets?:                   number
			security_policy_applying_assets?: number
			update_time?:                     string
		})]

		// Output only. The time when the zone was created.
		create_time?: string

		// Optional. Description of the zone.
		description?: string

		// Optional. User friendly display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Optional. User defined labels for the zone.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field `effective_labels` for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The lake for the resource
		lake!: string

		// The location for the resource
		location!: string

		// The name of the zone.
		name!: string

		// The project for the resource
		project?: string
		discovery_spec!: matchN(1, [#discovery_spec, list.MaxItems(1) & [_, ...] & [...#discovery_spec]])
		resource_spec!: matchN(1, [#resource_spec, list.MaxItems(1) & [_, ...] & [...#resource_spec]])

		// Output only. Current state of the zone. Possible values:
		// STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Required. Immutable. The type of the zone. Possible values:
		// TYPE_UNSPECIFIED, RAW, CURATED
		type!:     string
		timeouts?: #timeouts

		// Output only. System generated globally unique ID for the zone.
		// This ID will be different if the zone is deleted and
		// re-created with the same name.
		uid?: string

		// Output only. The time when the zone was last updated.
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
		// Required. Immutable. The location type of the resources that
		// are allowed to be attached to the assets within this zone.
		// Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION,
		// MULTI_REGION
		location_type!: string
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
