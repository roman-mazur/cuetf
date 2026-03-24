package res

import "list"

#scaleway_mnq_sqs_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_sqs_queue")
	close({
		dead_letter_queue?: matchN(1, [#dead_letter_queue, list.MaxItems(1) & [...#dead_letter_queue]])
		timeouts?: #timeouts

		// SQS access key
		access_key!: string

		// The ARN of the queue
		arn?: string

		// Specifies whether to enable content-based deduplication. Allows
		// omitting the deduplication ID
		content_based_deduplication?: bool

		// Whether the queue is a FIFO queue. If true, the queue name must
		// end with .fifo
		fifo_queue?: bool
		id?:         string

		// The number of seconds the queue retains a message.
		message_max_age?: number

		// The maximum size of a message. Should be in bytes.
		message_max_size?: number

		// The name of the queue. Conflicts with name_prefix.
		name?: string

		// Creates a unique name beginning with the specified prefix.
		// Conflicts with name.
		name_prefix?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The number of seconds to wait for a message to arrive in the
		// queue before returning.
		receive_wait_time_seconds?: number

		// The region you want to attach the resource to
		region?: string

		// SQS secret key
		secret_key!: string

		// The sqs endpoint
		sqs_endpoint?: string

		// The URL of the queue
		url?: string

		// The number of seconds a message is hidden from other consumers.
		visibility_timeout_seconds?: number
	})

	#dead_letter_queue: close({
		// The ID or ARN of the dead-letter queue where messages are sent
		// after the maximum receive count is exceeded.
		id!: string

		// The number of times a message is delivered to the source queue
		// before being sent to the dead-letter queue. Must be between 1
		// and 1,000.
		max_receive_count!: number
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
