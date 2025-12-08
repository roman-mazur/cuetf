package data

#azurerm_servicebus_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_servicebus_queue")
	close({
		auto_delete_on_idle?:                     string
		timeouts?:                                #timeouts
		batched_operations_enabled?:              bool
		dead_lettering_on_message_expiration?:    bool
		default_message_ttl?:                     string
		duplicate_detection_history_time_window?: string
		enable_batched_operations?:               bool
		enable_express?:                          bool
		enable_partitioning?:                     bool
		express_enabled?:                         bool
		forward_dead_lettered_messages_to?:       string
		forward_to?:                              string
		id?:                                      string
		lock_duration?:                           string
		max_delivery_count?:                      number
		max_size_in_megabytes?:                   number
		name!:                                    string
		namespace_id?:                            string
		partitioning_enabled?:                    bool
		requires_duplicate_detection?:            bool
		requires_session?:                        bool
		status?:                                  string
	})

	#timeouts: close({
		read?: string
	})
}
