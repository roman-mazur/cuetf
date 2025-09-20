package data

#azurerm_servicebus_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_topic")
	close({
		auto_delete_on_idle?:                     string
		batched_operations_enabled?:              bool
		default_message_ttl?:                     string
		duplicate_detection_history_time_window?: string
		enable_batched_operations?:               bool
		enable_express?:                          bool
		enable_partitioning?:                     bool
		express_enabled?:                         bool
		id?:                                      string
		timeouts?:                                #timeouts
		max_size_in_megabytes?:                   number
		name!:                                    string
		namespace_id?:                            string
		partitioning_enabled?:                    bool
		requires_duplicate_detection?:            bool
		status?:                                  string
		support_ordering?:                        bool
	})

	#timeouts: close({
		read?: string
	})
}
