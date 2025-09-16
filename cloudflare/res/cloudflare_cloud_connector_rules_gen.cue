package res

#cloudflare_cloud_connector_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloud_connector_rules")
	close({
		// Identifier.
		id?: string
		rules?: matchN(1, [close({
			description?: string

			// Parameters of Cloud Connector Rule
			parameters?: close({
				// Host to perform Cloud Connection to
				host?: string
			})
			enabled?: bool

			// Cloud Provider type
			// Available values: "aws_s3", "cloudflare_r2", "gcp_storage",
			// "azure_storage".
			provider?:   string
			expression?: string
			id?:         string
		}), [...close({
			description?: string

			// Parameters of Cloud Connector Rule
			parameters?: close({
				// Host to perform Cloud Connection to
				host?: string
			})
			enabled?: bool

			// Cloud Provider type
			// Available values: "aws_s3", "cloudflare_r2", "gcp_storage",
			// "azure_storage".
			provider?:   string
			expression?: string
			id?:         string
		})]])

		// Identifier.
		zone_id!: string
	})
}
