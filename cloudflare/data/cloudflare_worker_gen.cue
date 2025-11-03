package data

#cloudflare_worker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_worker")
	close({
		// Identifier.
		account_id!: string

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

		// When the Worker was created.
		created_on?: string

		// Identifier for the Worker, which can be ID or name.
		id?: string

		// Other resources that reference the Worker and depend on it
		// existing.
		references?: close({
			// Other Workers that reference the Worker as an outbound for a
			// dispatch namespace.
			dispatch_namespace_outbounds?: matchN(1, [close({
				// ID of the dispatch namespace.
				namespace_id?: string

				// Name of the dispatch namespace.
				namespace_name?: string

				// ID of the Worker using the dispatch namespace.
				worker_id?: string

				// Name of the Worker using the dispatch namespace.
				worker_name?: string
			}), [...close({
				// ID of the dispatch namespace.
				namespace_id?: string

				// Name of the dispatch namespace.
				namespace_name?: string

				// ID of the Worker using the dispatch namespace.
				worker_id?: string

				// Name of the Worker using the dispatch namespace.
				worker_name?: string
			})]])

			// Custom domains connected to the Worker.
			domains?: matchN(1, [close({
				// ID of the TLS certificate issued for the custom domain.
				certificate_id?: string

				// Full hostname of the custom domain, including the zone name.
				hostname?: string

				// ID of the custom domain.
				id?: string

				// ID of the zone.
				zone_id?: string

				// Name of the zone.
				zone_name?: string
			}), [...close({
				// ID of the TLS certificate issued for the custom domain.
				certificate_id?: string

				// Full hostname of the custom domain, including the zone name.
				hostname?: string

				// ID of the custom domain.
				id?: string

				// ID of the zone.
				zone_id?: string

				// Name of the zone.
				zone_name?: string
			})]])

			// Other Workers that reference Durable Object classes implemented
			// by the Worker.
			durable_objects?: matchN(1, [close({
				// ID of the Durable Object namespace being used.
				namespace_id?: string

				// Name of the Durable Object namespace being used.
				namespace_name?: string

				// ID of the Worker using the Durable Object implementation.
				worker_id?: string

				// Name of the Worker using the Durable Object implementation.
				worker_name?: string
			}), [...close({
				// ID of the Durable Object namespace being used.
				namespace_id?: string

				// Name of the Durable Object namespace being used.
				namespace_name?: string

				// ID of the Worker using the Durable Object implementation.
				worker_id?: string

				// Name of the Worker using the Durable Object implementation.
				worker_name?: string
			})]])

			// Queues that send messages to the Worker.
			queues?: matchN(1, [close({
				// ID of the queue consumer configuration.
				queue_consumer_id?: string

				// ID of the queue.
				queue_id?: string

				// Name of the queue.
				queue_name?: string
			}), [...close({
				// ID of the queue consumer configuration.
				queue_consumer_id?: string

				// ID of the queue.
				queue_id?: string

				// Name of the queue.
				queue_name?: string
			})]])

			// Other Workers that reference the Worker using [service
			// bindings](https://developers.cloudflare.com/workers/runtime-apis/bindings/service-bindings/).
			workers?: matchN(1, [close({
				// ID of the referencing Worker.
				id?: string

				// Name of the referencing Worker.
				name?: string
			}), [...close({
				// ID of the referencing Worker.
				id?: string

				// Name of the referencing Worker.
				name?: string
			})]])
		})

		// Whether logpush is enabled for the Worker.
		logpush?: bool

		// Name of the Worker.
		name?: string

		// Tags associated with the Worker.
		tags?: [...string]

		// When the Worker was most recently updated.
		updated_on?: string

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
			name?: string
		}), [...close({
			// Name of the consumer Worker.
			name?: string
		})]])

		// Identifier for the Worker, which can be ID or name.
		worker_id?: string
	})
}
