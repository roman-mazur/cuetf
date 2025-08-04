package res

#cloudflare_zero_trust_device_managed_networks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_managed_networks")
	close({
		account_id!: string
		id?:         string
		name!:       string
		network_id?: string
		type!:       string
		config!: close({
			sha256?:       string
			tls_sockaddr!: string
		})
	})
}
