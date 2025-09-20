package res

#azurerm_log_analytics_cluster_customer_managed_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_cluster_customer_managed_key")
	close({
		timeouts?:                 #timeouts
		id?:                       string
		key_vault_key_id!:         string
		log_analytics_cluster_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
