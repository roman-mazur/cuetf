package res

#azurerm_servicebus_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_servicebus_topic")
	close({
		auto_delete_on_idle?:                     string
		batched_operations_enabled?:              bool
		default_message_ttl?:                     string
		duplicate_detection_history_time_window?: string
		express_enabled?:                         bool
		id?:                                      string
		max_message_size_in_kilobytes?:           number
		max_size_in_megabytes?:                   number
		name!:                                    string
		namespace_id!:                            string
		partitioning_enabled?:                    bool
		requires_duplicate_detection?:            bool
		timeouts?:                                #timeouts
		status?:                                  string
		support_ordering?:                        bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
