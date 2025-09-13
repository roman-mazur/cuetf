package res

import "list"

#google_apihub_plugin_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apihub_plugin_instance")
	close({
		// Timestamp indicating when the plugin instance was created.
		create_time?: string

		// The display name for this plugin instance. Max length is 255
		// characters.
		disable?: bool

		// The display name for this plugin instance. Max length is 255
		// characters.
		display_name!: string

		// Error message describing the failure, if any, during Create,
		// Delete or
		// ApplyConfig operation corresponding to the plugin instance.This
		// field will
		// only be populated if the plugin instance is in the ERROR or
		// FAILED state.
		error_message?: string
		id?:            string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The unique name of the plugin instance resource.
		// Format:
		// 'projects/{project}/locations/{location}/plugins/{plugin}/instances/{instance}'
		name?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		plugin!: string

		// The ID to use for the plugin instance, which will become the
		// final
		// component of the plugin instance's resource name. This field is
		// optional.
		//
		// * If provided, the same will be used. The service will throw an
		// error if
		// the specified id is already used by another plugin instance in
		// the plugin
		// resource.
		// * If not provided, a system generated id will be used.
		//
		// This value should be 4-63 characters, and valid characters
		// are /a-z[0-9]-_/.
		plugin_instance_id!: string
		actions?: matchN(1, [#actions, [...#actions]])
		auth_config?: matchN(1, [#auth_config, list.MaxItems(1) & [...#auth_config]])
		timeouts?: #timeouts
		project?:  string

		// The current state of the plugin instance (e.g., enabled,
		// disabled,
		// provisioning).
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// ACTIVE
		// APPLYING_CONFIG
		// ERROR
		// FAILED
		// DELETING
		state?: string

		// Timestamp indicating when the plugin instance was last updated.
		update_time?: string
	})

	#actions: close({
		// This should map to one of the action id specified
		// in actions_config in the plugin.
		action_id!: string

		// The execution status for the plugin instance.
		hub_instance_action?: [...close({
			current_execution_state?: string
			last_execution?: [...close({
				end_time?:      string
				error_message?: string
				result?:        string
				start_time?:    string
			})]
		})]

		// The schedule for this plugin instance action. This can only be
		// set if the
		// plugin supports API_HUB_SCHEDULE_TRIGGER mode for this action.
		schedule_cron_expression?: string

		// The time zone for the schedule cron expression. If not
		// provided, UTC will
		// be used.
		schedule_time_zone?: string
		curation_config?: matchN(1, [_#defs."/$defs/actions/$defs/curation_config", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/curation_config"]])

		// The current state of the plugin action in the plugin instance.
		// Possible values:
		// STATE_UNSPECIFIED
		// ENABLED
		// DISABLED
		// ENABLING
		// DISABLING
		// ERROR
		state?: string
	})

	#auth_config: close({
		api_key_config?: matchN(1, [_#defs."/$defs/auth_config/$defs/api_key_config", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/api_key_config"]])
		google_service_account_config?: matchN(1, [_#defs."/$defs/auth_config/$defs/google_service_account_config", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/google_service_account_config"]])
		oauth2_client_credentials_config?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_client_credentials_config", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/oauth2_client_credentials_config"]])
		user_password_config?: matchN(1, [_#defs."/$defs/auth_config/$defs/user_password_config", list.MaxItems(1) & [..._#defs."/$defs/auth_config/$defs/user_password_config"]])

		// Possible values:
		// AUTH_TYPE_UNSPECIFIED
		// NO_AUTH
		// GOOGLE_SERVICE_ACCOUNT
		// USER_PASSWORD
		// API_KEY
		// OAUTH2_CLIENT_CREDENTIALS
		auth_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/actions/$defs/curation_config": close({
		custom_curation?: matchN(1, [_#defs."/$defs/actions/$defs/curation_config/$defs/custom_curation", list.MaxItems(1) & [..._#defs."/$defs/actions/$defs/curation_config/$defs/custom_curation"]])

		// Possible values:
		// CURATION_TYPE_UNSPECIFIED
		// DEFAULT_CURATION_FOR_API_METADATA
		// CUSTOM_CURATION_FOR_API_METADATA
		curation_type?: string
	})

	_#defs: "/$defs/actions/$defs/curation_config/$defs/custom_curation": close({
		// The unique name of the curation resource. This will be the name
		// of the
		// curation resource in the format:
		// 'projects/{project}/locations/{location}/curations/{curation}'
		curation!: string
	})

	_#defs: "/$defs/auth_config/$defs/api_key_config": close({
		api_key?: matchN(1, [_#defs."/$defs/auth_config/$defs/api_key_config/$defs/api_key", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auth_config/$defs/api_key_config/$defs/api_key"]])

		// The location of the API key.
		// The default value is QUERY.
		// Possible values:
		// HTTP_ELEMENT_LOCATION_UNSPECIFIED
		// QUERY
		// HEADER
		// PATH
		// BODY
		// COOKIE
		http_element_location!: string

		// The parameter name of the API key.
		// E.g. If the API request is "https://example.com/act?api_key=",
		// "api_key" would be the parameter name.
		name!: string
	})

	_#defs: "/$defs/auth_config/$defs/api_key_config/$defs/api_key": close({
		// The resource name of the secret version in the format,
		// format as: 'projects/*/secrets/*/versions/*'.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/google_service_account_config": close({
		// The service account to be used for authenticating request.
		//
		// The 'iam.serviceAccounts.getAccessToken' permission should be
		// granted on
		// this service account to the impersonator service account.
		service_account!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_client_credentials_config": close({
		client_secret?: matchN(1, [_#defs."/$defs/auth_config/$defs/oauth2_client_credentials_config/$defs/client_secret", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auth_config/$defs/oauth2_client_credentials_config/$defs/client_secret"]])

		// The client identifier.
		client_id!: string
	})

	_#defs: "/$defs/auth_config/$defs/oauth2_client_credentials_config/$defs/client_secret": close({
		// The resource name of the secret version in the format,
		// format as: 'projects/*/secrets/*/versions/*'.
		secret_version!: string
	})

	_#defs: "/$defs/auth_config/$defs/user_password_config": close({
		password?: matchN(1, [_#defs."/$defs/auth_config/$defs/user_password_config/$defs/password", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auth_config/$defs/user_password_config/$defs/password"]])

		// Username.
		username!: string
	})

	_#defs: "/$defs/auth_config/$defs/user_password_config/$defs/password": close({
		// The resource name of the secret version in the format,
		// format as: 'projects/*/secrets/*/versions/*'.
		secret_version!: string
	})
}
