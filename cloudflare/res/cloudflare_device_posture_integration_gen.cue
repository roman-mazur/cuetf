package res

#cloudflare_device_posture_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_device_posture_integration")
	account_id:  string
	id?:         string
	identifier?: string
	interval?:   string
	name:        string
	type:        string
	config?:     #config | [...#config]

	#config: {
		api_url?:       string
		auth_url?:      string
		client_id?:     string
		client_key?:    string
		client_secret?: string
		customer_id?:   string
	}
}
