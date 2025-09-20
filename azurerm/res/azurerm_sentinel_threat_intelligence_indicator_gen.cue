package res

#azurerm_sentinel_threat_intelligence_indicator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_sentinel_threat_intelligence_indicator")
	close({
		confidence?:   number
		created_by?:   string
		created_on?:   string
		defanged?:     bool
		description?:  string
		display_name!: string
		extension?:    string
		external_id?:  string
		external_reference?: matchN(1, [#external_reference, [...#external_reference]])
		external_last_updated_time_utc?: string
		guid?:                           string
		id?:                             string
		indicator_type?: [...string]
		language?: string
		granular_marking?: matchN(1, [#granular_marking, [...#granular_marking]])
		kill_chain_phase?: matchN(1, [#kill_chain_phase, [...#kill_chain_phase]])
		last_updated_time_utc?: string
		object_marking_refs?: [...string]
		parsed_pattern?: [...close({
			pattern_type_key?: string
			pattern_type_values?: [...close({
				value?:      string
				value_type?: string
			})]
		})]
		pattern!:         string
		pattern_type!:    string
		pattern_version?: string
		revoked?:         bool
		source!:          string
		tags?: [...string]
		threat_types?: [...string]
		validate_from_utc!:  string
		validate_until_utc?: string
		workspace_id!:       string
		timeouts?:           #timeouts
	})

	#external_reference: close({
		description?: string
		hashes?: [string]: string
		id?:          string
		source_name?: string
		url?:         string
	})

	#granular_marking: close({
		language?:    string
		marking_ref?: string
		selectors?: [...string]
	})

	#kill_chain_phase: close({
		name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
