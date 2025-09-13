package res

#google_dialogflow_entity_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_entity_type")
	close({
		// The name of this entity type to be displayed on the console.
		display_name!: string

		// Enables fuzzy entity extraction during classification.
		enable_fuzzy_extraction?: bool
		id?:                      string

		// Indicates the kind of entity type.
		// * KIND_MAP: Map entity types allow mapping of a group of
		// synonyms to a reference value.
		// * KIND_LIST: List entity types contain a set of entries that do
		// not map to reference values. However, list entity
		// types can contain references to other entity types (with or
		// without aliases).
		// * KIND_REGEXP: Regexp entity types allow to specify regular
		// expressions in entries values. Possible values: ["KIND_MAP",
		// "KIND_LIST", "KIND_REGEXP"]
		kind!: string

		// The unique identifier of the entity type.
		// Format: projects/<Project ID>/agent/entityTypes/<Entity type
		// ID>.
		name?: string
		entities?: matchN(1, [#entities, [...#entities]])
		timeouts?: #timeouts
		project?:  string
	})

	#entities: close({
		// A collection of value synonyms. For example, if the entity type
		// is vegetable, and value is scallions, a synonym
		// could be green onions.
		// For KIND_LIST entity types:
		// * This collection must contain exactly one synonym equal to
		// value.
		synonyms!: [...string]

		// The primary value associated with this entity entry. For
		// example, if the entity type is vegetable, the value
		// could be scallions.
		// For KIND_MAP entity types:
		// * A reference value to be used in place of synonyms.
		// For KIND_LIST entity types:
		// * A string that can contain references to other entity types
		// (with or without aliases).
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
