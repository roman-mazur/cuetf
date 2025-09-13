package res

import "list"

#google_pubsub_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_pubsub_topic")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The resource name of the Cloud KMS CryptoKey to be used to
		// protect access
		// to messages published on this topic. Your project's PubSub
		// service account
		// ('service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// The expected format is
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'
		kms_key_name?: string

		// A set of key/value label pairs to assign to this Topic.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Indicates the minimum duration to retain a message after it is
		// published
		// to the topic. If this field is set, messages published to the
		// topic in
		// the last messageRetentionDuration are always available to
		// subscribers.
		// For instance, it allows any attached subscription to seek to a
		// timestamp
		// that is up to messageRetentionDuration in the past. If this
		// field is not
		// set, message retention is controlled by settings on individual
		// subscriptions.
		// The rotation period has the format of a decimal number,
		// followed by the
		// letter 's' (seconds). Cannot be more than 31 days or less than
		// 10 minutes.
		message_retention_duration?: string

		// Name of the topic.
		name!: string
		ingestion_data_source_settings?: matchN(1, [#ingestion_data_source_settings, list.MaxItems(1) & [...#ingestion_data_source_settings]])
		message_storage_policy?: matchN(1, [#message_storage_policy, list.MaxItems(1) & [...#message_storage_policy]])
		message_transforms?: matchN(1, [#message_transforms, [...#message_transforms]])
		schema_settings?: matchN(1, [#schema_settings, list.MaxItems(1) & [...#schema_settings]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#ingestion_data_source_settings: close({
		aws_kinesis?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/aws_kinesis", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/aws_kinesis"]])
		aws_msk?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/aws_msk", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/aws_msk"]])
		azure_event_hubs?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/azure_event_hubs", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/azure_event_hubs"]])
		cloud_storage?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage"]])
		confluent_cloud?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/confluent_cloud", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/confluent_cloud"]])
		platform_logs_settings?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/platform_logs_settings", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/platform_logs_settings"]])
	})

	#message_storage_policy: close({
		// A list of IDs of GCP regions where messages that are published
		// to
		// the topic may be persisted in storage. Messages published by
		// publishers running in non-allowed GCP regions (or running
		// outside
		// of GCP altogether) will be routed for storage in one of the
		// allowed regions. An empty list means that no regions are
		// allowed,
		// and is not a valid configuration.
		allowed_persistence_regions!: [...string]

		// If true, 'allowedPersistenceRegions' is also used to enforce
		// in-transit
		// guarantees for messages. That is, Pub/Sub will fail
		// topics.publish
		// operations on this topic and subscribe operations on any
		// subscription
		// attached to this topic in any region that is not in
		// 'allowedPersistenceRegions'.
		enforce_in_transit?: bool
	})

	#message_transforms: close({
		javascript_udf?: matchN(1, [_#defs."/$defs/message_transforms/$defs/javascript_udf", list.MaxItems(1) & [..._#defs."/$defs/message_transforms/$defs/javascript_udf"]])

		// Controls whether or not to use this transform. If not set or
		// 'false',
		// the transform will be applied to messages. Default: 'true'.
		disabled?: bool
	})

	#schema_settings: close({
		// The encoding of messages validated against schema. Default
		// value: "ENCODING_UNSPECIFIED" Possible values:
		// ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]
		encoding?: string

		// The name of the schema that messages published should be
		// validated against. Format is
		// projects/{project}/schemas/{schema}.
		// The value of this field will be _deleted-schema_
		// if the schema has been deleted.
		schema!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/aws_kinesis": close({
		// AWS role ARN to be used for Federated Identity authentication
		// with
		// Kinesis. Check the Pub/Sub docs for how to set up this role and
		// the
		// required permissions that need to be attached to it.
		aws_role_arn!: string

		// The Kinesis consumer ARN to used for ingestion in
		// Enhanced Fan-Out mode. The consumer must be already
		// created and ready to be used.
		consumer_arn!: string

		// The GCP service account to be used for Federated Identity
		// authentication
		// with Kinesis (via a 'AssumeRoleWithWebIdentity' call for the
		// provided
		// role). The 'awsRoleArn' must be set up with
		// 'accounts.google.com:sub'
		// equals to this service account number.
		gcp_service_account!: string

		// The Kinesis stream ARN to ingest data from.
		stream_arn!: string
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/aws_msk": close({
		// AWS role ARN to be used for Federated Identity authentication
		// with
		// MSK. Check the Pub/Sub docs for how to set up this role and the
		// required permissions that need to be attached to it.
		aws_role_arn!: string

		// ARN that uniquely identifies the MSK cluster.
		cluster_arn!: string

		// The GCP service account to be used for Federated Identity
		// authentication
		// with MSK (via a 'AssumeRoleWithWebIdentity' call for the
		// provided
		// role). The 'awsRoleArn' must be set up with
		// 'accounts.google.com:sub'
		// equals to this service account number.
		gcp_service_account!: string

		// The name of the MSK topic that Pub/Sub will import from.
		topic!: string
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/azure_event_hubs": close({
		// The Azure event hub client ID to use for ingestion.
		client_id?: string

		// The Azure event hub to ingest data from.
		event_hub?: string

		// The GCP service account to be used for Federated Identity
		// authentication
		// with Azure (via a 'AssumeRoleWithWebIdentity' call for the
		// provided
		// role).
		gcp_service_account?: string

		// The Azure event hub namespace to ingest data from.
		namespace?: string

		// The name of the resource group within an Azure subscription.
		resource_group?: string

		// The Azure event hub subscription ID to use for ingestion.
		subscription_id?: string

		// The Azure event hub tenant ID to use for ingestion.
		tenant_id?: string
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/cloud_storage": close({
		// Cloud Storage bucket. The bucket name must be without any
		// prefix like "gs://". See the bucket naming requirements:
		// https://cloud.google.com/storage/docs/buckets#naming.
		bucket!: string
		avro_format?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/avro_format", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/avro_format"]])

		// Glob pattern used to match objects that will be ingested. If
		// unset, all
		// objects will be ingested. See the supported patterns:
		// https://cloud.google.com/storage/docs/json_api/v1/objects/list#list-objects-and-prefixes-using-glob
		match_glob?: string

		// The timestamp set in RFC3339 text format. If set, only objects
		// with a
		// larger or equal timestamp will be ingested. Unset by default,
		// meaning
		// all objects will be ingested.
		minimum_object_create_time?: string
		pubsub_avro_format?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/pubsub_avro_format", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/pubsub_avro_format"]])
		text_format?: matchN(1, [_#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/text_format", list.MaxItems(1) & [..._#defs."/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/text_format"]])
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/avro_format": close({})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/pubsub_avro_format": close({})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/cloud_storage/$defs/text_format": close({
		// The delimiter to use when using the 'text' format. Each line of
		// text as
		// specified by the delimiter will be set to the 'data' field of a
		// Pub/Sub
		// message. When unset, '\n' is used.
		delimiter?: string
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/confluent_cloud": close({
		// The Confluent Cloud bootstrap server. The format is url:port.
		bootstrap_server!: string

		// The Confluent Cloud cluster ID.
		cluster_id?: string

		// The GCP service account to be used for Federated Identity
		// authentication
		// with Confluent Cloud.
		gcp_service_account!: string

		// Identity pool ID to be used for Federated Identity
		// authentication with Confluent Cloud.
		identity_pool_id!: string

		// Name of the Confluent Cloud topic that Pub/Sub will import
		// from.
		topic!: string
	})

	_#defs: "/$defs/ingestion_data_source_settings/$defs/platform_logs_settings": close({
		// The minimum severity level of Platform Logs that will be
		// written. If unspecified,
		// no Platform Logs will be written. Default value:
		// "SEVERITY_UNSPECIFIED" Possible values:
		// ["SEVERITY_UNSPECIFIED", "DISABLED", "DEBUG", "INFO",
		// "WARNING", "ERROR"]
		severity?: string
	})

	_#defs: "/$defs/message_transforms/$defs/javascript_udf": close({
		// JavaScript code that contains a function 'function_name' with
		// the
		// following signature:
		// '''
		// /**
		// * Transforms a Pub/Sub message.
		// *
		// * @return {(Object<string, (string | Object<string,
		// string>)>|null)} - To
		// * filter a message, return 'null'. To transform a message
		// return a map
		// * with the following keys:
		// * - (required) 'data' : {string}
		// * - (optional) 'attributes' : {Object<string, string>}
		// * Returning empty 'attributes' will remove all attributes from
		// the
		// * message.
		// *
		// * @param {(Object<string, (string | Object<string, string>)>}
		// Pub/Sub
		// * message. Keys:
		// * - (required) 'data' : {string}
		// * - (required) 'attributes' : {Object<string, string>}
		// *
		// * @param {Object<string, any>} metadata - Pub/Sub message
		// metadata.
		// * Keys:
		// * - (required) 'message_id' : {string}
		// * - (optional) 'publish_time': {string} YYYY-MM-DDTHH:MM:SSZ
		// format
		// * - (optional) 'ordering_key': {string}
		// */
		// function <function_name>(message, metadata) {
		// }
		// '''
		code!: string

		// Name of the JavaScript function that should be applied to
		// Pub/Sub messages.
		function_name!: string
	})
}
