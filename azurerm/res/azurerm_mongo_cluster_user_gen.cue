package res

#azurerm_mongo_cluster_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_mongo_cluster_user")
	close({
		role!: matchN(1, [#role, [_, ...] & [...#role]])
		id?:                     string
		identity_provider_type!: string
		mongo_cluster_id!:       string
		object_id!:              string
		principal_type!:         string
		timeouts?:               #timeouts
	})

	#role: close({
		database!: string
		name!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
