package res

import "list"

#google_firestore_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firestore_index")
	close({
		// The API scope at which a query is run. Default value: "ANY_API"
		// Possible values: ["ANY_API", "DATASTORE_MODE_API",
		// "MONGODB_COMPATIBLE_API"]
		api_scope?: string

		// The collection being indexed.
		collection!: string

		// The Firestore database id. Defaults to '"(default)"'.
		database?: string

		// The density configuration for this index. Possible values:
		// ["SPARSE_ALL", "SPARSE_ANY", "DENSE"]
		density?: string
		id?:      string

		// Optional. Whether the index is multikey. By default, the index
		// is not multikey. For non-multikey indexes, none of the paths
		// in the index definition reach or traverse an array, except via
		// an explicit array index. For multikey indexes, at most one of
		// the paths in the index definition reach or traverse an array,
		// except via an explicit array index. Violations will result in
		// errors. Note this field only applies to indexes with
		// MONGODB_COMPATIBLE_API ApiScope.
		multikey?: bool

		// A server defined name for this index. Format:
		// 'projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/indexes/{{server_generated_id}}'
		name?:    string
		project?: string

		// The scope at which a query is run. Default value: "COLLECTION"
		// Possible values: ["COLLECTION", "COLLECTION_GROUP",
		// "COLLECTION_RECURSIVE"]
		query_scope?: string
		fields!: matchN(1, [#fields, [_, ...] & [...#fields]])
		timeouts?: #timeouts

		// Whether to skip waiting for the index to be created.
		skip_wait?: bool

		// Whether it is an unique index. Unique index ensures all values
		// for the indexed field(s) are unique across documents.
		unique?: bool
	})

	#fields: close({
		// Indicates that this field supports operations on arrayValues.
		// Only one of 'order', 'arrayConfig', and
		// 'vectorConfig' can be specified. Possible values: ["CONTAINS"]
		array_config?: string
		vector_config?: matchN(1, [_#defs."/$defs/fields/$defs/vector_config", list.MaxItems(1) & [..._#defs."/$defs/fields/$defs/vector_config"]])

		// Name of the field.
		field_path?: string

		// Indicates that this field supports ordering by the specified
		// order or comparing using =, <, <=, >, >=.
		// Only one of 'order', 'arrayConfig', and 'vectorConfig' can be
		// specified. Possible values: ["ASCENDING", "DESCENDING"]
		order?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/fields/$defs/vector_config": close({
		flat?: matchN(1, [_#defs."/$defs/fields/$defs/vector_config/$defs/flat", list.MaxItems(1) & [..._#defs."/$defs/fields/$defs/vector_config/$defs/flat"]])

		// The resulting index will only include vectors of this
		// dimension, and can be used for vector search
		// with the same dimension.
		dimension?: number
	})

	_#defs: "/$defs/fields/$defs/vector_config/$defs/flat": close({})
}
