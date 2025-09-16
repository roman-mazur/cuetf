package data

#cloudflare_workers_scripts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_scripts")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// When the script was created.
			created_on?: string

			// Hashed script content, can be used in a If-None-Match header
			// when updating.
			etag?: string

			// Whether a Worker contains assets.
			has_assets?: bool

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

			// Whether a Worker contains modules.
			has_modules?: bool

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

			// The id of the script in the Workers system. Usually the script
			// name.
			id?: string

			// Whether Logpush is turned on for the Worker.
			logpush?: bool

			// When the script was last modified.
			modified_on?: string

			// Usage model for the Worker invocations.
			// Available values: "standard".
			usage_model?: string
		}), [...close({
			// When the script was created.
			created_on?: string

			// Hashed script content, can be used in a If-None-Match header
			// when updating.
			etag?: string

			// Whether a Worker contains assets.
			has_assets?: bool

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

			// Whether a Worker contains modules.
			has_modules?: bool

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

			// The id of the script in the Workers system. Usually the script
			// name.
			id?: string

			// Whether Logpush is turned on for the Worker.
			logpush?: bool

			// When the script was last modified.
			modified_on?: string

			// Usage model for the Worker invocations.
			// Available values: "standard".
			usage_model?: string
		})]])
	})
}
