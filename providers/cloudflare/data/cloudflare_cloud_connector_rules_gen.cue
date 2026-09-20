package data

cloudflare_cloud_connector_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_cloud_connector_rules")
	close({
		// Cloud Provider type
		// Available values: "aws_s3", "cloudflare_r2", "gcp_storage", "azure_storage", "oci_storage".
		cloud_connector_rules_provider?: string
		description?:                    string
		enabled?:                        bool
		expression?:                     string

		// Identifier.
		id?: string

		// Parameters of Cloud Connector Rule
		parameters?: close({
			// Host to perform Cloud Connection to
			host?: string
		})

		// Identifier.
		zone_id!: string
	})
}
