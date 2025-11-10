package res

import "list"

#azurerm_eventhub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_eventhub")
	close({
		id?: string
		capture_description?: matchN(1, [#capture_description, list.MaxItems(1) & [...#capture_description]])
		message_retention?: number
		name!:              string
		namespace_id?:      string
		partition_count!:   number
		partition_ids?: [...string]
		status?: string
		retention_description?: matchN(1, [#retention_description, list.MaxItems(1) & [...#retention_description]])
		timeouts?: #timeouts
	})

	#capture_description: close({
		destination!: matchN(1, [_#defs."/$defs/capture_description/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/capture_description/$defs/destination"]])
		enabled!:             bool
		encoding!:            string
		interval_in_seconds?: number
		size_limit_in_bytes?: number
		skip_empty_archives?: bool
	})

	#retention_description: close({
		cleanup_policy!:                    string
		retention_time_in_hours?:           number
		tombstone_retention_time_in_hours?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/capture_description/$defs/destination": close({
		archive_name_format!: string
		blob_container_name!: string
		name!:                string
		storage_account_id!:  string
	})
}
