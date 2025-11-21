package data

#cloudflare_zero_trust_device_managed_networks_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_managed_networks_list")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The configuration object containing information for the WARP
			// client to detect the managed network.
			config?: close({
				// The SHA-256 hash of the TLS certificate presented by the host
				// found at tls_sockaddr. If absent, regular certificate
				// verification (trusted roots, valid timestamp, etc) will be
				// used to validate the certificate.
				sha256?: string

				// A network address of the form "host:port" that the WARP client
				// will use to detect the presence of a TLS host.
				tls_sockaddr?: string
			})

			// API UUID.
			id?: string

			// The name of the device managed network. This name must be
			// unique.
			name?: string

			// API UUID.
			network_id?: string

			// The type of device managed network.
			// Available values: "tls".
			type?: string
		}), [...close({
			// The configuration object containing information for the WARP
			// client to detect the managed network.
			config?: close({
				// The SHA-256 hash of the TLS certificate presented by the host
				// found at tls_sockaddr. If absent, regular certificate
				// verification (trusted roots, valid timestamp, etc) will be
				// used to validate the certificate.
				sha256?: string

				// A network address of the form "host:port" that the WARP client
				// will use to detect the presence of a TLS host.
				tls_sockaddr?: string
			})

			// API UUID.
			id?: string

			// The name of the device managed network. This name must be
			// unique.
			name?: string

			// API UUID.
			network_id?: string

			// The type of device managed network.
			// Available values: "tls".
			type?: string
		})]])
	})
}
