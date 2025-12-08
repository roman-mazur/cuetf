package res

import "list"

#azurerm_mssql_virtual_machine_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_virtual_machine_group")
	close({
		timeouts?:            #timeouts
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		sql_image_offer!:     string
		sql_image_sku!:       string
		tags?: [string]: string
		wsfc_domain_profile!: matchN(1, [#wsfc_domain_profile, list.MaxItems(1) & [_, ...] & [...#wsfc_domain_profile]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#wsfc_domain_profile: close({
		cluster_bootstrap_account_name?: string
		cluster_operator_account_name?:  string
		cluster_subnet_type!:            string
		fqdn!:                           string
		organizational_unit_path?:       string
		sql_service_account_name?:       string
		storage_account_primary_key?:    string
		storage_account_url?:            string
	})
}
