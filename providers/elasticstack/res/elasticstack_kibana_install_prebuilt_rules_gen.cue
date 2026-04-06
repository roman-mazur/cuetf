package res

#elasticstack_kibana_install_prebuilt_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_install_prebuilt_rules")
	close({
		// The ID of this resource.
		id?: string

		// Number of prebuilt rules that are installed.
		rules_installed?: number

		// Number of prebuilt rules that are not installed.
		rules_not_installed?: number

		// Number of prebuilt rules that have updates available.
		rules_not_updated?: number

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string

		// Number of prebuilt timelines that are installed.
		timelines_installed?: number

		// Number of prebuilt timelines that are not installed.
		timelines_not_installed?: number

		// Number of prebuilt timelines that have updates available.
		timelines_not_updated?: number
	})
}
