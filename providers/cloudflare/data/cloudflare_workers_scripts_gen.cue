package data

cloudflare_workers_scripts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_scripts")
	close({
		// Identifier.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Global CacheW configuration for the Worker. When caching is on,
			// the platform provisions a `cloudflare.app` zone for the Worker.
			// A `type: worker` entry in the `exports` map can override this
			// value for a single entrypoint.
			cache_options?: close({
				// Whether cached responses are shared across Worker version
				// uploads. This is independent of `enabled`. It can stay true
				// while caching is off, so the preference survives turning
				// caching off and back on.
				cross_version_cache?: bool

				// Whether caching is enabled for this Worker.
				enabled?: bool
			})

			// Date indicating targeted support in the Workers runtime. Backwards
			// incompatible fixes to the runtime following this date will not affect this
			// Worker.
			compatibility_date?: string

			// Whether a Worker contains modules.
			has_modules?: bool

			// The name used to identify the script.
			id?: string

			// The client most recently used to deploy this Worker.
			last_deployed_from?: string

			// Whether Logpush is turned on for the Worker.
			logpush?: bool

			// The tag of the Durable Object migration that was most recently applied for this Worker.
			migration_tag?: string

			// When the script was last modified.
			modified_on?: string

			// Named exports, such as Durable Object class implementations and named entrypoints.
			named_handlers?: matchN(1, [close({
				// The names of handlers exported as part of the named export.
				handlers?: [...string]

				// The name of the export.
				name?: string
			}), [...close({
				// The names of handlers exported as part of the named export.
				handlers?: [...string]

				// The name of the export.
				name?: string
			})]])

			// Flags that enable or disable certain features in the Workers runtime. Used to
			// enable upcoming features or opt in or out of specific changes not included
			// in a `compatibility_date`.
			compatibility_flags?: [...string]

			// Observability settings for the Worker.
			observability?: close({
				// Whether observability is enabled for the Worker.
				enabled?: bool

				// Log settings for the Worker.
				logs?: close({
					// A list of destinations where logs will be exported to.
					destinations?: [...string]

					// Whether logs are enabled for the Worker.
					enabled?: bool

					// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
					head_sampling_rate?: number

					// Whether [invocation
					// logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs)
					// are enabled for the Worker.
					invocation_logs?: bool

					// Whether log persistence is enabled for the Worker.
					persist?: bool
				})

				// The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
				head_sampling_rate?: number

				// Trace settings for the Worker.
				traces?: close({
					// A list of destinations where traces will be exported to.
					destinations?: [...string]

					// Whether traces are enabled for the Worker.
					enabled?: bool

					// The sampling rate for traces. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
					head_sampling_rate?: number

					// Whether trace persistence is enabled for the Worker.
					persist?: bool

					// Controls how inbound trace context (traceparent/tracestate) headers on
					// incoming requests are handled. "authenticated" (default) honors inbound
					// trace context only when accompanied by a valid trace auth token. "accept"
					// unconditionally accepts inbound trace context. Requires the trace
					// propagation feature to be enabled.
					// Available values: "authenticated", "accept".
					propagation_policy?: string
				})
			})

			// When the script was created.
			created_on?: string

			// Configuration for [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			// Specify mode='smart' for Smart Placement, or one of region/hostname/host.
			placement?: close({
				// TCP host and port for targeted placement.
				host?: string

				// Array of placement targets (currently limited to single target).
				target?: matchN(1, [close({
					// TCP host:port for targeted placement.
					host?: string

					// HTTP hostname for targeted placement.
					hostname?: string

					// Cloud region in format 'provider:region'.
					region?: string
				}), [...close({
					// TCP host:port for targeted placement.
					host?: string

					// HTTP hostname for targeted placement.
					hostname?: string

					// Cloud region in format 'provider:region'.
					region?: string
				})]])

				// HTTP hostname for targeted placement.
				hostname?: string

				// The last time the script was analyzed for [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				last_analyzed_at?: string

				// Enables [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "smart", "targeted".
				mode?: string

				// Cloud region for targeted placement in format 'provider:region'.
				region?: string

				// Status of [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "SUCCESS", "UNSUPPORTED_APPLICATION", "INSUFFICIENT_INVOCATIONS".
				status?: string
			})

			// Hashed script content, can be used in a If-None-Match header when updating.
			etag?: string

			// Routes associated with the Worker.
			routes?: matchN(1, [close({
				// Identifier.
				id?: string

				// Pattern to match incoming requests against. [Learn
				// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
				pattern?: string

				// Name of the script to run if the route matches.
				script?: string
			}), [...close({
				// Identifier.
				id?: string

				// Pattern to match incoming requests against. [Learn
				// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
				pattern?: string

				// Name of the script to run if the route matches.
				script?: string
			})]])

			// The names of handlers exported as part of the default export.
			handlers?: [...string]

			// The immutable ID of the script.
			tag?: string

			// Tags associated with the Worker.
			tags?: [...string]

			// List of Workers that will consume logs from the attached Worker.
			tail_consumers?: matchN(1, [close({
				// Optional environment if the Worker utilizes one.
				environment?: string

				// Optional dispatch namespace the script belongs to.
				namespace?: string

				// Name of Worker that is to be the consumer.
				service?: string
			}), [...close({
				// Optional environment if the Worker utilizes one.
				environment?: string

				// Optional dispatch namespace the script belongs to.
				namespace?: string

				// Name of Worker that is to be the consumer.
				service?: string
			})]])

			// Whether a Worker contains assets.
			has_assets?: bool

			// Usage model for the Worker invocations.
			// Available values: "standard", "bundled", "unbound".
			usage_model?: string
		}), [...close({
			// Global CacheW configuration for the Worker. When caching is on,
			// the platform provisions a `cloudflare.app` zone for the Worker.
			// A `type: worker` entry in the `exports` map can override this
			// value for a single entrypoint.
			cache_options?: close({
				// Whether cached responses are shared across Worker version
				// uploads. This is independent of `enabled`. It can stay true
				// while caching is off, so the preference survives turning
				// caching off and back on.
				cross_version_cache?: bool

				// Whether caching is enabled for this Worker.
				enabled?: bool
			})

			// Date indicating targeted support in the Workers runtime. Backwards
			// incompatible fixes to the runtime following this date will not affect this
			// Worker.
			compatibility_date?: string

			// Whether a Worker contains modules.
			has_modules?: bool

			// The name used to identify the script.
			id?: string

			// The client most recently used to deploy this Worker.
			last_deployed_from?: string

			// Whether Logpush is turned on for the Worker.
			logpush?: bool

			// The tag of the Durable Object migration that was most recently applied for this Worker.
			migration_tag?: string

			// When the script was last modified.
			modified_on?: string

			// Named exports, such as Durable Object class implementations and named entrypoints.
			named_handlers?: matchN(1, [close({
				// The names of handlers exported as part of the named export.
				handlers?: [...string]

				// The name of the export.
				name?: string
			}), [...close({
				// The names of handlers exported as part of the named export.
				handlers?: [...string]

				// The name of the export.
				name?: string
			})]])

			// Flags that enable or disable certain features in the Workers runtime. Used to
			// enable upcoming features or opt in or out of specific changes not included
			// in a `compatibility_date`.
			compatibility_flags?: [...string]

			// Observability settings for the Worker.
			observability?: close({
				// Whether observability is enabled for the Worker.
				enabled?: bool

				// Log settings for the Worker.
				logs?: close({
					// A list of destinations where logs will be exported to.
					destinations?: [...string]

					// Whether logs are enabled for the Worker.
					enabled?: bool

					// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
					head_sampling_rate?: number

					// Whether [invocation
					// logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs)
					// are enabled for the Worker.
					invocation_logs?: bool

					// Whether log persistence is enabled for the Worker.
					persist?: bool
				})

				// The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
				head_sampling_rate?: number

				// Trace settings for the Worker.
				traces?: close({
					// A list of destinations where traces will be exported to.
					destinations?: [...string]

					// Whether traces are enabled for the Worker.
					enabled?: bool

					// The sampling rate for traces. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
					head_sampling_rate?: number

					// Whether trace persistence is enabled for the Worker.
					persist?: bool

					// Controls how inbound trace context (traceparent/tracestate) headers on
					// incoming requests are handled. "authenticated" (default) honors inbound
					// trace context only when accompanied by a valid trace auth token. "accept"
					// unconditionally accepts inbound trace context. Requires the trace
					// propagation feature to be enabled.
					// Available values: "authenticated", "accept".
					propagation_policy?: string
				})
			})

			// When the script was created.
			created_on?: string

			// Configuration for [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			// Specify mode='smart' for Smart Placement, or one of region/hostname/host.
			placement?: close({
				// TCP host and port for targeted placement.
				host?: string

				// Array of placement targets (currently limited to single target).
				target?: matchN(1, [close({
					// TCP host:port for targeted placement.
					host?: string

					// HTTP hostname for targeted placement.
					hostname?: string

					// Cloud region in format 'provider:region'.
					region?: string
				}), [...close({
					// TCP host:port for targeted placement.
					host?: string

					// HTTP hostname for targeted placement.
					hostname?: string

					// Cloud region in format 'provider:region'.
					region?: string
				})]])

				// HTTP hostname for targeted placement.
				hostname?: string

				// The last time the script was analyzed for [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				last_analyzed_at?: string

				// Enables [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "smart", "targeted".
				mode?: string

				// Cloud region for targeted placement in format 'provider:region'.
				region?: string

				// Status of [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "SUCCESS", "UNSUPPORTED_APPLICATION", "INSUFFICIENT_INVOCATIONS".
				status?: string
			})

			// Hashed script content, can be used in a If-None-Match header when updating.
			etag?: string

			// Routes associated with the Worker.
			routes?: matchN(1, [close({
				// Identifier.
				id?: string

				// Pattern to match incoming requests against. [Learn
				// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
				pattern?: string

				// Name of the script to run if the route matches.
				script?: string
			}), [...close({
				// Identifier.
				id?: string

				// Pattern to match incoming requests against. [Learn
				// more](https://developers.cloudflare.com/workers/configuration/routing/routes/#matching-behavior).
				pattern?: string

				// Name of the script to run if the route matches.
				script?: string
			})]])

			// The names of handlers exported as part of the default export.
			handlers?: [...string]

			// The immutable ID of the script.
			tag?: string

			// Tags associated with the Worker.
			tags?: [...string]

			// List of Workers that will consume logs from the attached Worker.
			tail_consumers?: matchN(1, [close({
				// Optional environment if the Worker utilizes one.
				environment?: string

				// Optional dispatch namespace the script belongs to.
				namespace?: string

				// Name of Worker that is to be the consumer.
				service?: string
			}), [...close({
				// Optional environment if the Worker utilizes one.
				environment?: string

				// Optional dispatch namespace the script belongs to.
				namespace?: string

				// Name of Worker that is to be the consumer.
				service?: string
			})]])

			// Whether a Worker contains assets.
			has_assets?: bool

			// Usage model for the Worker invocations.
			// Available values: "standard", "bundled", "unbound".
			usage_model?: string
		})]])

		// Filter scripts by tags. Format: comma-separated list of tag:allowed pairs
		// where allowed is 'yes' or 'no'.
		tags?: string
	})
}
