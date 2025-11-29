package res

import "list"

#google_storage_transfer_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_transfer_job")
	close({
		// When the Transfer Job was created.
		creation_time?: string

		// When the Transfer Job was deleted.
		deletion_time?: string

		// Unique description to identify the Transfer Job.
		description!: string
		id?:          string

		// When the Transfer Job was last modified.
		last_modification_time?: string

		// The name of the Transfer Job.
		name?: string
		event_stream?: matchN(1, [#event_stream, list.MaxItems(1) & [...#event_stream]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		notification_config?: matchN(1, [#notification_config, list.MaxItems(1) & [...#notification_config]])
		replication_spec?: matchN(1, [#replication_spec, list.MaxItems(1) & [...#replication_spec]])
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])

		// The project in which the resource belongs. If it is not
		// provided, the provider project is used.
		project?: string
		transfer_spec?: matchN(1, [#transfer_spec, list.MaxItems(1) & [...#transfer_spec]])

		// The user-managed service account to run the job. If this field
		// is specified, the given service account is granted the
		// necessary permissions to all applicable resources (e.g. GCS
		// buckets) required by the job.
		service_account?: string

		// Status of the job. Default: ENABLED. NOTE: The effect of the
		// new job status takes place during a subsequent job run. For
		// example, if you change the job status from ENABLED to
		// DISABLED, and an operation spawned by the transfer is running,
		// the status change would not affect the current operation.
		status?: string
	})

	#event_stream: close({
		// Specifies the data and time at which Storage Transfer Service
		// stops listening for events from this stream. After this time,
		// any transfers in progress will complete, but no new transfers
		// are initiated
		event_stream_expiration_time?: string

		// Specifies the date and time that Storage Transfer Service
		// starts listening for events from this stream. If no start time
		// is specified or start time is in the past, Storage Transfer
		// Service starts listening immediately
		event_stream_start_time?: string

		// Specifies a unique name of the resource such as AWS SQS ARN in
		// the form 'arn:aws:sqs:region:account_id:queue_name', or
		// Pub/Sub subscription resource name in the form
		// 'projects/{project}/subscriptions/{sub}'
		name!: string
	})

	#logging_config: close({
		// For transfers with a PosixFilesystem source, this option
		// enables the Cloud Storage transfer logs for this transfer.
		enable_on_prem_gcs_transfer_logs?: bool

		// States in which logActions are logged. Not supported for
		// transfers with PosifxFilesystem data sources; use
		// enable_on_prem_gcs_transfer_logs instead.
		log_action_states?: [...string]

		// Specifies the actions to be logged. Not supported for transfers
		// with PosifxFilesystem data sources; use
		// enable_on_prem_gcs_transfer_logs instead.
		log_actions?: [...string]
	})

	#notification_config: close({
		// Event types for which a notification is desired. If empty, send
		// notifications for all event types. The valid types are
		// "TRANSFER_OPERATION_SUCCESS", "TRANSFER_OPERATION_FAILED",
		// "TRANSFER_OPERATION_ABORTED".
		event_types?: [...string]

		// The desired format of the notification message payloads. One of
		// "NONE" or "JSON".
		payload_format!: string

		// The Topic.name of the Pub/Sub topic to which to publish
		// notifications.
		pubsub_topic!: string
	})

	#replication_spec: close({
		gcs_data_sink?: matchN(1, [_#defs."/$defs/replication_spec/$defs/gcs_data_sink", list.MaxItems(1) & [..._#defs."/$defs/replication_spec/$defs/gcs_data_sink"]])
		gcs_data_source?: matchN(1, [_#defs."/$defs/replication_spec/$defs/gcs_data_source", list.MaxItems(1) & [..._#defs."/$defs/replication_spec/$defs/gcs_data_source"]])
		object_conditions?: matchN(1, [_#defs."/$defs/replication_spec/$defs/object_conditions", list.MaxItems(1) & [..._#defs."/$defs/replication_spec/$defs/object_conditions"]])
		transfer_options?: matchN(1, [_#defs."/$defs/replication_spec/$defs/transfer_options", list.MaxItems(1) & [..._#defs."/$defs/replication_spec/$defs/transfer_options"]])
	})

	#schedule: close({
		schedule_end_date?: matchN(1, [_#defs."/$defs/schedule/$defs/schedule_end_date", list.MaxItems(1) & [..._#defs."/$defs/schedule/$defs/schedule_end_date"]])
		schedule_start_date!: matchN(1, [_#defs."/$defs/schedule/$defs/schedule_start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/schedule/$defs/schedule_start_date"]])
		start_time_of_day?: matchN(1, [_#defs."/$defs/schedule/$defs/start_time_of_day", list.MaxItems(1) & [..._#defs."/$defs/schedule/$defs/start_time_of_day"]])

		// Interval between the start of each scheduled transfer. If
		// unspecified, the default value is 24 hours. This value may not
		// be less than 1 hour. A duration in seconds with up to nine
		// fractional digits, terminated by 's'. Example: "3.5s".
		repeat_interval?: string
	})

	#transfer_spec: close({
		aws_s3_compatible_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/aws_s3_compatible_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/aws_s3_compatible_data_source"]])
		aws_s3_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/aws_s3_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/aws_s3_data_source"]])

		// Specifies the agent pool name associated with the posix data
		// source. When unspecified, the default name is used.
		sink_agent_pool_name?: string

		// Specifies the agent pool name associated with the posix data
		// source. When unspecified, the default name is used.
		source_agent_pool_name?: string
		azure_blob_storage_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/azure_blob_storage_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/azure_blob_storage_data_source"]])
		gcs_data_sink?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/gcs_data_sink", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/gcs_data_sink"]])
		gcs_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/gcs_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/gcs_data_source"]])
		hdfs_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/hdfs_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/hdfs_data_source"]])
		http_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/http_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/http_data_source"]])
		object_conditions?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/object_conditions", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/object_conditions"]])
		posix_data_sink?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/posix_data_sink", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/posix_data_sink"]])
		posix_data_source?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/posix_data_source", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/posix_data_source"]])
		transfer_manifest?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/transfer_manifest", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/transfer_manifest"]])
		transfer_options?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/transfer_options", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/transfer_options"]])
	})

	_#defs: "/$defs/replication_spec/$defs/gcs_data_sink": close({
		// Google Cloud Storage bucket name.
		bucket_name!: string

		// Google Cloud Storage path in bucket to transfer. Must be an
		// empty string or full path name that ends with a '/'. This
		// field is treated as an object prefix. As such, it should not
		// begin with a '/'.
		path?: string
	})

	_#defs: "/$defs/replication_spec/$defs/gcs_data_source": close({
		// Google Cloud Storage bucket name.
		bucket_name!: string

		// Google Cloud Storage path in bucket to transfer. Must be an
		// empty string or full path name that ends with a '/'. This
		// field is treated as an object prefix. As such, it should not
		// begin with a '/'.
		path?: string
	})

	_#defs: "/$defs/replication_spec/$defs/object_conditions": close({
		// exclude_prefixes must follow the requirements described for
		// include_prefixes.
		exclude_prefixes?: [...string]

		// If include_refixes is specified, objects that satisfy the
		// object conditions must have names that start with one of the
		// include_prefixes and that do not start with any of the
		// exclude_prefixes. If include_prefixes is not specified, all
		// objects except those that have names starting with one of the
		// exclude_prefixes must satisfy the object conditions.
		include_prefixes?: [...string]

		// If specified, only objects with a "last modification time"
		// before this timestamp and objects that don't have a "last
		// modification time" are transferred. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		last_modified_before?: string

		// If specified, only objects with a "last modification time" on
		// or after this timestamp and objects that don't have a "last
		// modification time" are transferred. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		last_modified_since?: string

		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		max_time_elapsed_since_last_modification?: string

		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		min_time_elapsed_since_last_modification?: string
	})

	_#defs: "/$defs/replication_spec/$defs/transfer_options": close({
		// Whether objects should be deleted from the source after they
		// are transferred to the sink. Note that this option and
		// delete_objects_unique_in_sink are mutually exclusive.
		delete_objects_from_source_after_transfer?: bool

		// Whether objects that exist only in the sink should be deleted.
		// Note that this option and
		// delete_objects_from_source_after_transfer are mutually
		// exclusive.
		delete_objects_unique_in_sink?: bool

		// Whether overwriting objects that already exist in the sink is
		// allowed.
		overwrite_objects_already_existing_in_sink?: bool
		metadata_options?: matchN(1, [_#defs."/$defs/replication_spec/$defs/transfer_options/$defs/metadata_options", list.MaxItems(1) & [..._#defs."/$defs/replication_spec/$defs/transfer_options/$defs/metadata_options"]])

		// When to overwrite objects that already exist in the sink. If
		// not set, overwrite behavior is determined by
		// overwriteObjectsAlreadyExistingInSink.
		overwrite_when?: string
	})

	_#defs: "/$defs/replication_spec/$defs/transfer_options/$defs/metadata_options": close({
		// Specifies how each object's ACLs should be preserved for
		// transfers between Google Cloud Storage buckets
		acl?: string

		// Specifies how each file's POSIX group ID (GID) attribute should
		// be handled by the transfer.
		gid?: string

		// Specifies how each object's Cloud KMS customer-managed
		// encryption key (CMEK) is preserved for transfers between
		// Google Cloud Storage buckets
		kms_key?: string

		// Specifies how each file's mode attribute should be handled by
		// the transfer.
		mode?: string

		// Specifies the storage class to set on objects being transferred
		// to Google Cloud Storage buckets
		storage_class?: string

		// Specifies how symlinks should be handled by the transfer.
		symlink?: string

		// SSpecifies how each object's temporary hold status should be
		// preserved for transfers between Google Cloud Storage buckets
		temporary_hold?: string

		// Specifies how each object's timeCreated metadata is preserved
		// for transfers.
		time_created?: string

		// Specifies how each file's POSIX user ID (UID) attribute should
		// be handled by the transfer.
		uid?: string
	})

	_#defs: "/$defs/schedule/$defs/schedule_end_date": close({
		// Day of month. Must be from 1 to 31 and valid for the year and
		// month.
		day!: number

		// Month of year. Must be from 1 to 12.
		month!: number

		// Year of date. Must be from 1 to 9999.
		year!: number
	})

	_#defs: "/$defs/schedule/$defs/schedule_start_date": close({
		// Day of month. Must be from 1 to 31 and valid for the year and
		// month.
		day!: number

		// Month of year. Must be from 1 to 12.
		month!: number

		// Year of date. Must be from 1 to 9999.
		year!: number
	})

	_#defs: "/$defs/schedule/$defs/start_time_of_day": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours!: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes!: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos!: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		seconds!: number
	})

	_#defs: "/$defs/transfer_spec/$defs/aws_s3_compatible_data_source": close({
		// Name of the bucket.
		bucket_name!: string

		// Endpoint of the storage service.
		endpoint!: string

		// Specifies the path to transfer objects.
		path?: string
		s3_metadata?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/aws_s3_compatible_data_source/$defs/s3_metadata", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/aws_s3_compatible_data_source/$defs/s3_metadata"]])

		// Specifies the region to sign requests with. This can be left
		// blank if requests should be signed with an empty region.
		region?: string
	})

	_#defs: "/$defs/transfer_spec/$defs/aws_s3_compatible_data_source/$defs/s3_metadata": close({
		// Authentication and authorization method used by the storage
		// service. When not specified, Transfer Service will attempt to
		// determine right auth method to use.
		auth_method?: string

		// The Listing API to use for discovering objects. When not
		// specified, Transfer Service will attempt to determine the
		// right API to use.
		list_api?: string

		// The network protocol of the agent. When not specified, the
		// default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is
		// used.
		protocol?: string

		// API request model used to call the storage service. When not
		// specified, the default value of RequestModel
		// REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
		request_model?: string
	})

	_#defs: "/$defs/transfer_spec/$defs/aws_s3_data_source": close({
		// S3 Bucket name.
		bucket_name!: string

		// The CloudFront distribution domain name pointing to this
		// bucket, to use when fetching. See [Transfer from S3 via
		// CloudFront](https://cloud.google.com/storage-transfer/docs/s3-cloudfront)
		// for more information. Format: https://{id}.cloudfront.net or
		// any valid custom domain. Must begin with https://.
		cloudfront_domain?: string

		// The Resource name of a secret in Secret Manager. AWS
		// credentials must be stored in Secret Manager in JSON format.
		// If credentials_secret is specified, do not specify role_arn or
		// aws_access_key. Format:
		// projects/{projectNumber}/secrets/{secret_name}.
		credentials_secret?: string

		// Egress bytes over a Google-managed private network. This
		// network is shared between other users of Storage Transfer
		// Service.
		managed_private_network?: bool

		// S3 Bucket path in bucket to transfer.
		path?: string

		// The Amazon Resource Name (ARN) of the role to support temporary
		// credentials via 'AssumeRoleWithWebIdentity'. For more
		// information about ARNs, see [IAM
		// ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).
		// When a role ARN is provided, Transfer Service fetches
		// temporary credentials for the session using a
		// 'AssumeRoleWithWebIdentity' call for the provided role using
		// the [GoogleServiceAccount][] for this project.
		role_arn?: string
		aws_access_key?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/aws_s3_data_source/$defs/aws_access_key", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/aws_s3_data_source/$defs/aws_access_key"]])
	})

	_#defs: "/$defs/transfer_spec/$defs/aws_s3_data_source/$defs/aws_access_key": close({
		// AWS Key ID.
		access_key_id!: string

		// AWS Secret Access Key.
		secret_access_key!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/azure_blob_storage_data_source": close({
		// The container to transfer from the Azure Storage account.
		container!: string

		// The Resource name of a secret in Secret Manager containing SAS
		// Credentials in JSON form. Service Agent must have permissions
		// to access secret. If credentials_secret is specified, do not
		// specify azure_credentials.
		credentials_secret?: string

		// Root path to transfer objects. Must be an empty string or full
		// path name that ends with a '/'. This field is treated as an
		// object prefix. As such, it should generally not begin with a
		// '/'.
		path?: string

		// The name of the Azure Storage account.
		storage_account!: string
		azure_credentials?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/azure_blob_storage_data_source/$defs/azure_credentials", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/azure_blob_storage_data_source/$defs/azure_credentials"]])
		federated_identity_config?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/azure_blob_storage_data_source/$defs/federated_identity_config", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/azure_blob_storage_data_source/$defs/federated_identity_config"]])
	})

	_#defs: "/$defs/transfer_spec/$defs/azure_blob_storage_data_source/$defs/azure_credentials": close({
		// Azure shared access signature.
		sas_token!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/azure_blob_storage_data_source/$defs/federated_identity_config": close({
		// The client (application) ID of the application with federated
		// credentials.
		client_id!: string

		// The tenant (directory) ID of the application with federated
		// credentials.
		tenant_id!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/gcs_data_sink": close({
		// Google Cloud Storage bucket name.
		bucket_name!: string

		// Google Cloud Storage path in bucket to transfer. Must be an
		// empty string or full path name that ends with a '/'. This
		// field is treated as an object prefix. As such, it should not
		// begin with a '/'.
		path?: string
	})

	_#defs: "/$defs/transfer_spec/$defs/gcs_data_source": close({
		// Google Cloud Storage bucket name.
		bucket_name!: string

		// Google Cloud Storage path in bucket to transfer. Must be an
		// empty string or full path name that ends with a '/'. This
		// field is treated as an object prefix. As such, it should not
		// begin with a '/'.
		path?: string
	})

	_#defs: "/$defs/transfer_spec/$defs/hdfs_data_source": close({
		// Directory path to the filesystem.
		path!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/http_data_source": close({
		// The URL that points to the file that stores the object list
		// entries. This file must allow public access. Currently, only
		// URLs with HTTP and HTTPS schemes are supported.
		list_url!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/object_conditions": close({
		// exclude_prefixes must follow the requirements described for
		// include_prefixes.
		exclude_prefixes?: [...string]

		// If include_refixes is specified, objects that satisfy the
		// object conditions must have names that start with one of the
		// include_prefixes and that do not start with any of the
		// exclude_prefixes. If include_prefixes is not specified, all
		// objects except those that have names starting with one of the
		// exclude_prefixes must satisfy the object conditions.
		include_prefixes?: [...string]

		// If specified, only objects with a "last modification time"
		// before this timestamp and objects that don't have a "last
		// modification time" are transferred. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		last_modified_before?: string

		// If specified, only objects with a "last modification time" on
		// or after this timestamp and objects that don't have a "last
		// modification time" are transferred. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		last_modified_since?: string

		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		max_time_elapsed_since_last_modification?: string

		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		min_time_elapsed_since_last_modification?: string
	})

	_#defs: "/$defs/transfer_spec/$defs/posix_data_sink": close({
		// Root directory path to the filesystem.
		root_directory!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/posix_data_source": close({
		// Root directory path to the filesystem.
		root_directory!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/transfer_manifest": close({
		// Cloud Storage path to the manifest CSV.
		location!: string
	})

	_#defs: "/$defs/transfer_spec/$defs/transfer_options": close({
		// Whether objects should be deleted from the source after they
		// are transferred to the sink. Note that this option and
		// delete_objects_unique_in_sink are mutually exclusive.
		delete_objects_from_source_after_transfer?: bool

		// Whether objects that exist only in the sink should be deleted.
		// Note that this option and
		// delete_objects_from_source_after_transfer are mutually
		// exclusive.
		delete_objects_unique_in_sink?: bool

		// Whether overwriting objects that already exist in the sink is
		// allowed.
		overwrite_objects_already_existing_in_sink?: bool
		metadata_options?: matchN(1, [_#defs."/$defs/transfer_spec/$defs/transfer_options/$defs/metadata_options", list.MaxItems(1) & [..._#defs."/$defs/transfer_spec/$defs/transfer_options/$defs/metadata_options"]])

		// When to overwrite objects that already exist in the sink. If
		// not set, overwrite behavior is determined by
		// overwriteObjectsAlreadyExistingInSink.
		overwrite_when?: string
	})

	_#defs: "/$defs/transfer_spec/$defs/transfer_options/$defs/metadata_options": close({
		// Specifies how each object's ACLs should be preserved for
		// transfers between Google Cloud Storage buckets
		acl?: string

		// Specifies how each file's POSIX group ID (GID) attribute should
		// be handled by the transfer.
		gid?: string

		// Specifies how each object's Cloud KMS customer-managed
		// encryption key (CMEK) is preserved for transfers between
		// Google Cloud Storage buckets
		kms_key?: string

		// Specifies how each file's mode attribute should be handled by
		// the transfer.
		mode?: string

		// Specifies the storage class to set on objects being transferred
		// to Google Cloud Storage buckets
		storage_class?: string

		// Specifies how symlinks should be handled by the transfer.
		symlink?: string

		// SSpecifies how each object's temporary hold status should be
		// preserved for transfers between Google Cloud Storage buckets
		temporary_hold?: string

		// Specifies how each object's timeCreated metadata is preserved
		// for transfers.
		time_created?: string

		// Specifies how each file's POSIX user ID (UID) attribute should
		// be handled by the transfer.
		uid?: string
	})
}
