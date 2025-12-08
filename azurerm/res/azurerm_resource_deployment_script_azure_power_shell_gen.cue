package res

import "list"

#azurerm_resource_deployment_script_azure_power_shell: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_resource_deployment_script_azure_power_shell")
	close({
		cleanup_preference?:  string
		command_line?:        string
		force_update_tag?:    string
		id?:                  string
		location!:            string
		name!:                string
		outputs?:             string
		primary_script_uri?:  string
		resource_group_name!: string
		container?: matchN(1, [#container, list.MaxItems(1) & [...#container]])
		retention_interval!: string
		script_content?:     string
		environment_variable?: matchN(1, [#environment_variable, [...#environment_variable]])
		supporting_script_uris?: [...string]
		tags?: [string]: string
		timeout?: string
		version!: string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		storage_account?: matchN(1, [#storage_account, list.MaxItems(1) & [...#storage_account]])
		timeouts?: #timeouts
	})

	#container: close({
		container_group_name?: string
	})

	#environment_variable: close({
		name!:         string
		secure_value?: string
		value?:        string
	})

	#identity: close({
		identity_ids!: [...string]
		type!: string
	})

	#storage_account: close({
		key!:  string
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
