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
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string
				id?:           string
				source?:       string

				// Available values: "percentage".
				strategy?: string

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
				created_on?: string
			}), [...close({
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string
				id?:           string
				source?:       string

				// Available values: "percentage".
				strategy?: string

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
				created_on?: string
			})]])
		}), [...close({
			deployments?: matchN(1, [close({
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string
				id?:           string
				source?:       string

				// Available values: "percentage".
				strategy?: string

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
				created_on?: string
			}), [...close({
				annotations?: close({
					// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
					workers_message?: string

					// Operation that triggered the creation of the deployment.
					workers_triggered_by?: string
				})
				author_email?: string
				id?:           string
				source?:       string

				// Available values: "percentage".
				strategy?: string

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
				created_on?: string
			})]])
		})]])

		// Name of the script, used in URLs and route configuration.
		script_name!: string

		// Start of the deployment creation time range, inclusive.
		since?: string

		// End of the deployment creation time range, inclusive.
		until?: string
	})
}
