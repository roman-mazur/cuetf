package res

#cloudflare_zero_trust_device_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_device_subnet")
	close({
		// Cloudflare account ID
		account_id?: string

		// An optional description of the subnet.
		comment?: string

		// Timestamp of when the resource was created.
		created_at?: string

		// Timestamp of when the resource was deleted. If `null`, the
		// resource has not been deleted.
		deleted_at?: string

		// The UUID of the subnet.
		id?: string

		// If `true`, this is the default subnet for the account. There
		// can only be one default subnet per account.
		is_default_network?: bool

		// A user-friendly name for the subnet.
		name!: string

		// The private IPv4 or IPv6 range defining the subnet, in CIDR
		// notation.
		network!: string

		// The type of subnet.
		// Available values: "cloudflare_source", "warp".
		subnet_type?: string
	})
}
