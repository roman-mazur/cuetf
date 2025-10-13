package res

#cloudflare_worker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_worker")
	close({
		// Identifier.
		account_id!: string

		// When the Worker was created.
		created_on?: string

		// Immutable ID of the Worker.
		id?: string

		// Whether logpush is enabled for the Worker.
		logpush?: bool

		// Observability settings for the Worker.
		observability?: close({
			// Whether observability is enabled for the Worker.
			enabled?: bool

			// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1
			// = 10%).
			head_sampling_rate?: number

			// Log settings for the Worker.
			logs?: close({
				// Whether logs are enabled for the Worker.
				enabled?: bool

				// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%).
				head_sampling_rate?: number

				// Whether [invocation
				// logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs)
				// are enabled for the Worker.
				invocation_logs?: bool
			})
		})

		// Name of the Worker.
		name!: string

		// Subdomain settings for the Worker.
		subdomain?: close({
			// Whether the *.workers.dev subdomain is enabled for the Worker.
			enabled?: bool

			// Whether [preview
			// URLs](https://developers.cloudflare.com/workers/configuration/previews/)
			// are enabled for the Worker.
			previews_enabled?: bool
		})

		// Other Workers that should consume logs from the Worker.
		tail_consumers?: matchN(1, [close({
			// Name of the consumer Worker.
			name!: string
		}), [...close({
			// Name of the consumer Worker.
			name!: string
		})]])

		// Tags associated with the Worker.
		tags?: [...string]

		// When the Worker was most recently updated.
		updated_on?: string
	})
}
