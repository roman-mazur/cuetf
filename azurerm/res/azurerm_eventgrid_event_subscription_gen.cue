package res

import "list"

#azurerm_eventgrid_event_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_eventgrid_event_subscription")
	close({
		advanced_filtering_on_arrays_enabled?: bool
		event_delivery_schema?:                string
		eventhub_endpoint_id?:                 string
		expiration_time_utc?:                  string
		hybrid_connection_endpoint_id?:        string
		id?:                                   string
		included_event_types?: [...string]
		labels?: [...string]
		name!: string
		advanced_filter?: matchN(1, [#advanced_filter, list.MaxItems(1) & [...#advanced_filter]])
		scope!:                         string
		service_bus_queue_endpoint_id?: string
		azure_function_endpoint?: matchN(1, [#azure_function_endpoint, list.MaxItems(1) & [...#azure_function_endpoint]])
		service_bus_topic_endpoint_id?: string
		dead_letter_identity?: matchN(1, [#dead_letter_identity, list.MaxItems(1) & [...#dead_letter_identity]])
		delivery_identity?: matchN(1, [#delivery_identity, list.MaxItems(1) & [...#delivery_identity]])
		delivery_property?: matchN(1, [#delivery_property, [...#delivery_property]])
		retry_policy?: matchN(1, [#retry_policy, list.MaxItems(1) & [...#retry_policy]])
		storage_blob_dead_letter_destination?: matchN(1, [#storage_blob_dead_letter_destination, list.MaxItems(1) & [...#storage_blob_dead_letter_destination]])
		storage_queue_endpoint?: matchN(1, [#storage_queue_endpoint, list.MaxItems(1) & [...#storage_queue_endpoint]])
		subject_filter?: matchN(1, [#subject_filter, list.MaxItems(1) & [...#subject_filter]])
		timeouts?: #timeouts
		webhook_endpoint?: matchN(1, [#webhook_endpoint, list.MaxItems(1) & [...#webhook_endpoint]])
	})

	#advanced_filter: close({
		bool_equals?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/bool_equals", [..._#defs."/$defs/advanced_filter/$defs/bool_equals"]])
		is_not_null?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/is_not_null", [..._#defs."/$defs/advanced_filter/$defs/is_not_null"]])
		is_null_or_undefined?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/is_null_or_undefined", [..._#defs."/$defs/advanced_filter/$defs/is_null_or_undefined"]])
		number_greater_than?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_greater_than", [..._#defs."/$defs/advanced_filter/$defs/number_greater_than"]])
		number_greater_than_or_equals?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_greater_than_or_equals", [..._#defs."/$defs/advanced_filter/$defs/number_greater_than_or_equals"]])
		number_in?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_in", [..._#defs."/$defs/advanced_filter/$defs/number_in"]])
		number_in_range?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_in_range", [..._#defs."/$defs/advanced_filter/$defs/number_in_range"]])
		number_less_than?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_less_than", [..._#defs."/$defs/advanced_filter/$defs/number_less_than"]])
		number_less_than_or_equals?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_less_than_or_equals", [..._#defs."/$defs/advanced_filter/$defs/number_less_than_or_equals"]])
		number_not_in?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_not_in", [..._#defs."/$defs/advanced_filter/$defs/number_not_in"]])
		number_not_in_range?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/number_not_in_range", [..._#defs."/$defs/advanced_filter/$defs/number_not_in_range"]])
		string_begins_with?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_begins_with", [..._#defs."/$defs/advanced_filter/$defs/string_begins_with"]])
		string_contains?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_contains", [..._#defs."/$defs/advanced_filter/$defs/string_contains"]])
		string_ends_with?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_ends_with", [..._#defs."/$defs/advanced_filter/$defs/string_ends_with"]])
		string_in?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_in", [..._#defs."/$defs/advanced_filter/$defs/string_in"]])
		string_not_begins_with?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_not_begins_with", [..._#defs."/$defs/advanced_filter/$defs/string_not_begins_with"]])
		string_not_contains?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_not_contains", [..._#defs."/$defs/advanced_filter/$defs/string_not_contains"]])
		string_not_ends_with?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_not_ends_with", [..._#defs."/$defs/advanced_filter/$defs/string_not_ends_with"]])
		string_not_in?: matchN(1, [_#defs."/$defs/advanced_filter/$defs/string_not_in", [..._#defs."/$defs/advanced_filter/$defs/string_not_in"]])
	})

	#azure_function_endpoint: close({
		function_id!:                       string
		max_events_per_batch?:              number
		preferred_batch_size_in_kilobytes?: number
	})

	#dead_letter_identity: close({
		type!:                   string
		user_assigned_identity?: string
	})

	#delivery_identity: close({
		type!:                   string
		user_assigned_identity?: string
	})

	#delivery_property: close({
		header_name!:  string
		secret?:       bool
		source_field?: string
		type!:         string
		value?:        string
	})

	#retry_policy: close({
		event_time_to_live!:    number
		max_delivery_attempts!: number
	})

	#storage_blob_dead_letter_destination: close({
		storage_account_id!:          string
		storage_blob_container_name!: string
	})

	#storage_queue_endpoint: close({
		queue_message_time_to_live_in_seconds?: number
		queue_name!:                            string
		storage_account_id!:                    string
	})

	#subject_filter: close({
		case_sensitive?:      bool
		subject_begins_with?: string
		subject_ends_with?:   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#webhook_endpoint: close({
		active_directory_app_id_or_uri?:    string
		active_directory_tenant_id?:        string
		base_url?:                          string
		max_events_per_batch?:              number
		preferred_batch_size_in_kilobytes?: number
		url!:                               string
	})

	_#defs: "/$defs/advanced_filter/$defs/bool_equals": close({
		key!:   string
		value!: bool
	})

	_#defs: "/$defs/advanced_filter/$defs/is_not_null": close({
		key!: string
	})

	_#defs: "/$defs/advanced_filter/$defs/is_null_or_undefined": close({
		key!: string
	})

	_#defs: "/$defs/advanced_filter/$defs/number_greater_than": close({
		key!:   string
		value!: number
	})

	_#defs: "/$defs/advanced_filter/$defs/number_greater_than_or_equals": close({
		key!:   string
		value!: number
	})

	_#defs: "/$defs/advanced_filter/$defs/number_in": close({
		key!: string
		values!: [...number]
	})

	_#defs: "/$defs/advanced_filter/$defs/number_in_range": close({
		key!: string
		values!: [...[...number]]
	})

	_#defs: "/$defs/advanced_filter/$defs/number_less_than": close({
		key!:   string
		value!: number
	})

	_#defs: "/$defs/advanced_filter/$defs/number_less_than_or_equals": close({
		key!:   string
		value!: number
	})

	_#defs: "/$defs/advanced_filter/$defs/number_not_in": close({
		key!: string
		values!: [...number]
	})

	_#defs: "/$defs/advanced_filter/$defs/number_not_in_range": close({
		key!: string
		values!: [...[...number]]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_begins_with": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_contains": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_ends_with": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_in": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_not_begins_with": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_not_contains": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_not_ends_with": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/advanced_filter/$defs/string_not_in": close({
		key!: string
		values!: [...string]
	})
}
