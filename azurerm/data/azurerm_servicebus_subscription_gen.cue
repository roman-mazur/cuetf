package data

#azurerm_servicebus_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_servicebus_subscription")
	close({
		auto_delete_on_idle?:                       string
		batched_operations_enabled?:                bool
		dead_lettering_on_filter_evaluation_error?: bool
		dead_lettering_on_message_expiration?:      bool
		default_message_ttl?:                       string
		enable_batched_operations?:                 bool
		forward_dead_lettered_messages_to?:         string
		forward_to?:                                string
		id?:                                        string
		lock_duration?:                             string
		max_delivery_count?:                        number
		name!:                                      string
		timeouts?:                                  #timeouts
		requires_session?:                          bool
		topic_id?:                                  string
	})

	#timeouts: close({
		read?: string
	})
}
