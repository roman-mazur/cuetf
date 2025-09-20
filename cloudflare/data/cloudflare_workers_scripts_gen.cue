package data

#cloudflare_workers_scripts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_scripts")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// Date indicating targeted support in the Workers runtime.
			// Backwards incompatible fixes to the runtime following this
			// date will not affect this Worker.
			compatibility_date?: string

			// Flags that enable or disable certain features in the Workers
			// runtime. Used to enable upcoming features or opt in or out of
			// specific changes not included in a `compatibility_date`.
			compatibility_flags?: [...string]

			// When the script was created.
			created_on?: string

			// Hashed script content, can be used in a If-None-Match header
			// when updating.
			etag?: string

			// Named exports, such as Durable Object class implementations and
			// named entrypoints.
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

			// The names of handlers exported as part of the default export.
			handlers?: [...string]

			// Configuration for [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			placement?: close({
				// The last time the script was analyzed for [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				last_analyzed_at?: string

				// Enables [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "smart".
				mode?: string

				// Status of [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "SUCCESS", "UNSUPPORTED_APPLICATION",
				// "INSUFFICIENT_INVOCATIONS".
				status?: string
			})

			// List of Workers that will consume logs from the attached
			// Worker.
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

			// Whether a Worker contains modules.
			has_modules?: bool

			// The id of the script in the Workers system. Usually the script
			// name.
			id?: string

			// The client most recently used to deploy this Worker.
			last_deployed_from?: string

			// Whether Logpush is turned on for the Worker.
			logpush?: bool

			// The tag of the Durable Object migration that was most recently
			// applied for this Worker.
			migration_tag?: string

			// When the script was last modified.
			modified_on?: string

			// Usage model for the Worker invocations.
			// Available values: "standard", "bundled", "unbound".
			usage_model?: string
		}), [...close({
			// Date indicating targeted support in the Workers runtime.
			// Backwards incompatible fixes to the runtime following this
			// date will not affect this Worker.
			compatibility_date?: string

			// Flags that enable or disable certain features in the Workers
			// runtime. Used to enable upcoming features or opt in or out of
			// specific changes not included in a `compatibility_date`.
			compatibility_flags?: [...string]

			// When the script was created.
			created_on?: string

			// Hashed script content, can be used in a If-None-Match header
			// when updating.
			etag?: string

			// Named exports, such as Durable Object class implementations and
			// named entrypoints.
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

			// The names of handlers exported as part of the default export.
			handlers?: [...string]

			// Configuration for [Smart
			// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
			placement?: close({
				// The last time the script was analyzed for [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				last_analyzed_at?: string

				// Enables [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "smart".
				mode?: string

				// Status of [Smart
				// Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
				// Available values: "SUCCESS", "UNSUPPORTED_APPLICATION",
				// "INSUFFICIENT_INVOCATIONS".
				status?: string
			})

			// List of Workers that will consume logs from the attached
			// Worker.
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

			// Whether a Worker contains modules.
			has_modules?: bool

			// The id of the script in the Workers system. Usually the script
			// name.
			id?: string

			// The client most recently used to deploy this Worker.
			last_deployed_from?: string

			// Whether Logpush is turned on for the Worker.
			logpush?: bool

			// The tag of the Durable Object migration that was most recently
			// applied for this Worker.
			migration_tag?: string

			// When the script was last modified.
			modified_on?: string

			// Usage model for the Worker invocations.
			// Available values: "standard", "bundled", "unbound".
			usage_model?: string
		})]])

		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter scripts by tags. Format: comma-separated list of
		// tag:allowed pairs where allowed is 'yes' or 'no'.
		tags?: string
	})
}
