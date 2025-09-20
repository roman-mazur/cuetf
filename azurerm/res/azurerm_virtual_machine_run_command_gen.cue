package res

import "list"

#azurerm_virtual_machine_run_command: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_virtual_machine_run_command")
	close({
		error_blob_uri?: string
		id?:             string
		instance_view?: [...close({
			end_time?:          string
			error_message?:     string
			execution_message?: string
			execution_state?:   string
			exit_code?:         number
			output?:            string
			start_time?:        string
		})]
		location!:        string
		name!:            string
		output_blob_uri?: string
		run_as_password?: string
		run_as_user?:     string
		error_blob_managed_identity?: matchN(1, [#error_blob_managed_identity, list.MaxItems(1) & [...#error_blob_managed_identity]])
		tags?: [string]: string
		output_blob_managed_identity?: matchN(1, [#output_blob_managed_identity, list.MaxItems(1) & [...#output_blob_managed_identity]])
		parameter?: matchN(1, [#parameter, [...#parameter]])
		protected_parameter?: matchN(1, [#protected_parameter, [...#protected_parameter]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		timeouts?:           #timeouts
		virtual_machine_id!: string
	})

	#error_blob_managed_identity: close({
		client_id?: string
		object_id?: string
	})

	#output_blob_managed_identity: close({
		client_id?: string
		object_id?: string
	})

	#parameter: close({
		name!:  string
		value!: string
	})

	#protected_parameter: close({
		name!:  string
		value!: string
	})

	#source: close({
		script_uri_managed_identity?: matchN(1, [_#defs."/$defs/source/$defs/script_uri_managed_identity", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/script_uri_managed_identity"]])
		command_id?: string
		script?:     string
		script_uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/source/$defs/script_uri_managed_identity": close({
		client_id?: string
		object_id?: string
	})
}
