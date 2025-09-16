package data

#cloudflare_spectrum_applications: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_spectrum_applications")
	close({
		// Sets the direction by which results are ordered.
		// Available values: "asc", "desc".
		direction?: string

		// The items returned by the data source
		result?: matchN(1, [close({}), [...close({})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Application field by which results are ordered.
		// Available values: "protocol", "app_id", "created_on",
		// "modified_on", "dns".
		order?: string

		// Zone identifier.
		zone_id!: string
	})
}
