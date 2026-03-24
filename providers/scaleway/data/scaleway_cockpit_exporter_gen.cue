package data

#scaleway_cockpit_exporter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_exporter")
	close({
		// Date and time of the creation of the data export (RFC 3339
		// format)
		created_at?: string

		// Datadog destination configuration
		datadog_destination?: [...close({
			api_key?:  string
			endpoint?: string
		})]

		// ID of the data source linked to the data export
		datasource_id?: string

		// Description of the data export
		description?: string

		// List of Scaleway products to export. Use ["all"] to export all
		// products. Use scaleway_cockpit_products data source for valid
		// product names.
		exported_products?: [...string]

		// ID of the exporter.
		id?: string

		// Name of the data export
		name?: string

		// OTLP destination configuration
		otlp_destination?: [...close({
			endpoint?: string
			headers?: [string]: string
		})]

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Status of the data export
		status?: string

		// Date and time of the last update of the data export (RFC 3339
		// format)
		updated_at?: string
	})
}
