package res

import "list"

#azurerm_synapse_sql_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_synapse_sql_pool")
	close({
		collation?:                 string
		create_mode?:               string
		data_encrypted?:            bool
		geo_backup_policy_enabled?: bool
		id?:                        string
		name!:                      string
		restore?: matchN(1, [#restore, list.MaxItems(1) & [...#restore]])
		recovery_database_id?: string
		sku_name!:             string
		timeouts?:             #timeouts
		storage_account_type!: string
		synapse_workspace_id!: string
		tags?: [string]: string
	})

	#restore: close({
		point_in_time!:      string
		source_database_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
