package data

#cloudflare_r2_bucket_event_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_event_notification")
	close({
		// Account ID.
		account_id!: string
		rules?: matchN(1, [close({
			// Array of R2 object actions that will trigger notifications.
			actions?: [...string]

			// Timestamp when the rule was created.
			created_at?: string

			// A description that can be used to identify the event
			// notification rule after creation.
			description?: string

			// Notifications will be sent only for objects with this prefix.
			prefix?: string

			// Rule ID.
			rule_id?: string

			// Notifications will be sent only for objects with this suffix.
			suffix?: string
		}), [...close({
			// Array of R2 object actions that will trigger notifications.
			actions?: [...string]

			// Timestamp when the rule was created.
			created_at?: string

			// A description that can be used to identify the event
			// notification rule after creation.
			description?: string

			// Notifications will be sent only for objects with this prefix.
			prefix?: string

			// Rule ID.
			rule_id?: string

			// Notifications will be sent only for objects with this suffix.
			suffix?: string
		})]])

		// Name of the bucket.
		bucket_name!: string

		// Queue ID.
		queue_id!: string

		// Name of the queue.
		queue_name?: string
	})
}
