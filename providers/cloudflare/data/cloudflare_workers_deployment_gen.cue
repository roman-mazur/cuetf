package data

#cloudflare_workers_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_deployment")
	close({
		// Identifier.
		account_id?:    string
		author_email?:  string
		created_on?:    string
		deployment_id!: string
		id?:            string

		// Name of the script, used in URLs and route configuration.
		script_name!: string
		source?:      string

		// Available values: "percentage".
		strategy?: string
		annotations?: close({
			// Human-readable message about the deployment. Truncated to 1000
			// bytes if longer.
			workers_message?: string

			// Operation that triggered the creation of the deployment.
			workers_triggered_by?: string
		})
		versions?: matchN(1, [close({
			percentage?: number
			version_id?: string
		}), [...close({
			percentage?: number
			version_id?: string
		})]])
	})
}
