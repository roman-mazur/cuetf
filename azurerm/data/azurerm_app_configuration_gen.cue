package data

#azurerm_app_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_configuration")
	close({
		data_plane_proxy_authentication_mode?:             string
		timeouts?:                                         #timeouts
		data_plane_proxy_private_link_delegation_enabled?: bool
		encryption?: [...close({
			identity_client_id?:       string
			key_vault_key_identifier?: string
		})]
		endpoint?: string
		id?:       string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		local_auth_enabled?: bool
		location?:           string
		name!:               string
		primary_read_key?: [...close({
			connection_string?: string
			id?:                string
			secret?:            string
		})]
		primary_write_key?: [...close({
			connection_string?: string
			id?:                string
			secret?:            string
		})]
		public_network_access?:         string
		public_network_access_enabled?: bool
		purge_protection_enabled?:      bool
		replica?: [...close({
			endpoint?: string
			id?:       string
			location?: string
			name?:     string
		})]
		resource_group_name!: string
		secondary_read_key?: [...close({
			connection_string?: string
			id?:                string
			secret?:            string
		})]
		secondary_write_key?: [...close({
			connection_string?: string
			id?:                string
			secret?:            string
		})]
		sku?:                        string
		soft_delete_retention_days?: number
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
