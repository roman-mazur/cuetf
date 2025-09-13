package res

#cloudflare_zero_trust_tunnel_cloudflared_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_tunnel_cloudflared_virtual_network")
	close({
		// Cloudflare account ID
		account_id!: string

		// Optional remark describing the virtual network.
		comment?: string

		// Timestamp of when the resource was created.
		created_at?: string

		// Timestamp of when the resource was deleted. If `null`, the
		// resource has not been deleted.
		deleted_at?: string

		// UUID of the virtual network.
		id?: string

		// If `true`, this virtual network is the default for the account.
		is_default_network?: bool

		// A user-friendly name for the virtual network.
		name!: string
	})
}
