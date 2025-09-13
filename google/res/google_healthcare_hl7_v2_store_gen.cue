package res

import "list"

#google_healthcare_hl7_v2_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_healthcare_hl7_v2_store")
	close({
		// Identifies the dataset addressed by this request. Must be in
		// the format
		// 'projects/{project}/locations/{location}/datasets/{dataset}'
		dataset!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// User-supplied key-value pairs used to organize HL7v2 stores.
		//
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes, and must
		// conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
		//
		// Label values are optional, must be between 1 and 63 characters
		// long, have a UTF-8 encoding of maximum 128
		// bytes, and must conform to the following PCRE regular
		// expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
		//
		// No more than 64 labels can be associated with a given store.
		//
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The resource name for the Hl7V2Store.
		//
		// ** Changing this property may recreate the Hl7v2 store
		// (removing all data) **
		name!: string

		// Determines whether duplicate messages are allowed.
		reject_duplicate_message?: bool
		id?:                       string

		// The fully qualified name of this dataset
		self_link?: string
		notification_config?: matchN(1, [#notification_config, list.MaxItems(1) & [...#notification_config]])
		notification_configs?: matchN(1, [#notification_configs, [...#notification_configs]])
		parser_config?: matchN(1, [#parser_config, list.MaxItems(1) & [...#parser_config]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#notification_config: close({
		// The Cloud Pub/Sub topic that notifications of changes are
		// published on. Supplied by the client.
		// PubsubMessage.Data will contain the resource name.
		// PubsubMessage.MessageId is the ID of this message.
		// It is guaranteed to be unique within the topic.
		// PubsubMessage.PublishTime is the time at which the message
		// was published. Notifications are only sent if the topic is
		// non-empty. Topic names must be scoped to a
		// project.
		// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com
		// must have publisher permissions on the given
		// Cloud Pub/Sub topic. Not having adequate permissions will cause
		// the calls that send notifications to fail.
		pubsub_topic!: string
	})

	#notification_configs: close({
		// Restricts notifications sent for messages matching a filter. If
		// this is empty, all messages
		// are matched. Syntax:
		// https://cloud.google.com/appengine/docs/standard/python/search/query_strings
		//
		// Fields/functions available for filtering are:
		//
		// * messageType, from the MSH-9.1 field. For example, NOT
		// messageType = "ADT".
		// * send_date or sendDate, the YYYY-MM-DD date the message was
		// sent in the dataset's timeZone, from the MSH-7 segment. For
		// example, send_date < "2017-01-02".
		// * sendTime, the timestamp when the message was sent, using the
		// RFC3339 time format for comparisons, from the MSH-7 segment.
		// For example, sendTime < "2017-01-02T00:00:00-05:00".
		// * sendFacility, the care center that the message came from,
		// from the MSH-4 segment. For example, sendFacility = "ABC".
		// * PatientId(value, type), which matches if the message lists a
		// patient having an ID of the given value and type in the PID-2,
		// PID-3, or PID-4 segments. For example, PatientId("123456",
		// "MRN").
		// * labels.x, a string value of the label with key x as set using
		// the Message.labels map. For example, labels."priority"="high".
		// The operator :* can be used to assert the existence of a
		// label. For example, labels."priority":*.
		filter?: string

		// The Cloud Pub/Sub topic that notifications of changes are
		// published on. Supplied by the client.
		// PubsubMessage.Data will contain the resource name.
		// PubsubMessage.MessageId is the ID of this message.
		// It is guaranteed to be unique within the topic.
		// PubsubMessage.PublishTime is the time at which the message
		// was published. Notifications are only sent if the topic is
		// non-empty. Topic names must be scoped to a
		// project.
		// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com
		// must have publisher permissions on the given
		// Cloud Pub/Sub topic. Not having adequate permissions will cause
		// the calls that send notifications to fail.
		//
		// If a notification cannot be published to Cloud Pub/Sub, errors
		// will be logged to Stackdriver
		pubsub_topic!: string
	})

	#parser_config: close({
		// Determines whether messages with no header are allowed.
		allow_null_header?: bool

		// JSON encoded string for schemas used to parse messages in this
		// store if schematized parsing is desired.
		schema?: string

		// Byte(s) to be used as the segment terminator. If this is unset,
		// '\r' will be used as segment terminator.
		//
		// A base64-encoded string.
		segment_terminator?: string

		// The version of the unschematized parser to be used when a
		// custom 'schema' is not set. Default value: "V1" Possible
		// values: ["V1", "V2", "V3"]
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
