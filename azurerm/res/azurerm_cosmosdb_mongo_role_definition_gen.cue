package res

import "list"

#azurerm_cosmosdb_mongo_role_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cosmosdb_mongo_role_definition")
	close({
		privilege?: matchN(1, [#privilege, [...#privilege]])
		cosmos_mongo_database_id!: string
		id?:                       string
		inherited_role_names?: [...string]
		role_name!: string
		timeouts?:  #timeouts
	})

	#privilege: close({
		resource!: matchN(1, [_#defs."/$defs/privilege/$defs/resource", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/privilege/$defs/resource"]])
		actions!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/privilege/$defs/resource": close({
		collection_name?: string
		db_name?:         string
	})
}
