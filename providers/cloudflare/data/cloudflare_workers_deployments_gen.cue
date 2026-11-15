package data

cloudflare_workers_deployments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_deployments")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			deployments?: matchN(1, [close({
				// Metadata attached to the deployment.
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string

				// Choose whether to apply Durable Object code updates immediately or defer
				// them. When omitted, the default strategy applies.
				code_update_strategy?: close({
					// For `mode: deferred`: Set the maximum number of seconds to wait before
					// forcing the update. When omitted, the default maximum delay applies.
					max_delay?: number

					// For `mode: immediate`: Apply Durable Object code updates immediately.
					//
					// For `mode: deferred`: Allow active Durable Objects to hibernate before updating their code.
					// Available values: "immediate", "deferred".
					mode?: string
				})
				created_on?: string
				source?:     string

				// Worker versions included in this deployment. Each object must contain a
				// `version_id` UUID and a `percentage`; percentages across all objects must
				// total 100. In the `cf` CLI, pass the entire array as one JSON value to
				// `--versions`, either inline, for example `--versions
				// '[{"version_id":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`,
				// or from a JSON file with `--versions @versions.json`.
				versions?: matchN(1, [close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				}), [...close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				})]])

				// Strategy for routing traffic across the listed versions. `percentage` splits
				// traffic according to each version's `percentage`.
				// Available values: "percentage".
				strategy?: string
				id?:       string
			}), [...close({
				// Metadata attached to the deployment.
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string

				// Choose whether to apply Durable Object code updates immediately or defer
				// them. When omitted, the default strategy applies.
				code_update_strategy?: close({
					// For `mode: deferred`: Set the maximum number of seconds to wait before
					// forcing the update. When omitted, the default maximum delay applies.
					max_delay?: number

					// For `mode: immediate`: Apply Durable Object code updates immediately.
					//
					// For `mode: deferred`: Allow active Durable Objects to hibernate before updating their code.
					// Available values: "immediate", "deferred".
					mode?: string
				})
				created_on?: string
				source?:     string

				// Worker versions included in this deployment. Each object must contain a
				// `version_id` UUID and a `percentage`; percentages across all objects must
				// total 100. In the `cf` CLI, pass the entire array as one JSON value to
				// `--versions`, either inline, for example `--versions
				// '[{"version_id":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`,
				// or from a JSON file with `--versions @versions.json`.
				versions?: matchN(1, [close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				}), [...close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				})]])

				// Strategy for routing traffic across the listed versions. `percentage` splits
				// traffic according to each version's `percentage`.
				// Available values: "percentage".
				strategy?: string
				id?:       string
			})]])
		}), [...close({
			deployments?: matchN(1, [close({
				// Metadata attached to the deployment.
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string

				// Choose whether to apply Durable Object code updates immediately or defer
				// them. When omitted, the default strategy applies.
				code_update_strategy?: close({
					// For `mode: deferred`: Set the maximum number of seconds to wait before
					// forcing the update. When omitted, the default maximum delay applies.
					max_delay?: number

					// For `mode: immediate`: Apply Durable Object code updates immediately.
					//
					// For `mode: deferred`: Allow active Durable Objects to hibernate before updating their code.
					// Available values: "immediate", "deferred".
					mode?: string
				})
				created_on?: string
				source?:     string

				// Worker versions included in this deployment. Each object must contain a
				// `version_id` UUID and a `percentage`; percentages across all objects must
				// total 100. In the `cf` CLI, pass the entire array as one JSON value to
				// `--versions`, either inline, for example `--versions
				// '[{"version_id":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`,
				// or from a JSON file with `--versions @versions.json`.
				versions?: matchN(1, [close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				}), [...close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				})]])

				// Strategy for routing traffic across the listed versions. `percentage` splits
				// traffic according to each version's `percentage`.
				// Available values: "percentage".
				strategy?: string
				id?:       string
			}), [...close({
				// Metadata attached to the deployment.
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string

				// Choose whether to apply Durable Object code updates immediately or defer
				// them. When omitted, the default strategy applies.
				code_update_strategy?: close({
					// For `mode: deferred`: Set the maximum number of seconds to wait before
					// forcing the update. When omitted, the default maximum delay applies.
					max_delay?: number

					// For `mode: immediate`: Apply Durable Object code updates immediately.
					//
					// For `mode: deferred`: Allow active Durable Objects to hibernate before updating their code.
					// Available values: "immediate", "deferred".
					mode?: string
				})
				created_on?: string
				source?:     string

				// Worker versions included in this deployment. Each object must contain a
				// `version_id` UUID and a `percentage`; percentages across all objects must
				// total 100. In the `cf` CLI, pass the entire array as one JSON value to
				// `--versions`, either inline, for example `--versions
				// '[{"version_id":"023e105f-2a42-4f8b-a1c1-73f6a2a30c0f","percentage":100}]'`,
				// or from a JSON file with `--versions @versions.json`.
				versions?: matchN(1, [close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				}), [...close({
					// Percentage of traffic served by this version.
					percentage?: number

					// Identifier of the Worker Version.
					version_id?: string
				})]])

				// Strategy for routing traffic across the listed versions. `percentage` splits
				// traffic according to each version's `percentage`.
				// Available values: "percentage".
				strategy?: string
				id?:       string
			})]])
		})]])

		// Name of the script.
		script_name!: string

		// Start of the deployment creation time range, inclusive.
		since?: string

		// End of the deployment creation time range, inclusive.
		until?: string
	})
}
