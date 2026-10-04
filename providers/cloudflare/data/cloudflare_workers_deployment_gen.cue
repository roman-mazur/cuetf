package data

cloudflare_workers_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_deployment")
	close({
		// Identifier.
		account_id!: string
		annotations?: close({
			// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
			workers_message?: string

			// Operation that triggered the creation of the deployment.
			workers_triggered_by?: string
		})
		author_email?:  string
		created_on?:    string
		deployment_id!: string
		id?:            string

		// Name of the script, used in URLs and route configuration.
		script_name!: string
		source?:      string

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
	})
}
