package res

import "list"

#azurerm_servicebus_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_subscription")
	close({
		auto_delete_on_idle?:                       string
		batched_operations_enabled?:                bool
		client_scoped_subscription_enabled?:        bool
		dead_lettering_on_filter_evaluation_error?: bool
		dead_lettering_on_message_expiration?:      bool
		default_message_ttl?:                       string
		forward_dead_lettered_messages_to?:         string
		forward_to?:                                string
		client_scoped_subscription?: matchN(1, [#client_scoped_subscription, list.MaxItems(1) & [...#client_scoped_subscription]])
		id?:                 string
		lock_duration?:      string
		max_delivery_count!: number
		timeouts?:           #timeouts
		name!:               string
		requires_session?:   bool
		status?:             string
		topic_id!:           string
	})

	#client_scoped_subscription: close({
		client_id?:                               string
		is_client_scoped_subscription_durable?:   bool
		is_client_scoped_subscription_shareable?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
