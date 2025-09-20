package res

#azurerm_servicebus_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_queue")
	close({
		auto_delete_on_idle?:                     string
		batched_operations_enabled?:              bool
		dead_lettering_on_message_expiration?:    bool
		default_message_ttl?:                     string
		duplicate_detection_history_time_window?: string
		express_enabled?:                         bool
		forward_dead_lettered_messages_to?:       string
		forward_to?:                              string
		id?:                                      string
		lock_duration?:                           string
		max_delivery_count?:                      number
		max_message_size_in_kilobytes?:           number
		max_size_in_megabytes?:                   number
		name!:                                    string
		namespace_id!:                            string
		timeouts?:                                #timeouts
		partitioning_enabled?:                    bool
		requires_duplicate_detection?:            bool
		requires_session?:                        bool
		status?:                                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
