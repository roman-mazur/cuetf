package data

#azurerm_api_management: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management")
	close({
		additional_location?: [...close({
			capacity?:             number
			gateway_regional_url?: string
			location?:             string
			private_ip_addresses?: [...string]
			public_ip_address_id?: string
			public_ip_addresses?: [...string]
			zones?: [...string]
		})]
		developer_portal_url?: string
		gateway_regional_url?: string
		gateway_url?:          string
		hostname_configuration?: [...close({
			developer_portal?: [...close({
				host_name?:                    string
				key_vault_certificate_id?:     string
				key_vault_id?:                 string
				negotiate_client_certificate?: bool
			})]
			management?: [...close({
				host_name?:                    string
				key_vault_certificate_id?:     string
				key_vault_id?:                 string
				negotiate_client_certificate?: bool
			})]
			portal?: [...close({
				host_name?:                    string
				key_vault_certificate_id?:     string
				key_vault_id?:                 string
				negotiate_client_certificate?: bool
			})]
			proxy?: [...close({
				default_ssl_binding?:          bool
				host_name?:                    string
				key_vault_certificate_id?:     string
				key_vault_id?:                 string
				negotiate_client_certificate?: bool
			})]
			scm?: [...close({
				host_name?:                    string
				key_vault_certificate_id?:     string
				key_vault_id?:                 string
				negotiate_client_certificate?: bool
			})]
		})]
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:                  string
		management_api_url?:        string
		name!:                      string
		notification_sender_email?: string
		portal_url?:                string
		private_ip_addresses?: [...string]
		public_ip_address_id?: string
		public_ip_addresses?: [...string]
		publisher_email?:     string
		publisher_name?:      string
		resource_group_name!: string
		timeouts?:            #timeouts
		scm_url?:             string
		sku_name?:            string
		tags?: [string]: string
		tenant_access?: [...close({
			enabled?:       bool
			primary_key?:   string
			secondary_key?: string
			tenant_id?:     string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
