package data

#cloudflare_address_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_address_map")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// Identifier of an Address Map.
		address_map_id?: string

		// If set to false, then the Address Map cannot be deleted via
		// API. This is true for Cloudflare-managed maps.
		can_delete?: bool

		// The set of IPs on the Address Map.
		ips?: matchN(1, [close({
			created_at?: string

			// An IPv4 or IPv6 address.
			ip?: string
		}), [...close({
			created_at?: string

			// An IPv4 or IPv6 address.
			ip?: string
		})]])

		// Zones and Accounts which will be assigned IPs on this Address
		// Map. A zone membership will take priority over an account
		// membership.
		memberships?: matchN(1, [close({
			// Controls whether the membership can be deleted via the API or
			// not.
			can_delete?: bool
			created_at?: string

			// The identifier for the membership (eg. a zone or account tag).
			identifier?: string

			// The type of the membership.
			// Available values: "zone", "account".
			kind?: string
		}), [...close({
			// Controls whether the membership can be deleted via the API or
			// not.
			can_delete?: bool
			created_at?: string

			// The identifier for the membership (eg. a zone or account tag).
			identifier?: string

			// The type of the membership.
			// Available values: "zone", "account".
			kind?: string
		})]])

		// If set to false, then the IPs on the Address Map cannot be
		// modified via the API. This is true for Cloudflare-managed
		// maps.
		can_modify_ips?: bool
		created_at?:     string

		// If you have legacy TLS clients which do not send the TLS server
		// name indicator, then you can specify one default SNI on the
		// map. If Cloudflare receives a TLS handshake from a client
		// without an SNI, it will respond with the default SNI on those
		// IPs. The default SNI can be any valid zone or subdomain owned
		// by the account.
		default_sni?: string

		// An optional description field which may be used to describe the
		// types of IPs or zones on the map.
		description?: string

		// Whether the Address Map is enabled or not. Cloudflare's DNS
		// will not respond with IP addresses on an Address Map until the
		// map is enabled.
		enabled?: bool

		// Identifier of an Address Map.
		id?:          string
		modified_at?: string
	})
}
