package data

#azurerm_mssql_elasticpool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_elasticpool")
	close({
		enclave_type?:        string
		id?:                  string
		license_type?:        string
		location?:            string
		max_size_bytes?:      number
		max_size_gb?:         number
		name!:                string
		per_db_max_capacity?: number
		per_db_min_capacity?: number
		resource_group_name!: string
		server_name!:         string
		sku?: [...close({
			capacity?: number
			family?:   string
			name?:     string
			tier?:     string
		})]
		timeouts?: #timeouts
		tags?: [string]: string
		zone_redundant?: bool
	})

	#timeouts: close({
		read?: string
	})
}
