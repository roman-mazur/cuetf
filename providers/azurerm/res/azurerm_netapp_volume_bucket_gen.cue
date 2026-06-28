package res

import "list"

#azurerm_netapp_volume_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_netapp_volume_bucket")
	close({
		file_system_nfs_user?: matchN(1, [#file_system_nfs_user, list.MaxItems(1) & [...#file_system_nfs_user]])
		key_vault?: matchN(1, [#key_vault, list.MaxItems(1) & [...#key_vault]])
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

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
