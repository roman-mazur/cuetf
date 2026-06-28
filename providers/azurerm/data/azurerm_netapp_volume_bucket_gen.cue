package data

#azurerm_netapp_volume_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_netapp_volume_bucket")
	close({
		timeouts?:                  #timeouts
		file_system_cifs_username?: string
		file_system_nfs_user?: [...close({
			group_id?: number
			user_id?:  number
		})]
		id?: string
		key_vault?: [...close({
			certificate_key_vault_uri?: string
			certificate_name?:          string
			credentials_key_vault_uri?: string
			credentials_secret_name?:   string
		})]
		name!:                           string
		netapp_volume_id!:               string
		path?:                           string
		permissions?:                    string
		server_certificate_common_name?: string
		server_certificate_expiry_date?: string
		server_ip_address?:              string
		status?:                         string
	})

	#timeouts: close({
		read?: string
	})
}
