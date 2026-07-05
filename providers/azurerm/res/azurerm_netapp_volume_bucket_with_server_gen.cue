package res

import "list"

azurerm_netapp_volume_bucket_with_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_netapp_volume_bucket_with_server")
	close({
		file_system_nfs_user?: matchN(1, [#file_system_nfs_user, list.MaxItems(1) & [...#file_system_nfs_user]])
		key_vault?: matchN(1, [#key_vault, list.MaxItems(1) & [...#key_vault]])
		server!: matchN(1, [#server, list.MaxItems(1) & [_, ...] & [...#server]])
		timeouts?:                       #timeouts
		file_system_cifs_username?:      string
		id?:                             string
		name!:                           string
		path?:                           string
		permissions?:                    string
		server_certificate_common_name?: string
		server_certificate_expiry_date?: string
		server_ip_address?:              string
		status?:                         string
		volume_id!:                      string
	})

	#file_system_nfs_user: close({
		group_id!: number
		user_id!:  number
	})

	#key_vault: close({
		certificate_key_vault_uri!: string
		certificate_name!:          string
		credentials_key_vault_uri!: string
		credentials_secret_name!:   string
	})

	#server: close({
		certificate_pem?:                string
		fqdn!:                           string
		on_certificate_conflict_action?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
