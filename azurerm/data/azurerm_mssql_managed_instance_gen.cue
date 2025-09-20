package data

#azurerm_mssql_managed_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_mssql_managed_instance")
	close({
		administrator_login?:     string
		collation?:               string
		customer_managed_key_id?: string
		dns_zone?:                string
		dns_zone_partner_id?:     string
		fqdn?:                    string
		id?:                      string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		license_type?:                 string
		location?:                     string
		minimum_tls_version?:          string
		name!:                         string
		proxy_override?:               string
		public_data_endpoint_enabled?: bool
		resource_group_name!:          string
		sku_name?:                     string
		storage_account_type?:         string
		storage_size_in_gb?:           number
		timeouts?:                     #timeouts
		subnet_id?:                    string
		tags?: [string]: string
		timezone_id?: string
		vcores?:      number
	})

	#timeouts: close({
		read?: string
	})
}
