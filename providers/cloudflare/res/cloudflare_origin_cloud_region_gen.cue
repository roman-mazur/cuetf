package res

#cloudflare_origin_cloud_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_origin_cloud_region")
	close({
		// Origin IP address (IPv4 or IPv6). For the single PUT endpoint
		// (`PUT /origin/cloud_regions/{origin_ip}`), this field must
		// match the path parameter or the request will be rejected with
		// a 400 error. For the batch PUT endpoint, this field identifies
		// which mapping to upsert.
		id?: string

		// Time this mapping was last modified.
		modified_on?: string

		// Origin IP address (IPv4 or IPv6). For the single PUT endpoint
		// (`PUT /origin/cloud_regions/{origin_ip}`), this field must
		// match the path parameter or the request will be rejected with
		// a 400 error. For the batch PUT endpoint, this field identifies
		// which mapping to upsert.
		origin_ip!: string

		// Cloud vendor region identifier. Must be a valid region for the
		// specified vendor as returned by the supported_regions
		// endpoint.
		region!: string

		// Cloud vendor hosting the origin. Must be one of the supported
		// vendors.
		// Available values: "aws", "azure", "gcp", "oci".
		vendor!: string

		// Identifier.
		zone_id!: string
	})
}
