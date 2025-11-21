package data

#cloudflare_connectivity_directory_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_connectivity_directory_services")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string
			host?: close({
				network?: close({
					tunnel_id?: string
				})
				resolver_network?: close({
					resolver_ips?: [...string]
					tunnel_id?: string
				})
				hostname?: string
				ipv4?:     string
				ipv6?:     string
			})
			http_port?: number

			// Available values: "http".
			type?:       string
			https_port?: number
			id?:         string
			name?:       string
			service_id?: string
			updated_at?: string
		}), [...close({
			created_at?: string
			host?: close({
				network?: close({
					tunnel_id?: string
				})
				resolver_network?: close({
					resolver_ips?: [...string]
					tunnel_id?: string
				})
				hostname?: string
				ipv4?:     string
				ipv6?:     string
			})
			http_port?: number

			// Available values: "http".
			type?:       string
			https_port?: number
			id?:         string
			name?:       string
			service_id?: string
			updated_at?: string
		})]])

		// Account identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Available values: "http".
		type?: string
	})
}
