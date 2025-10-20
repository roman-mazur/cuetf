package res

import "list"

#google_pubsub_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_pubsub_subscription")
	close({
		// This value is the maximum time after a subscriber receives a
		// message
		// before the subscriber should acknowledge the message. After
		// message
		// delivery but before the ack deadline expires and before the
		// message is
		// acknowledged, it is an outstanding message and will not be
		// delivered
		// again during that time (on a best-effort basis).
		//
		// For pull subscriptions, this value is used as the initial value
		// for
		// the ack deadline. To override this value for a given message,
		// call
		// subscriptions.modifyAckDeadline with the corresponding ackId if
		// using
		// pull. The minimum custom deadline you can specify is 10
		// seconds. The
		// maximum custom deadline you can specify is 600 seconds (10
		// minutes).
		// If this parameter is 0, a default value of 10 seconds is used.
		//
		// For push delivery, this value is also used to set the request
		// timeout
		// for the call to the push endpoint.
		//
		// If the subscriber never acknowledges the message, the Pub/Sub
		// system
		// will eventually redeliver the message.
		ack_deadline_seconds?: number

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If 'true', Pub/Sub provides the following guarantees for the
		// delivery
		// of a message with a given value of messageId on this
		// Subscriptions':
		//
		// - The message sent to a subscriber is guaranteed not to be
		// resent before the message's acknowledgement deadline expires.
		//
		// - An acknowledged message will not be resent to a subscriber.
		//
		// Note that subscribers may still receive multiple copies of a
		// message when 'enable_exactly_once_delivery'
		// is true if the message was published multiple times by a
		// publisher client. These copies are considered distinct by
		// Pub/Sub and have distinct messageId values
		enable_exactly_once_delivery?: bool

		// If 'true', messages published with the same orderingKey in
		// PubsubMessage will be delivered to
		// the subscribers in the order in which they are received by the
		// Pub/Sub system. Otherwise, they
		// may be delivered in any order.
		enable_message_ordering?: bool

		// The subscription only delivers the messages that match the
		// filter.
		// Pub/Sub automatically acknowledges the messages that don't
		// match the filter. You can filter messages
		// by their attributes. The maximum length of a filter is 256
		// bytes. After creating the subscription,
		// you can't modify the filter.
		filter?: string
		id?:     string

		// A set of key/value label pairs to assign to this Subscription.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// How long to retain unacknowledged messages in the
		// subscription's
		// backlog, from the moment a message is published. If
		// retain_acked_messages is true, then this also configures the
		// retention
		// of acknowledged messages, and thus configures how far back in
		// time a
		// subscriptions.seek can be done. Defaults to 7 days. Cannot be
		// more
		// than 31 days ('"2678400s"') or less than 10 minutes ('"600s"').
		//
		// A duration in seconds with up to nine fractional digits,
		// terminated
		// by 's'. Example: '"600.5s"'.
		message_retention_duration?: string

		// Name of the subscription.
		name!: string
		bigquery_config?: matchN(1, [#bigquery_config, list.MaxItems(1) & [...#bigquery_config]])
		cloud_storage_config?: matchN(1, [#cloud_storage_config, list.MaxItems(1) & [...#cloud_storage_config]])
		dead_letter_policy?: matchN(1, [#dead_letter_policy, list.MaxItems(1) & [...#dead_letter_policy]])
		expiration_policy?: matchN(1, [#expiration_policy, list.MaxItems(1) & [...#expiration_policy]])
		message_transforms?: matchN(1, [#message_transforms, [...#message_transforms]])
		push_config?: matchN(1, [#push_config, list.MaxItems(1) & [...#push_config]])
		retry_policy?: matchN(1, [#retry_policy, list.MaxItems(1) & [...#retry_policy]])
		timeouts?: #timeouts

		// Indicates whether to retain acknowledged messages. If 'true',
		// then
		// messages are not expunged from the subscription's backlog, even
		// if
		// they are acknowledged, until they fall out of the
		// messageRetentionDuration window.
		retain_acked_messages?: bool
		project?:               string

		// Input only. Resource manager tags to be bound to the
		// subscription. Tag
		// keys and values have the same definition as resource manager
		// tags. Keys
		// must be in the format tagKeys/{tag_key_id}, and values are in
		// the format
		// tagValues/456. The field is ignored when empty. The field is
		// immutable and
		// causes resource replacement when mutated. This field is only
		// set at create
		// time and modifying this field after creation will trigger
		// recreation. To
		// apply tags to an existing resource, see the
		// 'google_tags_tag_value'
		// resource.
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A reference to a Topic resource, of the form
		// projects/{project}/topics/{{name}}
		// (as in the id property of a google_pubsub_topic), or just a
		// topic name if
		// the topic is in the same project as the subscription.
		topic!: string
	})

	#bigquery_config: close({
		// When true and use_topic_schema or use_table_schema is true, any
		// fields that are a part of the topic schema or message schema
		// that
		// are not part of the BigQuery table schema are dropped when
		// writing to BigQuery. Otherwise, the schemas must be kept in
		// sync
		// and any messages with extra fields are not written and remain
		// in the subscription's backlog.
		drop_unknown_fields?: bool

		// The service account to use to write to BigQuery. If not
		// specified, the Pub/Sub
		// [service
		// agent](https://cloud.google.com/iam/docs/service-agents),
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com,
		// is used.
		service_account_email?: string

		// The name of the table to which to write data, of the form
		// {projectId}.{datasetId}.{tableId}
		table!: string

		// When true, use the BigQuery table's schema as the columns to
		// write to in BigQuery. Messages
		// must be published in JSON format. Only one of use_topic_schema
		// and use_table_schema can be set.
		use_table_schema?: bool

		// When true, use the topic's schema as the columns to write to in
		// BigQuery, if it exists.
		// Only one of use_topic_schema and use_table_schema can be set.
		use_topic_schema?: bool

		// When true, write the subscription name, messageId, publishTime,
		// attributes, and orderingKey to additional columns in the
		// table.
		// The subscription name, messageId, and publishTime fields are
		// put in their own columns while all other message properties
		// (other than data) are written to a JSON object in the
		// attributes column.
		write_metadata?: bool
	})

	#cloud_storage_config: close({
		// User-provided name for the Cloud Storage bucket. The bucket
		// must be created by the user. The bucket name must be without
		// any prefix like "gs://".
		bucket!: string

		// User-provided format string specifying how to represent
		// datetimes in Cloud Storage filenames.
		filename_datetime_format?: string

		// User-provided prefix for Cloud Storage filename.
		filename_prefix?: string

		// User-provided suffix for Cloud Storage filename. Must not end
		// in "/".
		filename_suffix?: string

		// The maximum bytes that can be written to a Cloud Storage file
		// before a new file is created. Min 1 KB, max 10 GiB.
		// The maxBytes limit may be exceeded in cases where messages are
		// larger than the limit.
		max_bytes?: number

		// The maximum duration that can elapse before a new Cloud Storage
		// file is created. Min 1 minute, max 10 minutes, default 5
		// minutes.
		// May not exceed the subscription's acknowledgement deadline.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		max_duration?: string

		// The maximum messages that can be written to a Cloud Storage
		// file before a new file is created. Min 1000 messages.
		max_messages?: number
		avro_config?: matchN(1, [_#defs."/$defs/cloud_storage_config/$defs/avro_config", list.MaxItems(1) & [..._#defs."/$defs/cloud_storage_config/$defs/avro_config"]])

		// The service account to use to write to Cloud Storage. If not
		// specified, the Pub/Sub
		// [service
		// agent](https://cloud.google.com/iam/docs/service-agents),
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com,
		// is used.
		service_account_email?: string

		// An output-only field that indicates whether or not the
		// subscription can receive messages.
		state?: string
	})

	#dead_letter_policy: close({
		// The name of the topic to which dead letter messages should be
		// published.
		// Format is 'projects/{project}/topics/{topic}'.
		//
		// The Cloud Pub/Sub service account associated with the enclosing
		// subscription's
		// parent project (i.e.,
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com)
		// must have
		// permission to Publish() to this topic.
		//
		// The operation will fail if the topic does not exist.
		// Users should ensure that there is a subscription attached to
		// this topic
		// since messages published to a topic with no subscriptions are
		// lost.
		dead_letter_topic?: string

		// The maximum number of delivery attempts for any message. The
		// value must be
		// between 5 and 100.
		//
		// The number of delivery attempts is defined as 1 + (the sum of
		// number of
		// NACKs and number of times the acknowledgement deadline has been
		// exceeded for the message).
		//
		// A NACK is any call to ModifyAckDeadline with a 0 deadline. Note
		// that
		// client libraries may automatically extend ack_deadlines.
		//
		// This field will be honored on a best effort basis.
		//
		// If this parameter is 0, a default value of 5 is used.
		max_delivery_attempts?: number
	})

	#expiration_policy: close({
		// Specifies the "time-to-live" duration for an associated
		// resource. The
		// resource expires if it is not active for a period of ttl.
		// If ttl is set to "", the associated resource never expires.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'.
		// Example - "3.5s".
		ttl!: string
	})

	#message_transforms: close({
		javascript_udf?: matchN(1, [_#defs."/$defs/message_transforms/$defs/javascript_udf", list.MaxItems(1) & [..._#defs."/$defs/message_transforms/$defs/javascript_udf"]])

		// Controls whether or not to use this transform. If not set or
		// 'false',
		// the transform will be applied to messages. Default: 'true'.
		disabled?: bool
	})

	#push_config: close({
		no_wrapper?: matchN(1, [_#defs."/$defs/push_config/$defs/no_wrapper", list.MaxItems(1) & [..._#defs."/$defs/push_config/$defs/no_wrapper"]])
		oidc_token?: matchN(1, [_#defs."/$defs/push_config/$defs/oidc_token", list.MaxItems(1) & [..._#defs."/$defs/push_config/$defs/oidc_token"]])

		// Endpoint configuration attributes.
		//
		// Every endpoint has a set of API supported attributes that can
		// be used to control different aspects of the message delivery.
		//
		// The currently supported attribute is x-goog-version, which you
		// can use to change the format of the pushed message. This
		// attribute indicates the version of the data expected by
		// the endpoint. This controls the shape of the pushed message
		// (i.e., its fields and metadata). The endpoint version is
		// based on the version of the Pub/Sub API.
		//
		// If not present during the subscriptions.create call,
		// it will default to the version of the API used to make
		// such call. If not present during a
		// subscriptions.modifyPushConfig
		// call, its value will not be changed. subscriptions.get
		// calls will always return a valid version, even if the
		// subscription was created without this attribute.
		//
		// The possible values for this attribute are:
		//
		// - v1beta1: uses the push format defined in the v1beta1 Pub/Sub
		// API.
		// - v1 or v1beta2: uses the push format defined in the v1 Pub/Sub
		// API.
		attributes?: [string]: string

		// A URL locating the endpoint to which messages should be pushed.
		// For example, a Webhook endpoint might use
		// "https://example.com/push".
		push_endpoint!: string
	})

	#retry_policy: close({
		// The maximum delay between consecutive deliveries of a given
		// message. Value should be between 0 and 600 seconds. Defaults
		// to 600 seconds.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		maximum_backoff?: string

		// The minimum delay between consecutive deliveries of a given
		// message. Value should be between 0 and 600 seconds. Defaults
		// to 10 seconds.
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		minimum_backoff?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cloud_storage_config/$defs/avro_config": close({
		// When true, the output Cloud Storage file will be serialized
		// using the topic schema, if it exists.
		use_topic_schema?: bool

		// When true, write the subscription name, messageId, publishTime,
		// attributes, and orderingKey as additional fields in the
		// output.
		write_metadata?: bool
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

	_#defs: "/$defs/push_config/$defs/no_wrapper": close({
		// When true, writes the Pub/Sub message metadata to
		// 'x-goog-pubsub-<KEY>:<VAL>' headers of the HTTP request. Writes
		// the
		// Pub/Sub message attributes to '<KEY>:<VAL>' headers of the HTTP
		// request.
		write_metadata!: bool
	})

	_#defs: "/$defs/push_config/$defs/oidc_token": close({
		// Audience to be used when generating OIDC token. The audience
		// claim
		// identifies the recipients that the JWT is intended for. The
		// audience
		// value is a single case-sensitive string. Having multiple values
		// (array)
		// for the audience field is not supported. More info about the
		// OIDC JWT
		// token audience here:
		// https://tools.ietf.org/html/rfc7519#section-4.1.3
		// Note: if not specified, the Push endpoint URL will be used.
		audience?: string

		// Service account email to be used for generating the OIDC token.
		// The caller (for subscriptions.create, subscriptions.patch, and
		// subscriptions.modifyPushConfig RPCs) must have the
		// iam.serviceAccounts.actAs permission for the service account.
		service_account_email!: string
	})
}
