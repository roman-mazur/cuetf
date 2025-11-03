package data

#cloudflare_content_scanning: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_content_scanning")
	close({
		// Defines the last modification date (ISO 8601) of the Content
		// Scanning status.
		modified?: string

		// Defines the status of Content Scanning.
		value?: string

		// Defines an identifier.
		zone_id!: string
	})
}
