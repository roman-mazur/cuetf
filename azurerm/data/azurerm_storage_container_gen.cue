package data

#azurerm_storage_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_storage_container")
	close({
		container_access_type?:             string
		default_encryption_scope?:          string
		encryption_scope_override_enabled?: bool
		has_immutability_policy?:           bool
		has_legal_hold?:                    bool
		id?:                                string
		metadata?: [string]: string
		timeouts?:             #timeouts
		name!:                 string
		storage_account_id?:   string
		storage_account_name?: string
	})

	#timeouts: close({
		read?: string
	})
}
