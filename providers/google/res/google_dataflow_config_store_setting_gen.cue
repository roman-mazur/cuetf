package res

import "list"

google_dataflow_config_store_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataflow_config_store_setting")
	close({
		timeouts?: #timeouts
		value!: matchN(1, [#value, list.MaxItems(1) & [_, ...] & [...#value]])

		// The ID of the config store setting (e.g. 'default_launcher_machine_type').
		config_store_setting_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The Dataflow region for the setting (e.g. 'us-central1').
		location!: string

		// The resource name of the setting.
		// Format:
		// 'projects/{project_number}/locations/{location}/configStoreSettings/{config_store_setting_id}'
		// or 'folders/{folder_id}/locations/{location}/configStoreSettings/{config_store_setting_id}'
		// or
		// 'organizations/{organization_id}/locations/{location}/configStoreSettings/{config_store_setting_id}'
		name?: string

		// The parent resource in which to create the config store setting.
		// Must be in one of the following formats:
		// * 'projects/{project_number}' (numeric project number is required)
		// * 'folders/{folder_id}'
		// * 'organizations/{organization_id}'
		parent!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#value: close({
		// Represents a boolean value.
		bool_value?: bool

		// Represents a string value.
		string_value?: string
	})
}
