package data

#azurerm_search_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_search_service")
	close({
		customer_managed_key_encryption_compliance_status?: string
		id?:                                                string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		name!:                          string
		partition_count?:               number
		primary_key?:                   string
		public_network_access_enabled?: bool
		query_keys?: [...close({
			key?:  string
			name?: string
		})]
		timeouts?:            #timeouts
		replica_count?:       number
		resource_group_name!: string
		secondary_key?:       string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
