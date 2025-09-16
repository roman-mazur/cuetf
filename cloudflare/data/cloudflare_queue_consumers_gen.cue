package data

#cloudflare_queue_consumers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_queue_consumers")
	close({
		// A Resource identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
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
		queue_id!: string
	})
}
