package res

import "list"

#google_apihub_plugin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apihub_plugin")
	close({
		// Timestamp indicating when the plugin was created.
		create_time?: string

		// The plugin description. Max length is 2000 characters (Unicode
		// code
		// points).
		description?: string

		// The display name of the plugin. Max length is 50 characters
		// (Unicode code
		// points).
		display_name!: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the plugin.
		// Format:
		// 'projects/{project}/locations/{location}/plugins/{plugin}'
		name?: string

		// The type of the plugin, indicating whether it is 'SYSTEM_OWNED'
		// or
		// 'USER_OWNED'.
		// Possible values:
		// OWNERSHIP_TYPE_UNSPECIFIED
		// SYSTEM_OWNED
		// USER_OWNED
		ownership_type?: string

		// Possible values:
		// PLUGIN_CATEGORY_UNSPECIFIED
		// API_GATEWAY
		// API_PRODUCER
		plugin_category?: string

		// The ID to use for the Plugin resource, which will become the
		// final
		// component of the Plugin's resource name. This field is
		// optional.
		//
		// * If provided, the same will be used. The service will throw an
		// error if
		// the specified id is already used by another Plugin resource in
		// the API hub
		// instance.
		// * If not provided, a system generated id will be used.
		//
		// This value should be 4-63 characters, overall resource name
		// which will be
		// of format
		// 'projects/{project}/locations/{location}/plugins/{plugin}',
		// its length is limited to 1000 characters and valid characters
		// are
		// /a-z[0-9]-_/.
		plugin_id!: string
		actions_config?: matchN(1, [#actions_config, [...#actions_config]])
		config_template?: matchN(1, [#config_template, list.MaxItems(1) & [...#config_template]])
		documentation?: matchN(1, [#documentation, list.MaxItems(1) & [...#documentation]])
		hosting_service?: matchN(1, [#hosting_service, list.MaxItems(1) & [...#hosting_service]])
		timeouts?: #timeouts
		project?:  string

		// Represents the state of the plugin.
		// Note this field will not be set for plugins developed via
		// plugin
		// framework as the state will be managed at plugin instance
		// level.
		// Possible values:
		// STATE_UNSPECIFIED
		// ENABLED
		// DISABLED
		state?: string

		// Timestamp indicating when the plugin was last updated.
		update_time?: string
	})

	#actions_config: close({
		// The description of the operation performed by the action.
		description!: string

		// The display name of the action.
		display_name!: string

		// The id of the action.
		id!: string

		// The trigger mode supported by the action.
		// Possible values:
		// TRIGGER_MODE_UNSPECIFIED
		// API_HUB_ON_DEMAND_TRIGGER
		// API_HUB_SCHEDULE_TRIGGER
		// NON_API_HUB_MANAGED
		trigger_mode!: string
	})

	#config_template: close({
		additional_config_template?: matchN(1, [_#defs."/$defs/config_template/$defs/additional_config_template", [..._#defs."/$defs/config_template/$defs/additional_config_template"]])
		auth_config_template?: matchN(1, [_#defs."/$defs/config_template/$defs/auth_config_template", list.MaxItems(1) & [..._#defs."/$defs/config_template/$defs/auth_config_template"]])
	})

	#documentation: close({
		// The uri of the externally hosted documentation.
		external_uri?: string
	})

	#hosting_service: close({
		// The URI of the service implemented by the plugin developer,
		// used to
		// invoke the plugin's functionality. This information is only
		// required for
		// user defined plugins.
		service_uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/config_template/$defs/additional_config_template": close({
		// Description.
		description?: string

		// ID of the config variable. Must be unique within the
		// configuration.
		id!: string

		// Flag represents that this 'ConfigVariable' must be provided for
		// a
		// PluginInstance.
		required?: bool

		// Regular expression in RE2 syntax used for validating the
		// 'value' of a
		// 'ConfigVariable'.
		validation_regex?: string
		enum_options?: matchN(1, [_#defs."/$defs/config_template/$defs/additional_config_template/$defs/enum_options", [..._#defs."/$defs/config_template/$defs/additional_config_template/$defs/enum_options"]])
		multi_select_options?: matchN(1, [_#defs."/$defs/config_template/$defs/additional_config_template/$defs/multi_select_options", [..._#defs."/$defs/config_template/$defs/additional_config_template/$defs/multi_select_options"]])

		// Type of the parameter: string, int, bool etc.
		// Possible values:
		// VALUE_TYPE_UNSPECIFIED
		// STRING
		// INT
		// BOOL
		// SECRET
		// ENUM
		// MULTI_SELECT
		// MULTI_STRING
		// MULTI_INT
		value_type!: string
	})

	_#defs: "/$defs/config_template/$defs/additional_config_template/$defs/enum_options": close({
		// Description of the option.
		description?: string

		// Display name of the option.
		display_name!: string

		// Id of the option.
		id!: string
	})

	_#defs: "/$defs/config_template/$defs/additional_config_template/$defs/multi_select_options": close({
		// Description of the option.
		description?: string

		// Display name of the option.
		display_name!: string

		// Id of the option.
		id!: string
	})

	_#defs: "/$defs/config_template/$defs/auth_config_template": close({
		service_account?: matchN(1, [_#defs."/$defs/config_template/$defs/auth_config_template/$defs/service_account", list.MaxItems(1) & [..._#defs."/$defs/config_template/$defs/auth_config_template/$defs/service_account"]])

		// The list of authentication types supported by the plugin.
		supported_auth_types!: [...string]
	})

	_#defs: "/$defs/config_template/$defs/auth_config_template/$defs/service_account": close({
		// The service account to be used for authenticating request.
		//
		// The 'iam.serviceAccounts.getAccessToken' permission should be
		// granted on
		// this service account to the impersonator service account.
		service_account!: string
	})
}
