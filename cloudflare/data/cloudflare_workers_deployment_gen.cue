package data

#cloudflare_workers_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_deployment")
	close({
		// Identifier.
		account_id!:   string
		author_email?: string
		annotations?: close({
			// Human-readable message about the deployment. Truncated to 100
			// bytes.
			workers_message?: string

			// Operation that triggered the creation of the deployment.
			workers_triggered_by?: string
		})
		created_on?: string

		// Name of the script, used in URLs and route configuration.
		script_name!: string

		// Available values: "percentage".
		strategy?: string
		versions?: matchN(1, [close({
			percentage?: number
			version_id?: string
		}), [...close({
			percentage?: number
			version_id?: string
		})]])
		deployment_id!: string
		id?:            string
		source?:        string
	})
}
