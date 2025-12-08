package data

#cloudflare_email_routing_addresses: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_routing_addresses")
	close({
		// Identifier.
		account_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The date and time the destination address has been created.
			created?: string

			// The contact email address of the user.
			email?: string

			// Destination address identifier.
			id?: string

			// The date and time the destination address was last modified.
			modified?: string

			// The date and time the destination address has been verified.
			// Null means not verified yet.
			verified?: string
		}), [...close({
			// The date and time the destination address has been created.
			created?: string

			// The contact email address of the user.
			email?: string

			// Destination address identifier.
			id?: string

			// The date and time the destination address was last modified.
			modified?: string

			// The date and time the destination address has been verified.
			// Null means not verified yet.
			verified?: string
		})]])

		// Sorts results in an ascending or descending order.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by verified destination addresses.
		verified?: bool
	})
}
