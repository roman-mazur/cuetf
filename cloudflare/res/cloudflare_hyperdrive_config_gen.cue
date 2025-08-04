package res

#cloudflare_hyperdrive_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_hyperdrive_config")
	close({
		account_id!: string
		created_on?: string
		caching?: close({
			disabled?:               bool
			max_age?:                number
			stale_while_revalidate?: number
		})
		id?: string
		mtls?: close({
			ca_certificate_id?:   string
			mtls_certificate_id?: string
			sslmode?:             string
		})
		modified_on?:             string
		name!:                    string
		origin_connection_limit?: number
		origin!: close({
			access_client_id?:     string
			access_client_secret?: string
			database!:             string
			host!:                 string
			password!:             string
			port?:                 number
			scheme!:               string
			user!:                 string
		})
	})
}
