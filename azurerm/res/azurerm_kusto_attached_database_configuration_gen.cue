package res

import "list"

#azurerm_kusto_attached_database_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_kusto_attached_database_configuration")
	close({
		attached_database_names?: [...string]
		cluster_id?:    string
		cluster_name!:  string
		database_name!: string
		sharing?: matchN(1, [#sharing, list.MaxItems(1) & [...#sharing]])
		default_principal_modification_kind?: string
		id?:                                  string
		location!:                            string
		name!:                                string
		resource_group_name!:                 string
		timeouts?:                            #timeouts
	})

	#sharing: close({
		external_tables_to_exclude?: [...string]
		external_tables_to_include?: [...string]
		materialized_views_to_exclude?: [...string]
		materialized_views_to_include?: [...string]
		tables_to_exclude?: [...string]
		tables_to_include?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
