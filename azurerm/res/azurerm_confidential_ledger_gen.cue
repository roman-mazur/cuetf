package res

#azurerm_confidential_ledger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_confidential_ledger")
	close({
		id?:                        string
		identity_service_endpoint?: string
		ledger_endpoint?:           string
		ledger_type!:               string
		azuread_based_service_principal!: matchN(1, [#azuread_based_service_principal, [_, ...] & [...#azuread_based_service_principal]])
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		certificate_based_security_principal?: matchN(1, [#certificate_based_security_principal, [...#certificate_based_security_principal]])
		timeouts?: #timeouts
	})

	#azuread_based_service_principal: close({
		ledger_role_name!: string
		principal_id!:     string
		tenant_id!:        string
	})

	#certificate_based_security_principal: close({
		ledger_role_name!: string
		pem_public_key!:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
