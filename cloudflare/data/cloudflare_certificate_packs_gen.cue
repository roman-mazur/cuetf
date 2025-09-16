package data

#cloudflare_certificate_packs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_certificate_packs")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// Include Certificate Packs of all statuses, not just active
		// ones.
		// Available values: "all".
		status?: string

		// The items returned by the data source
		result?: matchN(1, [close({}), [...close({})]])

		// Identifier.
		zone_id!: string
	})
}
