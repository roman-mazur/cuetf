package res

import "list"

google_bigquery_analytics_hub_listing_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_analytics_hub_listing_subscription")
	close({
		destination_dataset?: matchN(1, [#destination_dataset, list.MaxItems(1) & [...#destination_dataset]])
		destination_pubsub_subscription?: matchN(1, [#destination_pubsub_subscription, list.MaxItems(1) & [...#destination_pubsub_subscription]])
		timeouts?: #timeouts

		// Commercial info metadata for this subscription. This is set if this is a
		// commercial subscription i.e. if this subscription was created from
		// subscribing to a commercial listing.
		commercial_info?: [...close({
			cloud_marketplace?: [...close({
				order?: string
			})]
		})]

		// Timestamp when the subscription was created.
		creation_time?: string

		// The ID of the data exchange. Must contain only Unicode letters, numbers
		// (0-9), underscores (_). Should not use characters that require URL-escaping,
		// or characters outside of ASCII, spaces.
		data_exchange_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Timestamp when the subscription was last modified.
		last_modify_time?: string

		// Output only. Map of listing resource names to associated linked resource,
		// e.g. projects/123/locations/US/dataExchanges/456/listings/789 -> projects/123/datasets/my_dataset
		linked_dataset_map?: [...close({
			linked_dataset?:             string
			linked_pubsub_subscription?: string
			listing?:                    string
			resource_name?:              string
		})]

		// Output only. Linked resources created in the subscription. Only contains
		// values if state = STATE_ACTIVE.
		linked_resources?: [...close({
			linked_dataset?:             string
			linked_pubsub_subscription?: string
			listing?:                    string
		})]

		// The ID of the listing. Must contain only Unicode letters, numbers (0-9),
		// underscores (_). Should not use characters that require URL-escaping, or
		// characters outside of ASCII, spaces.
		listing_id!: string

		// The name of the location of the data exchange. Distinct from the location of
		// the destination data set.
		location!: string

		// Output only. By default, false. If true, the Subscriber agreed to the email
		// sharing mandate that is enabled for Listing.
		log_linked_dataset_query_user_email?: bool

		// The resource name of the subscription. e.g. "projects/myproject/locations/US/subscriptions/123"
		name?: string

		// Display name of the project of this subscription.
		organization_display_name?: string

		// Organization of the project this subscription belongs to.
		organization_id?: string

		// Listing shared asset type.
		resource_type?: string
		project?:       string

		// Current state of the subscription.
		state?: string

		// Email of the subscriber.
		subscriber_contact?: string

		// The subscription id used to reference the subscription.
		subscription_id?: string
	})

	#destination_dataset: close({
		dataset_reference!: matchN(1, [_#defs."/$defs/destination_dataset/$defs/dataset_reference", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_dataset/$defs/dataset_reference"]])

		// A user-friendly description of the dataset.
		description?: string

		// A descriptive name for the dataset.
		friendly_name?: string

		// The labels associated with this dataset. You can use these to
		// organize and group your datasets.
		labels?: [string]: string

		// The geographic location where the dataset should reside.
		// See https://cloud.google.com/bigquery/docs/locations for supported locations.
		location!: string

		// List of regions where the subscriber wants dataset replicas.
		replica_locations?: [...string]
	})

	#destination_pubsub_subscription: close({
		pubsub_subscription!: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/destination_dataset/$defs/dataset_reference": close({
		// A unique ID for this dataset, without the project name. The ID must contain
		// only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
		// length is 1,024 characters.
		dataset_id!: string

		// The ID of the project containing this dataset.
		project_id!: string
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription": close({
		bigquery_config?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/bigquery_config", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/bigquery_config"]])
		cloud_storage_config?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/cloud_storage_config", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/cloud_storage_config"]])
		dead_letter_policy?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/dead_letter_policy", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/dead_letter_policy"]])
		expiration_policy?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/expiration_policy", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/expiration_policy"]])
		push_config?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config"]])
		retry_policy?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/retry_policy"]])

		// The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to
		// acknowledge receipt before resending the message. In the interval after the message is delivered
		// and before it is acknowledged, it is considered to be outstanding. During that time period, the
		// message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is
		// used as the initial value for the ack deadline. To override this value for a given message, call
		// 'ModifyAckDeadline' with the corresponding 'ack_id' if using non-streaming pull or send the
		// 'ack_id' in a 'StreamingModifyAckDeadlineRequest' if using streaming pull. The minimum custom
		// deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600
		// seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push
		// delivery, this value is also used to set the request timeout for the call to the push endpoint.
		// If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver
		// the message.
		ack_deadline_seconds?: number

		// Indicates whether the subscription is detached from its topic. Detached subscriptions don't
		// receive messages from their topic and don't retain any backlog. 'Pull' and 'StreamingPull'
		// requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes
		// to the endpoint will not be made.
		detached?: bool

		// If true, Pub/Sub provides the following guarantees for the delivery of a message with a given
		// value of 'message_id' on this subscription: The message sent to a subscriber is guaranteed not
		// to be resent before the message's acknowledgement deadline expires. An acknowledged message will
		// not be resent to a subscriber. Note that subscribers may still receive multiple copies of a
		// message when 'enableExactlyOnceDelivery' is true if the message was published multiple times by
		// a publisher client. These copies are considered distinct by Pub/Sub and have
		// distinct 'message_id'
		// values.
		enable_exactly_once_delivery?: bool

		// If true, messages published with the same 'ordering_key' in 'PubsubMessage'
		// will be delivered to the subscribers in the order in which they are received
		// by the Pub/Sub system. Otherwise, they may be delivered in any order.
		enable_message_ordering?: bool

		// An expression written in the Pub/Sub filter language. If non-empty, then only 'PubsubMessage's
		// whose 'attributes' field matches the filter are delivered on this subscription. If empty, then
		// no messages are filtered out.
		filter?: string

		// See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
		labels?: [string]: string

		// How long to retain unacknowledged messages in the subscription's backlog, from the moment a
		// message is published. If 'retainAckedMessages' is true, then this also configures the retention
		// of acknowledged messages, and thus configures how far back in time a Seek can be done. Defaults
		// to 7 days. Cannot be more than 31 days or less than 10 minutes.
		message_retention_duration?: string

		// Name of the subscription. Format is 'projects/{project}/subscriptions/{sub}'.
		name!: string

		// Indicates whether to retain acknowledged messages. If true, then messages are not expunged from
		// the subscription's backlog, even if they are acknowledged, until they fall out of the
		// 'messageRetentionDuration' window. This must be true if you would like to Seek to a timestamp
		// in the past to replay previously-acknowledged messages.
		retain_acked_messages?: bool
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/bigquery_config": close({
		// When true and 'useTopicSchema' is true, any fields that are a part of the topic schema that are
		// not part of the BigQuery table schema are dropped when writing to BigQuery.
		// Otherwise, the schemas
		// must be kept in sync and any messages with extra fields are not written and remain in the
		// subscription's backlog.
		drop_unknown_fields?: bool

		// The service account to use to write to BigQuery. The subscription creator or updater that
		// specifies this field must have 'iam.serviceAccounts.actAs' permission on the service account.
		// If not specified, the Pub/Sub service agent,
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
		service_account_email?: string

		// The name of the table to which to write data, of the form
		// {projectId}.{datasetId}.{tableId}
		table?: string

		// When true, use the BigQuery table's schema as the columns to write to in BigQuery.
		// 'useTableSchema' and 'useTopicSchema' cannot be enabled at the same time.
		use_table_schema?: bool

		// When true, use the topic's schema as the columns to write to in BigQuery,
		// if it exists. 'useTopicSchema' and 'useTableSchema' cannot be enabled at the same time.
		use_topic_schema?: bool

		// When true, write the subscription name, message_id, publish_time, attributes, and ordering_key
		// to additional columns in the table. The subscription name, message_id, and publish_time fields
		// are put in their own columns while all other message properties (other than data) are written
		// to a JSON object in the attributes column.
		write_metadata?: bool
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/cloud_storage_config": close({
		avro_config?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/cloud_storage_config/$defs/avro_config", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/cloud_storage_config/$defs/avro_config"]])

		// User-provided name for the Cloud Storage bucket. The bucket must be created by the user.
		// The bucket name must be without any prefix like "gs://". See the
		// [bucket naming requirements](https://cloud.google.com/storage/docs/buckets#naming).
		bucket?: string

		// User-provided format string specifying how to represent datetimes in Cloud Storage filenames.
		// See the [datetime format
		// guidance](https://cloud.google.com/pubsub/docs/create-cloudstorage-subscription#file_names).
		filename_datetime_format?: string

		// User-provided prefix for Cloud Storage filename. See the
		// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
		filename_prefix?: string

		// User-provided suffix for Cloud Storage filename. See the
		// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
		// Must not end in "/".
		filename_suffix?: string

		// The maximum bytes that can be written to a Cloud Storage file before a new file is created.
		// Min 1 KB, max 10 GiB. The maxBytes limit may be exceeded in cases where messages are larger
		// than the limit.
		max_bytes?: string

		// The maximum duration that can elapse before a new Cloud Storage file is created.
		// Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the subscription's
		// acknowledgement deadline.
		max_duration?: string

		// The maximum number of messages that can be written to a Cloud Storage file before a new file
		// is created. Min 1000 messages.
		max_messages?: string

		// The service account to use to write to Cloud Storage. The subscription creator or updater that
		// specifies this field must have 'iam.serviceAccounts.actAs' permission on the service account.
		// If not specified, the Pub/Sub service agent,
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
		service_account_email?: string
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/cloud_storage_config/$defs/avro_config": close({
		// When true, the output Cloud Storage file will be serialized using
		// the topic schema, if it exists.
		use_topic_schema?: bool

		// When true, write the subscription name, message_id, publish_time, attributes, and ordering_key
		// as additional fields in the output. The subscription name, message_id, and publish_time fields
		// are put in their own fields while all other message properties other than data (for example,
		// an ordering_key, if present) are added as entries in the attributes map.
		write_metadata?: bool
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/dead_letter_policy": close({
		// The name of the topic to which dead letter messages should be published. Format is
		// 'projects/{project}/topics/{topic}'. The Pub/Sub service account associated with the enclosing
		// subscription's parent project (i.e.,
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com)
		// must have permission to Publish() to this topic. The operation will fail if
		// the topic does not exist.
		// Users should ensure that there is a subscription attached to this topic since
		// messages published to
		// a topic with no subscriptions are lost.
		dead_letter_topic?: string

		// The maximum number of delivery attempts for any message. The value must be between 5 and 100.
		// The number of delivery attempts is defined as 1 + (the sum of number of NACKs and number of times
		// the acknowledgement deadline has been exceeded for the message). A NACK is any call to
		// ModifyAckDeadline with a 0 deadline. Note that client libraries may automatically extend
		// ack_deadlines. This field will be honored on a best effort basis. If this parameter is 0, a
		// default value of 5 is used.
		max_delivery_attempts?: number
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/expiration_policy": close({
		// Specifies the "time-to-live" duration for an associated resource. The resource expires if it
		// is not active for a period of 'ttl'. The definition of "activity" depends on the type of the
		// associated resource. The minimum and maximum allowed values for 'ttl' depend on the type of
		// the associated resource, as well. If 'ttl' is not set, the associated resource never expires.
		ttl?: string
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config": close({
		no_wrapper?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config/$defs/no_wrapper", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config/$defs/no_wrapper"]])
		oidc_token?: matchN(1, [_#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config/$defs/oidc_token", list.MaxItems(1) & [..._#defs."/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config/$defs/oidc_token"]])

		// Endpoint configuration attributes that can be used to control different
		// aspects of the message delivery.
		// The only currently supported attribute is 'x-goog-version', which you can use
		// to change the format of the
		// pushed message. This attribute indicates the version of the data expected by
		// the endpoint. This controls
		// the shape of the pushed message (i.e., its fields and metadata). If not present during the
		// 'CreateSubscription' call, it will default to the version of the Pub/Sub API
		// used to make such call.
		// If not present in a 'ModifyPushConfig' call, its value will not be changed.
		// 'GetSubscription' calls
		// will always return a valid version, even if the subscription was created without this attribute.
		// The only supported values for the 'x-goog-version' attribute are: 'v1beta1': uses the push format
		// defined in the v1beta1 Pub/Sub API. 'v1' or 'v1beta2': uses the push format
		// defined in the v1 Pub/Sub API.
		attributes?: [string]: string

		// A URL locating the endpoint to which messages should be pushed.
		// For example, a Webhook endpoint might use 'https://example.com/push'.
		push_endpoint?: string
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config/$defs/no_wrapper": close({
		// When true, writes the Pub/Sub message metadata to 'x-goog-pubsub-<KEY>:<VAL>' headers of the
		// HTTP request. Writes the Pub/Sub message attributes to '<KEY>:<VAL>' headers of the HTTP request.
		write_metadata?: bool
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/push_config/$defs/oidc_token": close({
		// Audience to be used when generating OIDC token. The audience claim identifies the recipients
		// that the JWT is intended for. The audience value is a single case-sensitive string. Having
		// multiple values (array) for the audience field is not supported. More info about the OIDC JWT
		// token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified,
		// the Push endpoint URL will be used.
		audience?: string

		// Service account email used for generating the OIDC token. For more information
		// on setting up authentication, see Push subscriptions.
		service_account_email?: string
	})

	_#defs: "/$defs/destination_pubsub_subscription/$defs/pubsub_subscription/$defs/retry_policy": close({
		// The maximum delay between consecutive deliveries of a given message.
		// Value should be between 0 and 600 seconds. Defaults to 600 seconds.
		maximum_backoff?: string

		// The minimum delay between consecutive deliveries of a given message.
		// Value should be between 0 and 600 seconds. Defaults to 10 seconds.
		minimum_backoff?: string
	})
}
