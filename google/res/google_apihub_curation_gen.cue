package res

import "list"

#google_apihub_curation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apihub_curation")
	close({
		// The time at which the curation was created.
		create_time?: string

		// The ID to use for the curation resource, which will become the
		// final
		// component of the curations's resource name. This field is
		// optional.
		//
		// * If provided, the same will be used. The service will throw an
		// error if
		// the specified ID is already used by another curation resource
		// in the API
		// hub.
		// * If not provided, a system generated ID will be used.
		//
		// This value should be 4-500 characters, and valid characters
		// are /a-z[0-9]-_/.
		curation_id!: string

		// The description of the curation.
		description?: string

		// The display name of the curation.
		display_name!: string
		id?:           string

		// The error code of the last execution of the curation. The error
		// code is
		// populated only when the last execution state is failed.
		// Possible values:
		// ERROR_CODE_UNSPECIFIED
		// INTERNAL_ERROR
		// UNAUTHORIZED
		last_execution_error_code?: string

		// Error message describing the failure, if any, during the last
		// execution of
		// the curation.
		last_execution_error_message?: string

		// The last execution state of the curation.
		// Possible values:
		// LAST_EXECUTION_STATE_UNSPECIFIED
		// SUCCEEDED
		// FAILED
		last_execution_state?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		endpoint?: matchN(1, [#endpoint, list.MaxItems(1) & [_, ...] & [...#endpoint]])
		timeouts?: #timeouts

		// Identifier. The name of the curation.
		//
		// Format:
		// 'projects/{project}/locations/{location}/curations/{curation}'
		name?: string

		// The plugin instances and associated actions that are using the
		// curation.
		// Note: A particular curation could be used by multiple plugin
		// instances or
		// multiple actions in a plugin instance.
		plugin_instance_actions?: [...close({
			action_id?:       string
			plugin_instance?: string
		})]
		project?: string

		// The time at which the curation was last updated.
		update_time?: string
	})

	#endpoint: close({
		application_integration_endpoint_details?: matchN(1, [_#defs."/$defs/endpoint/$defs/application_integration_endpoint_details", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/endpoint/$defs/application_integration_endpoint_details"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/endpoint/$defs/application_integration_endpoint_details": close({
		// The API trigger ID of the Application Integration workflow.
		trigger_id!: string

		// The endpoint URI should be a valid REST URI for triggering an
		// Application
		// Integration.
		// Format:
		// 'https://integrations.googleapis.com/v1/{name=projects/*/locations/*/integrations/*}:execute'
		// or
		// 'https://{location}-integrations.googleapis.com/v1/{name=projects/*/locations/*/integrations/*}:execute'
		uri!: string
	})
}
