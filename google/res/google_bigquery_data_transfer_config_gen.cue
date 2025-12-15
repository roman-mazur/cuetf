package res

import "list"

#google_bigquery_data_transfer_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_data_transfer_config")
	close({
		// The number of days to look back to automatically refresh the
		// data.
		// For example, if dataRefreshWindowDays = 10, then every day
		// BigQuery
		// reingests data for [today-10, today-1], rather than ingesting
		// data for
		// just [today-1]. Only valid if the data source supports the
		// feature.
		// Set the value to 0 to use the default value.
		data_refresh_window_days?: number

		// The data source id. Cannot be changed once the transfer config
		// is created.
		data_source_id!: string

		// The BigQuery target dataset id.
		destination_dataset_id?: string

		// When set to true, no runs are scheduled for a given transfer.
		disabled?: bool

		// The user specified display name for the transfer config.
		display_name!: string
		id?:           string

		// The geographic location where the transfer config should
		// reside.
		// Examples: US, EU, asia-northeast1. The default value is US.
		location?: string

		// The resource name of the transfer config. Transfer config names
		// have the
		// form
		// projects/{projectId}/locations/{location}/transferConfigs/{configId}
		// or projects/{projectId}/transferConfigs/{configId},
		// where configId is usually a uuid, but this is not required.
		// The name is ignored when creating a transfer config.
		name?: string

		// Pub/Sub topic where notifications will be sent after transfer
		// runs
		// associated with this transfer config finish.
		notification_pubsub_topic?: string
		email_preferences?: matchN(1, [#email_preferences, list.MaxItems(1) & [...#email_preferences]])
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		schedule_options?: matchN(1, [#schedule_options, list.MaxItems(1) & [...#schedule_options]])
		sensitive_params?: matchN(1, [#sensitive_params, list.MaxItems(1) & [...#sensitive_params]])
		timeouts?: #timeouts

		// Parameters specific to each data source. For more information
		// see the bq tab in the 'Setting up a data transfer'
		// section for each data source. For example the parameters for
		// Cloud Storage transfers are listed here:
		// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
		//
		// **NOTE** : If you are attempting to update a parameter that
		// cannot be updated (due to api limitations) [please force
		// recreation of the
		// resource](https://www.terraform.io/cli/state/taint#forcing-re-creation-of-resources).
		params!: [string]: string
		project?: string

		// Data transfer schedule. If the data source does not support a
		// custom
		// schedule, this should be empty. If it is empty, the default
		// value for
		// the data source will be used. The specified times are in UTC.
		// Examples
		// of valid format: 1st,3rd monday of month 15:30, every wed,fri
		// of jan,
		// jun 13:15, and first sunday of quarter 00:00. See more
		// explanation
		// about the format here:
		// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
		// NOTE: The minimum interval time between recurring transfers
		// depends
		// on the data source; refer to the documentation for your data
		// source.
		schedule?: string

		// Service account email. If this field is set, transfer config
		// will
		// be created with this service account credentials. It requires
		// that
		// requesting user calling this API has permissions to act as this
		// service account.
		service_account_name?: string
	})

	#email_preferences: close({
		// If true, email notifications will be sent on transfer run
		// failures.
		enable_failure_email!: bool
	})

	#encryption_configuration: close({
		// The name of the KMS key used for encrypting BigQuery data.
		kms_key_name!: string
	})

	#schedule_options: close({
		// If true, automatic scheduling of data transfer runs for this
		// configuration will be disabled. The runs can be started on
		// ad-hoc
		// basis using transferConfigs.startManualRuns API. When automatic
		// scheduling is disabled, the TransferConfig.schedule field will
		// be ignored.
		disable_auto_scheduling?: bool

		// Defines time to stop scheduling transfer runs. A transfer run
		// cannot be
		// scheduled at or after the end time. The end time can be changed
		// at any
		// moment. The time when a data transfer can be triggered manually
		// is not
		// limited by this option.
		end_time?: string

		// Specifies time to start scheduling transfer runs. The first run
		// will be
		// scheduled at or after the start time according to a recurrence
		// pattern
		// defined in the schedule string. The start time can be changed
		// at any
		// moment. The time when a data transfer can be triggered manually
		// is not
		// limited by this option.
		start_time?: string
	})

	#sensitive_params: close({
		// The Secret Access Key of the AWS account transferring data
		// from.
		secret_access_key?: string

		// The Secret Access Key of the AWS account transferring data
		// from.
		secret_access_key_wo?: string

		// The version of the sensitive params - used to trigger updates
		// of the write-only params. For more info see [updating
		// write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		secret_access_key_wo_version?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
