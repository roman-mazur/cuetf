package data

#azurerm_cognitive_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cognitive_account")
	close({
		custom_question_answering_search_service_id?: string
		custom_subdomain_name?:                       string
		customer_managed_key?: [...close({
			identity_client_id?: string
			key_vault_key_id?:   string
		})]
		dynamic_throttling_enabled?: bool
		endpoint?:                   string
		fqdns?: [...string]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		kind?:                            string
		local_auth_enabled?:              bool
		location?:                        string
		metrics_advisor_aad_client_id?:   string
		metrics_advisor_aad_tenant_id?:   string
		metrics_advisor_super_user_name?: string
		metrics_advisor_website_name?:    string
		timeouts?:                        #timeouts
		name!:                            string
		network_acls?: [...close({
			bypass?:         string
			default_action?: string
			ip_rules?: [...string]
			virtual_network_rules?: [...close({
				ignore_missing_vnet_service_endpoint?: bool
				subnet_id?:                            string
			})]
		})]
		network_injection?: [...close({
			scenario?:  string
			subnet_id?: string
		})]
		outbound_network_access_restricted?: bool
		primary_access_key?:                 string
		project_management_enabled?:         bool
		public_network_access_enabled?:      bool
		qna_runtime_endpoint?:               string
		resource_group_name!:                string
		secondary_access_key?:               string
		sku_name?:                           string
		storage?: [...close({
			identity_client_id?: string
			storage_account_id?: string
		})]
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
