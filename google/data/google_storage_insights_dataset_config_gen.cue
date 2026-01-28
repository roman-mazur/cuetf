package data

#google_storage_insights_dataset_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_storage_insights_dataset_config")
	close({
		// Number of days of activity data that must be retained. If not
		// specified, retentionPeriodDays will be used. Set to 0 to turn
		// off the activity data.
		activity_data_retention_period_days?: number

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

		// Defined the options for excluding cloud storage buckets for the
		// DatasetConfig.
		exclude_cloud_storage_buckets?: [...close({
			cloud_storage_buckets?: [...close({
				bucket_name?:         string
				bucket_prefix_regex?: string
			})]
		})]

		// Defines the options for excluding cloud storage locations for
		// the DatasetConfig.
		exclude_cloud_storage_locations?: [...close({
			locations?: [...string]
		})]

		// Identity used by DatasetConfig.
		identity?: [...close({
			name?: string
			type?: string
		})]
		id?: string

		// Defines the options for including cloud storage buckets for the
		// DatasetConfig.
		include_cloud_storage_buckets?: [...close({
			cloud_storage_buckets?: [...close({
				bucket_name?:         string
				bucket_prefix_regex?: string
			})]
		})]

		// Defines the options for including cloud storage locations for
		// the DatasetConfig.
		include_cloud_storage_locations?: [...close({
			locations?: [...string]
		})]

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

		// Defines the options for providing a source organization for the
		// DatasetConfig.
		organization_scope?: bool

		// Number of days of history that must be retained.
		retention_period_days?: number
		project?:               string

		// Defines the options for providing source folders for the
		// DatasetConfig.
		source_folders?: [...close({
			folder_numbers?: [...string]
		})]

		// Defines the options for providing source projects for the
		// DatasetConfig.
		source_projects?: [...close({
			project_numbers?: [...string]
		})]

		// System generated unique identifier for the resource.
		uid?: string

		// The UTC time at which the DatasetConfig was updated. This is
		// auto-populated.
		update_time?: string
	})
}
