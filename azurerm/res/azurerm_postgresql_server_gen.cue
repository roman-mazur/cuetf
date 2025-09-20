package res

import "list"

#azurerm_postgresql_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_postgresql_server")
	close({
		administrator_login?:                     string
		administrator_login_password?:            string
		administrator_login_password_wo?:         string
		administrator_login_password_wo_version?: number
		auto_grow_enabled?:                       bool
		backup_retention_days?:                   number
		create_mode?:                             string
		creation_source_server_id?:               string
		fqdn?:                                    string
		geo_redundant_backup_enabled?:            bool
		id?:                                      string
		infrastructure_encryption_enabled?:       bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		threat_detection_policy?: matchN(1, [#threat_detection_policy, list.MaxItems(1) & [...#threat_detection_policy]])
		timeouts?:                         #timeouts
		location!:                         string
		name!:                             string
		public_network_access_enabled?:    bool
		resource_group_name!:              string
		restore_point_in_time?:            string
		sku_name!:                         string
		ssl_enforcement_enabled!:          bool
		ssl_minimal_tls_version_enforced?: string
		storage_mb?:                       number
		tags?: [string]: string
		version!: string
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#threat_detection_policy: close({
		disabled_alerts?: [...string]
		email_account_admins?: bool
		email_addresses?: [...string]
		enabled?:                    bool
		retention_days?:             number
		storage_account_access_key?: string
		storage_endpoint?:           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
