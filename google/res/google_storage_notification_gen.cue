package res

#google_storage_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_notification")
	close({
		// The name of the bucket.
		bucket!: string

		// A set of key/value attribute pairs to attach to each Cloud
		// Pub/Sub message published for this notification subscription.
		custom_attributes?: [string]: string

		// List of event type filters for this notification config. If not
		// specified, Cloud Storage will send notifications for all event
		// types. The valid types are: "OBJECT_FINALIZE",
		// "OBJECT_METADATA_UPDATE", "OBJECT_DELETE", "OBJECT_ARCHIVE"
		event_types?: [...string]

		// The ID of the created notification.
		notification_id?: string

		// Specifies a prefix path filter for this notification config.
		// Cloud Storage will only send notifications for objects in this
		// bucket whose names begin with the specified prefix.
		object_name_prefix?: string
		id?:                 string

		// The desired content of the Payload. One of "JSON_API_V1" or
		// "NONE".
		payload_format!: string

		// The URI of the created resource.
		self_link?: string

		// The Cloud Pub/Sub topic to which this subscription publishes.
		topic!: string
	})
}
