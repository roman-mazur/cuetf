package res

import "list"

#azurerm_postgresql_flexible_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_postgresql_flexible_server")
	close({
		administrator_login?:               string
		administrator_password?:            string
		administrator_password_wo?:         string
		administrator_password_wo_version?: number
		auto_grow_enabled?:                 bool
		backup_retention_days?:             number
		create_mode?:                       string
		delegated_subnet_id?:               string
		fqdn?:                              string
		geo_redundant_backup_enabled?:      bool
		id?:                                string
		location!:                          string
		name!:                              string
		point_in_time_restore_time_in_utc?: string
		private_dns_zone_id?:               string
		public_network_access_enabled?:     bool
		authentication?: matchN(1, [#authentication, list.MaxItems(1) & [...#authentication]])
		customer_managed_key?: matchN(1, [#customer_managed_key, list.MaxItems(1) & [...#customer_managed_key]])
		replication_role?: string
		high_availability?: matchN(1, [#high_availability, list.MaxItems(1) & [...#high_availability]])
		resource_group_name!: string
		sku_name?:            string
		source_server_id?:    string
		storage_mb?:          number
		storage_tier?:        string
		tags?: [string]: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		maintenance_window?: matchN(1, [#maintenance_window, list.MaxItems(1) & [...#maintenance_window]])
		timeouts?: #timeouts
		version?:  string
		zone?:     string
	})

	#authentication: close({
		active_directory_auth_enabled?: bool
		password_auth_enabled?:         bool
		tenant_id?:                     string
	})

	#customer_managed_key: close({
		geo_backup_key_vault_key_id?:          string
		geo_backup_user_assigned_identity_id?: string
		key_vault_key_id!:                     string
		primary_user_assigned_identity_id?:    string
	})

	#high_availability: close({
		mode!:                      string
		standby_availability_zone?: string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#maintenance_window: close({
		day_of_week?:  number
		start_hour?:   number
		start_minute?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
