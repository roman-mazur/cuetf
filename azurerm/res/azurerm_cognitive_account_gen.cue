package res

import "list"

#azurerm_cognitive_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cognitive_account")
	close({
		custom_question_answering_search_service_id?:  string
		custom_question_answering_search_service_key?: string
		custom_subdomain_name?:                        string
		dynamic_throttling_enabled?:                   bool
		endpoint?:                                     string
		fqdns?: [...string]
		id?:                              string
		kind!:                            string
		local_auth_enabled?:              bool
		location!:                        string
		metrics_advisor_aad_client_id?:   string
		metrics_advisor_aad_tenant_id?:   string
		metrics_advisor_super_user_name?: string
		metrics_advisor_website_name?:    string
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		name!:                               string
		outbound_network_access_restricted?: bool
		primary_access_key?:                 string
		project_management_enabled?:         bool
		public_network_access_enabled?:      bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		qna_runtime_endpoint?: string
		resource_group_name!:  string
		secondary_access_key?: string
		sku_name!:             string
		network_acls?: matchN(1, [#network_acls, list.MaxItems(1) & [...#network_acls]])
		network_injection?: matchN(1, [#network_injection, list.MaxItems(1) & [...#network_injection]])
		storage?: matchN(1, [#storage, [...#storage]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#customer_managed_key: close({
		identity_client_id?: string
		key_vault_key_id!:   string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#network_acls: close({
		virtual_network_rules?: matchN(1, [_#defs."/$defs/network_acls/$defs/virtual_network_rules", [..._#defs."/$defs/network_acls/$defs/virtual_network_rules"]])
		bypass?:         string
		default_action!: string
		ip_rules?: [...string]
	})

	#network_injection: close({
		scenario!:  string
		subnet_id!: string
	})

	#storage: close({
		identity_client_id?: string
		storage_account_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/network_acls/$defs/virtual_network_rules": close({
		ignore_missing_vnet_service_endpoint?: bool
		subnet_id!:                            string
	})
}
