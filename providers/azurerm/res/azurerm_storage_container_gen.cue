package res

#azurerm_storage_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_container")
	close({
		timeouts?:                          #timeouts
		container_access_type?:             string
		default_encryption_scope?:          string
		encryption_scope_override_enabled?: bool
		has_immutability_policy?:           bool
		has_legal_hold?:                    bool
		id?:                                string
		metadata?: [string]: string
		name!:               string
		storage_account_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
