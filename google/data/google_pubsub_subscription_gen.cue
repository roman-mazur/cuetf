package data

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

		// If delivery to BigQuery is used with this subscription, this
		// field is used to configure it.
		// Either pushConfig, bigQueryConfig or cloudStorageConfig can be
		// set, but not combined.
		// If all three are empty, then the subscriber will pull and ack
		// messages using API methods.
		bigquery_config?: [...close({
			drop_unknown_fields?:   bool
			service_account_email?: string
			table?:                 string
			use_table_schema?:      bool
			use_topic_schema?:      bool
			write_metadata?:        bool
		})]

		// If delivery to Cloud Storage is used with this subscription,
		// this field is used to configure it.
		// Either pushConfig, bigQueryConfig or cloudStorageConfig can be
		// set, but not combined.
		// If all three are empty, then the subscriber will pull and ack
		// messages using API methods.
		cloud_storage_config?: [...close({
			avro_config?: [...close({
				use_topic_schema?: bool
				write_metadata?:   bool
			})]
			bucket?:                   string
			filename_datetime_format?: string
			filename_prefix?:          string
			filename_suffix?:          string
			max_bytes?:                number
			max_duration?:             string
			max_messages?:             number
			service_account_email?:    string
			state?:                    string
		})]

		// A policy that specifies the conditions for dead lettering
		// messages in
		// this subscription. If dead_letter_policy is not set, dead
		// lettering
		// is disabled.
		//
		// The Cloud Pub/Sub service account associated with this
		// subscription's
		// parent project (i.e.,
		// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com)
		// must have
		// permission to Acknowledge() messages on this subscription.
		dead_letter_policy?: [...close({
			dead_letter_topic?:     string
			max_delivery_attempts?: number
		})]

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

		// A policy that specifies the conditions for this subscription's
		// expiration.
		// A subscription is considered active as long as any connected
		// subscriber
		// is successfully consuming messages from the subscription or is
		// issuing
		// operations on the subscription. If expirationPolicy is not set,
		// a default
		// policy with ttl of 31 days will be used. If it is set but ttl
		// is "", the
		// resource never expires. The minimum allowed value for
		// expirationPolicy.ttl
		// is 1 day.
		expiration_policy?: [...close({
			ttl?: string
		})]

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

		// Transforms to be applied to messages published to the topic.
		// Transforms are applied in the
		// order specified.
		message_transforms?: [...close({
			disabled?: bool
			javascript_udf?: [...close({
				code?:          string
				function_name?: string
			})]
		})]

		// Name of the subscription.
		name!:    string
		project?: string

		// If push delivery is used with this subscription, this field is
		// used to
		// configure it. An empty pushConfig signifies that the subscriber
		// will
		// pull and ack messages using API methods.
		push_config?: [...close({
			attributes?: [string]: string
			no_wrapper?: [...close({
				write_metadata?: bool
			})]
			oidc_token?: [...close({
				audience?:              string
				service_account_email?: string
			})]
			push_endpoint?: string
		})]

		// Indicates whether to retain acknowledged messages. If 'true',
		// then
		// messages are not expunged from the subscription's backlog, even
		// if
		// they are acknowledged, until they fall out of the
		// messageRetentionDuration window.
		retain_acked_messages?: bool

		// A policy that specifies how Pub/Sub retries message delivery
		// for this subscription.
		//
		// If not set, the default retry policy is applied. This generally
		// implies that messages will be retried as soon as possible for
		// healthy subscribers.
		// RetryPolicy will be triggered on NACKs or acknowledgement
		// deadline exceeded events for a given message
		retry_policy?: [...close({
			maximum_backoff?: string
			minimum_backoff?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A reference to a Topic resource, of the form
		// projects/{project}/topics/{{name}}
		// (as in the id property of a google_pubsub_topic), or just a
		// topic name if
		// the topic is in the same project as the subscription.
		topic?: string
	})
}
