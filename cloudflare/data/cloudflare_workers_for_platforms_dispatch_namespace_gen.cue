package data

#cloudflare_workers_for_platforms_dispatch_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_for_platforms_dispatch_namespace")
	close({
		// Identifier.
		account_id!: string

		// Identifier.
		created_by?: string

		// When the script was created.
		created_on?: string

		// Name of the Workers for Platforms dispatch namespace.
		dispatch_namespace?: string

		// Name of the Workers for Platforms dispatch namespace.
		id?: string

		// Identifier.
		modified_by?: string

		// When the script was last modified.
		modified_on?: string

		// API Resource UUID tag.
		namespace_id?: string

		// Name of the Workers for Platforms dispatch namespace.
		namespace_name?: string

		// The current number of scripts in this Dispatch Namespace.
		script_count?: number
	})
}
