package data

#scaleway_cockpit_products: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_products")
	close({
		id?: string

		// List of product names for use in
		// scaleway_cockpit_exporter.exported_products.
		names?: [...string]

		// List of Cockpit products available for exported_products in
		// scaleway_cockpit_exporter.
		products?: [...close({
			display_name?: string
			family_name?:  string
			name?:         string
		})]

		// The region you want to attach the resource to
		region?: string
	})
}
