package res

import "list"

#google_data_lineage_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_lineage_config")
	close({
		ingestion!: matchN(1, [#ingestion, list.MaxItems(1) & [_, ...] & [...#ingestion]])
		timeouts?: #timeouts

		// Used for optimistic concurrency control when patching config.
		etag?: string
		id?:   string

		// The region of the data lineage configuration for integration.
		location!: string

		// Identifier. The resource name of the config.
		// Format:
		// organizations/{organization_id}/locations/{location}/config,
		// folders/{folder_id}/locations/{location}/config,
		// projects/{project_id}/locations/{location}/config,
		// or projects/{project_number}/locations/{location}/config.
		name?: string

		// Parent scope for the config.
		// Format: projects/{project-id|project-number} or
		// folders/{folder-number} or
		// organizations/{organization-number}.
		parent!: string
	})

	#ingestion: close({
		rule!: matchN(1, [_#defs."/$defs/ingestion/$defs/rule", [_, ...] & [..._#defs."/$defs/ingestion/$defs/rule"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/ingestion/$defs/rule": close({
		integration_selector!: matchN(1, [_#defs."/$defs/ingestion/$defs/rule/$defs/integration_selector", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/ingestion/$defs/rule/$defs/integration_selector"]])
		lineage_enablement!: matchN(1, [_#defs."/$defs/ingestion/$defs/rule/$defs/lineage_enablement", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/ingestion/$defs/rule/$defs/lineage_enablement"]])
	})

	_#defs: "/$defs/ingestion/$defs/rule/$defs/integration_selector": close({
		// Integration to which the rule applies. Possible values:
		// ["DATAPROC", "LOOKER_CORE"]
		integration!: string
	})

	_#defs: "/$defs/ingestion/$defs/rule/$defs/lineage_enablement": close({
		// Whether ingestion of lineage should be enabled.
		enabled!: bool
	})
}
