package res

import "list"

google_apihub_addon: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apihub_addon")
	close({
		config!: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])
		timeouts?: #timeouts

		// The ID of the addon.
		addon_id!: string

		// The Vertex AI region where the BoostSpec Gemini model calls run for this API Hub instance.
		boost_spec_gemini_region_id?: string

		// The time at which the addon was created.
		create_time?: string

		// The data source on which the addon operates.
		data_source?: string

		// The description of the addon.
		description?: string

		// The display name of the addon.
		display_name?: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the addon. Format:
		// 'projects/{project}/locations/{location}/addons/{addon}'.
		name?: string

		// The state of the addon.
		state?:   string
		project?: string

		// The time at which the addon was last updated.
		update_time?: string
	})

	#config: close({
		all_data_addon_config?: matchN(1, [_#defs."/$defs/config/$defs/all_data_addon_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/all_data_addon_config"]])
		gateway_plugin_addon_config?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/all_data_addon_config": close({
		// If true, the addon is enabled for all data in the API hub.
		enabled!: bool
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config": close({
		gateway_plugin_configs!: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs", [_, ...] & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs"]])
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs": close({
		apigee_edge_config?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_edge_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_edge_config"]])
		apigee_opdk_config?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_opdk_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_opdk_config"]])
		apigee_x_hybrid_config?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_x_hybrid_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_x_hybrid_config"]])

		// The name of the gateway plugin instance for which the config is to be specified.
		// Format: projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}
		plugin_instance!: string
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_edge_config": close({
		environment_filter?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_edge_config/$defs/environment_filter", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_edge_config/$defs/environment_filter"]])
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_edge_config/$defs/environment_filter": close({
		// Indicates if this filter should match all environments or only a subset of environments.
		all_environments?: bool

		// If provided, only environments in this list are matched.
		environments?: [...string]
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_opdk_config": close({
		environment_filter?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_opdk_config/$defs/environment_filter", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_opdk_config/$defs/environment_filter"]])
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_opdk_config/$defs/environment_filter": close({
		// Indicates if this filter should match all environments or only a subset of environments.
		all_environments?: bool

		// If provided, only environments in this list are matched.
		environments?: [...string]
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_x_hybrid_config": close({
		environment_filter?: matchN(1, [_#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_x_hybrid_config/$defs/environment_filter", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_x_hybrid_config/$defs/environment_filter"]])
	})

	_#defs: "/$defs/config/$defs/gateway_plugin_addon_config/$defs/gateway_plugin_configs/$defs/apigee_x_hybrid_config/$defs/environment_filter": close({
		// Indicates if this filter should match all environments or only a subset of environments.
		all_environments?: bool

		// If provided, only environments in this list are matched.
		environments?: [...string]
	})
}
