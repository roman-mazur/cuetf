package res

#cloudflare_r2_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket")
	close({
		// Account ID.
		account_id!: string

		// Creation timestamp.
		creation_date?: string

		// Name of the bucket.
		id?: string

		// Jurisdiction where objects in this bucket are guaranteed to be
		// stored.
		// Available values: "default", "eu", "fedramp".
		jurisdiction?: string

		// Location of the bucket.
		// Available values: "apac", "eeur", "enam", "weur", "wnam", "oc".
		location?: string

		// Name of the bucket.
		name!: string

		// Storage class for newly uploaded objects, unless specified
		// otherwise.
		// Available values: "Standard", "InfrequentAccess".
		storage_class?: string
	})
}
