package res

import "list"

#azurerm_mssql_elasticpool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mssql_elasticpool")
	close({
		enclave_type?:                   string
		id?:                             string
		license_type?:                   string
		location!:                       string
		maintenance_configuration_name?: string
		max_size_bytes?:                 number
		max_size_gb?:                    number
		per_database_settings!: matchN(1, [#per_database_settings, list.MaxItems(1) & [_, ...] & [...#per_database_settings]])
		sku!: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		name!:                string
		timeouts?:            #timeouts
		resource_group_name!: string
		server_name!:         string
		tags?: [string]: string
		zone_redundant?: bool
	})

	#per_database_settings: close({
		max_capacity!: number
		min_capacity!: number
	})

	#sku: close({
		capacity!: number
		family?:   string
		name!:     string
		tier!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
