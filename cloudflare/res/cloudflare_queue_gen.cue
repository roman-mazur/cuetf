package res

#cloudflare_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_queue")
	close({
		consumers?: matchN(1, [close({
			// A Resource identifier.
			consumer_id?: string
			created_on?:  string
			settings?: close({
				// The maximum number of messages to include in a batch.
				batch_size?: number

				// Maximum number of concurrent consumers that may consume from
				// this Queue. Set to `null` to automatically opt in to the
				// platform's maximum (recommended).
				max_concurrency?: number

				// The maximum number of retries
				max_retries?: number

				// The number of milliseconds to wait for a batch to fill up
				// before attempting to deliver it
				max_wait_time_ms?: number

				// The number of seconds to delay before making the message
				// available for another attempt.
				retry_delay?: number

				// The number of milliseconds that a message is exclusively
				// leased. After the timeout, the message becomes available for
				// another attempt.
				visibility_timeout_ms?: number
			})

			// A Resource identifier.
			queue_id?: string

			// Name of a Worker
			script?: string

			// Name of a Worker
			script_name?: string

			// Available values: "worker", "http_pull".
			type?: string
		}), [...close({
			// A Resource identifier.
			consumer_id?: string
			created_on?:  string
			settings?: close({
				// The maximum number of messages to include in a batch.
				batch_size?: number

				// Maximum number of concurrent consumers that may consume from
				// this Queue. Set to `null` to automatically opt in to the
				// platform's maximum (recommended).
				max_concurrency?: number

				// The maximum number of retries
				max_retries?: number

				// The number of milliseconds to wait for a batch to fill up
				// before attempting to deliver it
				max_wait_time_ms?: number

				// The number of seconds to delay before making the message
				// available for another attempt.
				retry_delay?: number

				// The number of milliseconds that a message is exclusively
				// leased. After the timeout, the message becomes available for
				// another attempt.
				visibility_timeout_ms?: number
			})

			// A Resource identifier.
			queue_id?: string

			// Name of a Worker
			script?: string

			// Name of a Worker
			script_name?: string

			// Available values: "worker", "http_pull".
			type?: string
		})]])

		// A Resource identifier.
		account_id!:            string
		consumers_total_count?: number
		created_on?:            string
		id?:                    string
		modified_on?:           string
		producers?: matchN(1, [close({
			bucket_name?: string
			script?:      string

			// Available values: "worker", "r2_bucket".
			type?: string
		}), [...close({
			bucket_name?: string
			script?:      string

			// Available values: "worker", "r2_bucket".
			type?: string
		})]])
		producers_total_count?: number
		queue_id?:              string
		queue_name!:            string
		settings?: close({
			// Number of seconds to delay delivery of all messages to
			// consumers.
			delivery_delay?: number

			// Indicates if message delivery to consumers is currently paused.
			delivery_paused?: bool

			// Number of seconds after which an unconsumed message will be
			// delayed.
			message_retention_period?: number
		})
	})
}
