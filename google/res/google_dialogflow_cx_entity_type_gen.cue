package res

#google_dialogflow_cx_entity_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_entity_type")
	close({
		// Represents kinds of entities.
		// * AUTO_EXPANSION_MODE_UNSPECIFIED: Auto expansion disabled for
		// the entity.
		// * AUTO_EXPANSION_MODE_DEFAULT: Allows an agent to recognize
		// values that have not been explicitly listed in the entity.
		// Possible values: ["AUTO_EXPANSION_MODE_DEFAULT",
		// "AUTO_EXPANSION_MODE_UNSPECIFIED"]
		auto_expansion_mode?: string

		// The human-readable name of the entity type, unique within the
		// agent.
		display_name!: string

		// Enables fuzzy entity extraction during classification.
		enable_fuzzy_extraction?: bool
		id?:                      string

		// Indicates whether the entity type can be automatically
		// expanded.
		// * KIND_MAP: Map entity types allow mapping of a group of
		// synonyms to a canonical value.
		// * KIND_LIST: List entity types contain a set of entries that do
		// not map to canonical values. However, list entity types can
		// contain references to other entity types (with or without
		// aliases).
		// * KIND_REGEXP: Regexp entity types allow to specify regular
		// expressions in entries values. Possible values: ["KIND_MAP",
		// "KIND_LIST", "KIND_REGEXP"]
		kind!: string

		// The language of the following fields in entityType:
		// EntityType.entities.value
		// EntityType.entities.synonyms
		// EntityType.excluded_phrases.value
		// If not specified, the agent's default language is used. Many
		// languages are supported. Note: languages must be enabled in
		// the agent before they can be used.
		language_code?: string

		// The unique identifier of the entity type.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/entityTypes/<Entity Type ID>.
		name?: string
		entities!: matchN(1, [#entities, [_, ...] & [...#entities]])
		excluded_phrases?: matchN(1, [#excluded_phrases, [...#excluded_phrases]])
		timeouts?: #timeouts

		// The agent to create a entity type for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string

		// Indicates whether parameters of the entity type should be
		// redacted in log. If redaction is enabled, page parameters and
		// intent parameters referring to the entity type will be
		// replaced by parameter name when logging.
		redact?: bool
	})

	#entities: close({
		// A collection of value synonyms. For example, if the entity type
		// is vegetable, and value is scallions, a synonym could be green
		// onions.
		// For KIND_LIST entity types: This collection must contain
		// exactly one synonym equal to value.
		synonyms?: [...string]

		// The primary value associated with this entity entry. For
		// example, if the entity type is vegetable, the value could be
		// scallions.
		// For KIND_MAP entity types: A canonical value to be used in
		// place of synonyms.
		// For KIND_LIST entity types: A string that can contain
		// references to other entity types (with or without aliases).
		value?: string
	})

	#excluded_phrases: close({
		// The word or phrase to be excluded.
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
