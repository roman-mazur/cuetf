package res

import "list"

#google_storage_insights_dataset_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_insights_dataset_config")
	close({
		// The UTC time at which the DatasetConfig was created. This is
		// auto-populated.
		create_time?: string

		// The user-defined ID of the DatasetConfig
		dataset_config_id!: string

		// State of the DatasetConfig.
		dataset_config_state?: string

		// An optional user-provided description for the dataset
		// configuration with a maximum length of 256 characters.
		description?: string
		id?:          string

		// If set to true, the request includes all the newly created
		// buckets in the dataset that meet the inclusion and exclusion
		// rules.
		include_newly_created_buckets?: bool

		// Details of the linked DatasetConfig.
		link?: [...close({
			dataset?: string
			linked?:  bool
		})]

		// A boolean terraform only flag to link/unlink dataset.
		//
		// Setting this field to true while creation will automatically
		// link the created dataset as an additional functionality.
		// -> **Note** A dataset config resource can only be destroyed
		// once it is unlinked,
		// so users must set this field to false to unlink the dataset and
		// destroy the dataset config resource.
		link_dataset?: bool

		// The location of the DatasetConfig.
		location!: string

		// The full canonical resource name of the DatasetConfig (e.g.,
		// projects/P/locations/L/datasetConfigs/ID).
		name?: string

		// Organization resource ID that the source projects should belong
		// to.
		// Projects that do not belong to the provided organization are
		// not considered when creating the dataset.
		organization_number?: string
		exclude_cloud_storage_buckets?: matchN(1, [#exclude_cloud_storage_buckets, list.MaxItems(1) & [...#exclude_cloud_storage_buckets]])
		exclude_cloud_storage_locations?: matchN(1, [#exclude_cloud_storage_locations, list.MaxItems(1) & [...#exclude_cloud_storage_locations]])
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		include_cloud_storage_buckets?: matchN(1, [#include_cloud_storage_buckets, list.MaxItems(1) & [...#include_cloud_storage_buckets]])
		include_cloud_storage_locations?: matchN(1, [#include_cloud_storage_locations, list.MaxItems(1) & [...#include_cloud_storage_locations]])
		source_folders?: matchN(1, [#source_folders, list.MaxItems(1) & [...#source_folders]])
		source_projects?: matchN(1, [#source_projects, list.MaxItems(1) & [...#source_projects]])
		timeouts?: #timeouts

		// Defines the options for providing a source organization for the
		// DatasetConfig.
		organization_scope?: bool

		// Number of days of history that must be retained.
		retention_period_days!: number

		// System generated unique identifier for the resource.
		uid?:     string
		project?: string

		// The UTC time at which the DatasetConfig was updated. This is
		// auto-populated.
		update_time?: string
	})

	#exclude_cloud_storage_buckets: close({
		cloud_storage_buckets!: matchN(1, [_#defs."/$defs/exclude_cloud_storage_buckets/$defs/cloud_storage_buckets", [_, ...] & [..._#defs."/$defs/exclude_cloud_storage_buckets/$defs/cloud_storage_buckets"]])
	})

	#exclude_cloud_storage_locations: close({
		// The list of cloud storage locations to exclude in the
		// DatasetConfig.
		locations!: [...string]
	})

	#identity: close({
		// Name of the identity.
		name?: string

		// Type of identity to use for the DatasetConfig. Possible values:
		// ["IDENTITY_TYPE_PER_CONFIG", "IDENTITY_TYPE_PER_PROJECT"]
		type!: string
	})

	#include_cloud_storage_buckets: close({
		cloud_storage_buckets!: matchN(1, [_#defs."/$defs/include_cloud_storage_buckets/$defs/cloud_storage_buckets", [_, ...] & [..._#defs."/$defs/include_cloud_storage_buckets/$defs/cloud_storage_buckets"]])
	})

	#include_cloud_storage_locations: close({
		// The list of cloud storage locations to include in the
		// DatasetConfig.
		locations!: [...string]
	})

	#source_folders: close({
		// The list of folder numbers to include in the DatasetConfig.
		folder_numbers?: [...string]
	})

	#source_projects: close({
		// The list of project numbers to include in the DatasetConfig.
		project_numbers?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/exclude_cloud_storage_buckets/$defs/cloud_storage_buckets": close({
		// The list of cloud storage bucket names to exclude in the
		// DatasetConfig.
		// Exactly one of the bucket_name and bucket_prefix_regex should
		// be specified.
		bucket_name?: string

		// The list of regex patterns for bucket names matching the regex.
		// Regex should follow the syntax specified in google/re2 on
		// GitHub.
		// Exactly one of the bucket_name and bucket_prefix_regex should
		// be specified.
		bucket_prefix_regex?: string
	})

	_#defs: "/$defs/include_cloud_storage_buckets/$defs/cloud_storage_buckets": close({
		// The list of cloud storage bucket names to include in the
		// DatasetConfig.
		// Exactly one of the bucket_name and bucket_prefix_regex should
		// be specified.
		bucket_name?: string

		// The list of regex patterns for bucket names matching the regex.
		// Regex should follow the syntax specified in google/re2 on
		// GitHub.
		// Exactly one of the bucket_name and bucket_prefix_regex should
		// be specified.
		bucket_prefix_regex?: string
	})
}
