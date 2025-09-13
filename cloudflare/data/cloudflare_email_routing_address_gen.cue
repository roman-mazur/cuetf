package data

#cloudflare_email_routing_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_address")
	close({
		filter?: close({
			// Sorts results in an ascending or descending order.
			// Available values: "asc", "desc".
			direction?: string

			// Filter by verified destination addresses.
			verified?: bool
		})

		// Identifier.
		account_id!: string

		// The date and time the destination address has been created.
		created?: string

		// Destination address identifier.
		destination_address_identifier?: string

		// The contact email address of the user.
		email?: string

		// Destination address identifier.
		id?: string

		// The date and time the destination address was last modified.
		modified?: string

		// The date and time the destination address has been verified.
		// Null means not verified yet.
		verified?: string
	})
}
