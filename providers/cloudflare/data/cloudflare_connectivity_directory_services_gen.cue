package data

#cloudflare_connectivity_directory_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_connectivity_directory_services")
	close({
		// Account identifier
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Available values: "tcp", "http".
		type?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Available values: "postgresql", "mysql".
			app_protocol?: string
			created_at?:   string
			http_port?:    number
			https_port?:   number
			name?:         string
			service_id?:   string
			tcp_port?:     number

			// Available values: "tcp", "http".
			type?:       string
			updated_at?: string

			// TLS settings for a connectivity service.
			//
			// If omitted, the default mode (`verify_full`) is used.
			tls_settings?: close({
				// TLS certificate verification mode for the connection to the
				// origin.
				//
				// - `"verify_full"` — verify certificate chain and hostname
				// (default)
				// - `"verify_ca"` — verify certificate chain only, skip hostname
				// check
				// - `"disabled"` — do not verify the server certificate at all
				cert_verification_mode?: string
			})
			host?: close({
				hostname?: string
				ipv4?:     string
				ipv6?:     string
				network?: close({
					tunnel_id?: string
				})
				resolver_network?: close({
					resolver_ips?: [...string]
					tunnel_id?: string
				})
			})
		}), [...close({
			// Available values: "postgresql", "mysql".
			app_protocol?: string
			created_at?:   string
			http_port?:    number
			https_port?:   number
			name?:         string
			service_id?:   string
			tcp_port?:     number

			// Available values: "tcp", "http".
			type?:       string
			updated_at?: string

			// TLS settings for a connectivity service.
			//
			// If omitted, the default mode (`verify_full`) is used.
			tls_settings?: close({
				// TLS certificate verification mode for the connection to the
				// origin.
				//
				// - `"verify_full"` — verify certificate chain and hostname
				// (default)
				// - `"verify_ca"` — verify certificate chain only, skip hostname
				// check
				// - `"disabled"` — do not verify the server certificate at all
				cert_verification_mode?: string
			})
			host?: close({
				hostname?: string
				ipv4?:     string
				ipv6?:     string
				network?: close({
					tunnel_id?: string
				})
				resolver_network?: close({
					resolver_ips?: [...string]
					tunnel_id?: string
				})
			})
		})]])
	})
}
