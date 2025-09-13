package res

import "list"

#google_firestore_field: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_firestore_field")
	close({
		// The id of the collection group to configure.
		collection!: string

		// The Firestore database id. Defaults to '"(default)"'.
		database?: string

		// The id of the field to configure.
		field!: string
		id?:    string
		index_config?: matchN(1, [#index_config, list.MaxItems(1) & [...#index_config]])

		// The name of this field. Format:
		// 'projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/fields/{{field}}'
		name?:     string
		project?:  string
		timeouts?: #timeouts
		ttl_config?: matchN(1, [#ttl_config, list.MaxItems(1) & [...#ttl_config]])
	})

	#index_config: close({
		indexes?: matchN(1, [_#defs."/$defs/index_config/$defs/indexes", [..._#defs."/$defs/index_config/$defs/indexes"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#ttl_config: close({
		// The state of TTL (time-to-live) configuration for documents
		// that have this Field set.
		state?: string
	})

	_#defs: "/$defs/index_config/$defs/indexes": close({
		// Indicates that this field supports operations on arrayValues.
		// Only one of 'order' and 'arrayConfig' can
		// be specified. Possible values: ["CONTAINS"]
		array_config?: string

		// Indicates that this field supports ordering by the specified
		// order or comparing using =, <, <=, >, >=, !=.
		// Only one of 'order' and 'arrayConfig' can be specified.
		// Possible values: ["ASCENDING", "DESCENDING"]
		order?: string

		// The scope at which a query is run. Collection scoped queries
		// require you specify
		// the collection at query time. Collection group scope allows
		// queries across all
		// collections with the same id. Default value: "COLLECTION"
		// Possible values: ["COLLECTION", "COLLECTION_GROUP"]
		query_scope?: string
	})
}
