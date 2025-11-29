package res

#google_scc_event_threat_detection_custom_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_scc_event_threat_detection_custom_module")
	close({
		// Config for the module. For the resident module, its config
		// value is defined at this level.
		// For the inherited module, its config value is inherited from
		// the ancestor module.
		config!: string

		// The human readable name to be displayed for the module.
		display_name?: string

		// The state of enablement for the module at the given level of
		// the hierarchy. Possible values: ["ENABLED", "DISABLED"]
		enablement_state!: string

		// The editor that last updated the custom module
		last_editor?: string

		// The resource name of the Event Threat Detection custom module.
		// Its format is
		// "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}".
		name?: string

		// Numerical ID of the parent organization.
		organization!: string

		// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
		type!:     string
		id?:       string
		timeouts?: #timeouts

		// The time at which the custom module was last updated.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and
		// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
		// and "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
