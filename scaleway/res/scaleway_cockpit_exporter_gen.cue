package res

import "list"

#scaleway_cockpit_exporter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_cockpit_exporter")
	close({
		datadog_destination?: matchN(1, [#datadog_destination, list.MaxItems(1) & [...#datadog_destination]])
		otlp_destination?: matchN(1, [#otlp_destination, list.MaxItems(1) & [...#otlp_destination]])
		timeouts?: #timeouts

		// Date and time of the creation of the data export (RFC 3339
		// format)
		created_at?: string

		// ID of the data source linked to the data export
		datasource_id!: string

		// Description of the data export
		description?: string

		// List of Scaleway products to export. Use ["all"] to export all
		// products. Use scaleway_cockpit_products data source for valid
		// product names.
		exported_products?: [...string]
		id?: string

		// Name of the data export
		name!: string

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

	#datadog_destination: close({
		// Datadog API key
		api_key!: string

		// Datadog endpoint URL
		endpoint?: string
	})

	#otlp_destination: close({
		// OTLP endpoint URL
		endpoint!: string

		// Headers to include in requests
		headers?: [string]: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
