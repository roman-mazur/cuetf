package res

import "list"

#azurerm_mssql_managed_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_managed_instance")
	close({
		administrator_login?:            string
		administrator_login_password?:   string
		collation?:                      string
		database_format?:                string
		dns_zone?:                       string
		dns_zone_partner_id?:            string
		fqdn?:                           string
		hybrid_secondary_usage?:         string
		id?:                             string
		license_type!:                   string
		location!:                       string
		maintenance_configuration_name?: string
		minimum_tls_version?:            string
		name!:                           string
		azure_active_directory_administrator?: matchN(1, [#azure_active_directory_administrator, list.MaxItems(1) & [...#azure_active_directory_administrator]])
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		proxy_override?:               string
		public_data_endpoint_enabled?: bool
		resource_group_name!:          string
		service_principal_type?:       string
		sku_name!:                     string
		timeouts?:                     #timeouts
		storage_account_type?:         string
		storage_size_in_gb!:           number
		subnet_id!:                    string
		tags?: [string]: string
		timezone_id?:            string
		vcores!:                 number
		zone_redundant_enabled?: bool
	})

	#azure_active_directory_administrator: close({
		azuread_authentication_only_enabled?: bool
		login_username!:                      string
		object_id!:                           string
		principal_type!:                      string
		tenant_id?:                           string
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
