package res

import "list"

#azurerm_network_packet_capture: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_network_packet_capture")
	close({
		id?:                        string
		maximum_bytes_per_packet?:  number
		maximum_bytes_per_session?: number
		maximum_capture_duration?:  number
		filter?: matchN(1, [#filter, [...#filter]])
		name!:                 string
		network_watcher_name!: string
		resource_group_name!:  string
		target_resource_id!:   string
		storage_location!: matchN(1, [#storage_location, list.MaxItems(1) & [_, ...] & [...#storage_location]])
		timeouts?: #timeouts
	})

	#filter: close({
		local_ip_address?:  string
		local_port?:        string
		protocol!:          string
		remote_ip_address?: string
		remote_port?:       string
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
