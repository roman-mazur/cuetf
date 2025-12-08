package data

#cloudflare_address_maps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_address_maps")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// If set to false, then the Address Map cannot be deleted via
			// API. This is true for Cloudflare-managed maps.
			can_delete?: bool

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
		}), [...close({
			// If set to false, then the Address Map cannot be deleted via
			// API. This is true for Cloudflare-managed maps.
			can_delete?: bool

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
		})]])
	})
}
