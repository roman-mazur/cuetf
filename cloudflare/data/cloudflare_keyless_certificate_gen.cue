package data

#cloudflare_keyless_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_keyless_certificate")
	close({
		// When the Keyless SSL was created.
		created_on?: string

		// Whether or not the Keyless SSL is on or off.
		enabled?: bool

		// The keyless SSL name.
		host?: string

		// Configuration for using Keyless SSL through a Cloudflare Tunnel
		tunnel?: close({
			// Private IP of the Key Server Host
			private_ip?: string

			// Cloudflare Tunnel Virtual Network ID
			vnet_id?: string
		})

		// Identifier.
		id?: string

		// Identifier.
		keyless_certificate_id!: string

		// When the Keyless SSL was last modified.
		modified_on?: string

		// The keyless SSL name.
		name?: string

		// Available permissions for the Keyless SSL for the current user
		// requesting the item.
		permissions?: [...string]

		// The keyless SSL port used to communicate between Cloudflare and
		// the client's Keyless SSL server.
		port?: number

		// Status of the Keyless SSL.
		// Available values: "active", "deleted".
		status?: string

		// Identifier.
		zone_id!: string
	})
}
