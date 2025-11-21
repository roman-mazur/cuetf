package data

#cloudflare_connectivity_directory_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_connectivity_directory_service")
	close({
		account_id!: string
		created_at?: string
		http_port?:  number
		https_port?: number
		id?:         string
		filter?: close({
			// Available values: "http".
			type?: string
		})
		name?:       string
		service_id?: string

		// Available values: "http".
		type?:       string
		updated_at?: string
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
	})
}
