package res

import "list"

#azurerm_search_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_search_service")
	close({
		allowed_ips?: [...string]
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		authentication_failure_mode?:                       string
		customer_managed_key_encryption_compliance_status?: string
		customer_managed_key_enforcement_enabled?:          bool
		hosting_mode?:                                      string
		timeouts?:                                          #timeouts
		id?:                                                string
		local_authentication_enabled?:                      bool
		location!:                                          string
		name!:                                              string
		network_rule_bypass_option?:                        string
		partition_count?:                                   number
		primary_key?:                                       string
		public_network_access_enabled?:                     bool
		query_keys?: [...close({
			key?:  string
			name?: string
		})]
		replica_count?:       number
		resource_group_name!: string
		secondary_key?:       string
		semantic_search_sku?: string
		sku!:                 string
		tags?: [string]: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
