package data

#cloudflare_connectivity_directory_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_connectivity_directory_services")
	close({
		// Account identifier
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Available values: "http".
		type?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string
			http_port?:  number
			https_port?: number
			id?:         string
			name?:       string
			service_id?: string

			// Available values: "http".
			type?:       string
			updated_at?: string
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
			created_at?: string
			http_port?:  number
			https_port?: number
			id?:         string
			name?:       string
			service_id?: string

			// Available values: "http".
			type?:       string
			updated_at?: string
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
