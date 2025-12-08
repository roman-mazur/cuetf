package data

#azurerm_app_service_certificate_order: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_app_service_certificate_order")
	close({
		app_service_certificate_not_renewable_reasons?: [...string]
		auto_renew?: bool
		certificates?: [...close({
			certificate_name?:      string
			key_vault_id?:          string
			key_vault_secret_name?: string
			provisioning_state?:    string
		})]
		csr?:                           string
		distinguished_name?:            string
		domain_verification_token?:     string
		expiration_time?:               string
		id?:                            string
		intermediate_thumbprint?:       string
		is_private_key_external?:       bool
		key_size?:                      number
		timeouts?:                      #timeouts
		location?:                      string
		name!:                          string
		product_type?:                  string
		resource_group_name!:           string
		root_thumbprint?:               string
		signed_certificate_thumbprint?: string
		status?:                        string
		tags?: [string]: string
		validity_in_years?: number
	})

	#timeouts: close({
		read?: string
	})
}
