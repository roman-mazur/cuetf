package res

import "list"

#azurerm_app_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_configuration")
	close({
		data_plane_proxy_authentication_mode?:             string
		data_plane_proxy_private_link_delegation_enabled?: bool
		endpoint?:                                         string
		id?:                                               string
		local_auth_enabled?:                               bool
		location!:                                         string
		name!:                                             string
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
		public_network_access?:    string
		purge_protection_enabled?: bool
		encryption?: matchN(1, [#encryption, list.MaxItems(1) & [...#encryption]])
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
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		replica?: matchN(1, [#replica, [...#replica]])
		timeouts?: #timeouts
	})

	#encryption: close({
		identity_client_id?:       string
		key_vault_key_identifier?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#replica: close({
		endpoint?: string
		id?:       string
		location!: string
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
