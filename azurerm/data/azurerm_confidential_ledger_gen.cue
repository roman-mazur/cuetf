package data

#azurerm_confidential_ledger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_confidential_ledger")
	close({
		azuread_based_service_principal?: [...close({
			ledger_role_name?: string
			principal_id?:     string
			tenant_id?:        string
		})]
		certificate_based_security_principal?: [...close({
			ledger_role_name?: string
			pem_public_key?:   string
		})]
		id?:                        string
		identity_service_endpoint?: string
		ledger_endpoint?:           string
		ledger_type?:               string
		location?:                  string
		timeouts?:                  #timeouts
		name!:                      string
		resource_group_name!:       string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
