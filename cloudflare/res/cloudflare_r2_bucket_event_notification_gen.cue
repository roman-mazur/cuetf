package res

#cloudflare_r2_bucket_event_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_r2_bucket_event_notification")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string

		// Array of rules to drive notifications.
		rules!: matchN(1, [close({
			// Array of R2 object actions that will trigger notifications.
			actions!: [...string]

			// A description that can be used to identify the event
			// notification rule after creation.
			description?: string

			// Notifications will be sent only for objects with this prefix.
			prefix?: string

			// Notifications will be sent only for objects with this suffix.
			suffix?: string
		}), [...close({
			// Array of R2 object actions that will trigger notifications.
			actions!: [...string]

			// A description that can be used to identify the event
			// notification rule after creation.
			description?: string

			// Notifications will be sent only for objects with this prefix.
			prefix?: string

			// Notifications will be sent only for objects with this suffix.
			suffix?: string
		})]])

		// Jurisdiction of the bucket
		jurisdiction?: string

		// Queue ID.
		queue_id!: string

		// Name of the queue.
		queue_name?: string
	})
}
