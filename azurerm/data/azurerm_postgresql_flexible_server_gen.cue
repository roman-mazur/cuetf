package data

#azurerm_postgresql_flexible_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_postgresql_flexible_server")
	close({
		administrator_login?:   string
		auto_grow_enabled?:     bool
		backup_retention_days?: number
		delegated_subnet_id?:   string
		fqdn?:                  string
		high_availability?: [...close({
			mode?:                      string
			standby_availability_zone?: string
		})]
		id?:                            string
		location?:                      string
		name!:                          string
		timeouts?:                      #timeouts
		public_network_access_enabled?: bool
		resource_group_name!:           string
		sku_name?:                      string
		storage_mb?:                    number
		tags?: [string]: string
		version?: string
		zone?:    string
	})

	#timeouts: close({
		read?: string
	})
}
