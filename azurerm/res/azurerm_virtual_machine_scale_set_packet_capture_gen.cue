package res

import "list"

#azurerm_virtual_machine_scale_set_packet_capture: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_virtual_machine_scale_set_packet_capture")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		machine_scope?: matchN(1, [#machine_scope, list.MaxItems(1) & [...#machine_scope]])
		storage_location!: matchN(1, [#storage_location, list.MaxItems(1) & [_, ...] & [...#storage_location]])
		timeouts?:                            #timeouts
		id?:                                  string
		maximum_bytes_per_packet?:            number
		maximum_bytes_per_session?:           number
		maximum_capture_duration_in_seconds?: number
		name!:                                string
		network_watcher_id!:                  string
		virtual_machine_scale_set_id!:        string
	})

	#filter: close({
		local_ip_address?:  string
		local_port?:        string
		protocol!:          string
		remote_ip_address?: string
		remote_port?:       string
	})

	#machine_scope: close({
		exclude_instance_ids?: [...string]
		include_instance_ids?: [...string]
	})

	#storage_location: close({
		file_path?:          string
		storage_account_id?: string
		storage_path?:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
