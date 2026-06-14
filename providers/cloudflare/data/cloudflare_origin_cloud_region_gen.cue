package data

#cloudflare_origin_cloud_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_origin_cloud_region")
	close({
		id?: string

		// Time this mapping was last modified.
		modified_on?: string
		origin_ip!:   string

		// Cloud vendor region identifier.
		region?: string

		// Cloud vendor hosting the origin.
		// Available values: "aws", "azure", "gcp", "oci".
		vendor?: string

		// Identifier.
		zone_id!: string
	})
}
