package data

#cloudflare_workers_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_script")
	close({
		// Identifier.
		account_id!: string
		filter?: close({
			// Filter scripts by tags. Format: comma-separated list of
			// tag:allowed pairs where allowed is 'yes' or 'no'.
			tags?: string
		})

		// Name of the script, used in URLs and route configuration.
		id?:     string
		script?: string

		// Name of the script, used in URLs and route configuration.
		script_name?: string
	})
}
