package data

#azurerm_mssql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_database")
	close({
		collation?:       string
		elastic_pool_id?: string
		enclave_type?:    string
		id?:              string
		identity?: [...close({
			identity_ids?: [...string]
			type?: string
		})]
		license_type?:         string
		max_size_gb?:          number
		name!:                 string
		read_replica_count?:   number
		read_scale?:           bool
		server_id!:            string
		sku_name?:             string
		storage_account_type?: string
		tags?: [string]: string
		transparent_data_encryption_enabled?:                        bool
		timeouts?:                                                   #timeouts
		transparent_data_encryption_key_automatic_rotation_enabled?: bool
		transparent_data_encryption_key_vault_key_id?:               string
		zone_redundant?:                                             bool
	})

	#timeouts: close({
		read?: string
	})
}
