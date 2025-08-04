package data

#cloudflare_magic_network_monitoring_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_network_monitoring_configuration")
	close({
		account_id!:       string
		default_sampling?: number
		name?:             string
		router_ips?: [...string]
		warp_devices?: matchN(1, [close({
			id?:        string
			name?:      string
			router_ip?: string
		}), [...close({
			id?:        string
			name?:      string
			router_ip?: string
		})]])
	})
}
