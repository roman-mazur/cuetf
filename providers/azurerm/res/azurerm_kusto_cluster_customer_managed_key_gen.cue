package res

#azurerm_kusto_cluster_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_kusto_cluster_customer_managed_key")
	close({
		timeouts?:           #timeouts
		cluster_id!:         string
		id?:                 string
		key_name?:           string
		key_vault_id?:       string
		key_version?:        string
		managed_hsm_key_id?: string
		user_identity?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
