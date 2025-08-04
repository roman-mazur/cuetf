package data

#cloudflare_workers_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_script")
	close({
		// Identifier.
		account_id!: string

		// Name of the script, used in URLs and route configuration.
		script_name!: string
	})
}
