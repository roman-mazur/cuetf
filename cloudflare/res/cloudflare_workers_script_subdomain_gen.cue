package res

#cloudflare_workers_script_subdomain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_script_subdomain")
	close({
		// Identifier.
		account_id!: string

		// Whether the Worker should be available on the workers.dev
		// subdomain.
		enabled!: bool

		// Identifier for the resource.
		id?: string

		// Whether the Worker's Preview URLs should be available on the
		// workers.dev subdomain.
		previews_enabled?: bool

		// Name of the script, used in URLs and route configuration.
		script_name!: string
	})
}
