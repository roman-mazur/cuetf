package res

#cloudflare_content_scanning: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_content_scanning")
	close({
		// Defines the last modification date (ISO 8601) of the Content
		// Scanning status.
		modified?: string

		// The status value for Content Scanning.
		// Available values: "enabled", "disabled".
		value!: string

		// Defines an identifier.
		zone_id!: string
	})
}
