package res

import "list"

#google_vertex_ai_rag_engine_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vertex_ai_rag_engine_config")
	close({
		id?: string

		// The resource name of the Dataset. This value is set by Google.
		name?:    string
		project?: string

		// The region of the RagEngineConfig. eg us-central1
		region?: string
		rag_managed_db_config!: matchN(1, [#rag_managed_db_config, list.MaxItems(1) & [_, ...] & [...#rag_managed_db_config]])
		timeouts?: #timeouts
	})

	#rag_managed_db_config: close({
		basic?: matchN(1, [_#defs."/$defs/rag_managed_db_config/$defs/basic", list.MaxItems(1) & [..._#defs."/$defs/rag_managed_db_config/$defs/basic"]])
		scaled?: matchN(1, [_#defs."/$defs/rag_managed_db_config/$defs/scaled", list.MaxItems(1) & [..._#defs."/$defs/rag_managed_db_config/$defs/scaled"]])
		unprovisioned?: matchN(1, [_#defs."/$defs/rag_managed_db_config/$defs/unprovisioned", list.MaxItems(1) & [..._#defs."/$defs/rag_managed_db_config/$defs/unprovisioned"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/rag_managed_db_config/$defs/basic": close({})

	_#defs: "/$defs/rag_managed_db_config/$defs/scaled": close({})

	_#defs: "/$defs/rag_managed_db_config/$defs/unprovisioned": close({})
}
