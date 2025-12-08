package data

#azurerm_mysql_flexible_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_mysql_flexible_server")
	close({
		administrator_login?:          string
		timeouts?:                     #timeouts
		backup_retention_days?:        number
		delegated_subnet_id?:          string
		fqdn?:                         string
		geo_redundant_backup_enabled?: bool
		high_availability?: [...close({
			mode?:                      string
			standby_availability_zone?: string
		})]
		id?:       string
		location?: string
		maintenance_window?: [...close({
			day_of_week?:  number
			start_hour?:   number
			start_minute?: number
		})]
		name!:                          string
		private_dns_zone_id?:           string
		public_network_access_enabled?: bool
		replica_capacity?:              number
		replication_role?:              string
		resource_group_name!:           string
		restore_point_in_time?:         string
		sku_name?:                      string
		storage?: [...close({
			auto_grow_enabled?:  bool
			io_scaling_enabled?: bool
			iops?:               number
			size_gb?:            number
		})]
		tags?: [string]: string
		version?: string
		zone?:    string
	})

	#timeouts: close({
		read?: string
	})
}
