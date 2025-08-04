package data

#cloudflare_zero_trust_device_posture_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_posture_integration")
	close({
		account_id!:     string
		id?:             string
		integration_id?: string
		interval?:       string
		name?:           string
		type?:           string
		config?: close({
			api_url?:   string
			auth_url?:  string
			client_id?: string
		})
	})
}
