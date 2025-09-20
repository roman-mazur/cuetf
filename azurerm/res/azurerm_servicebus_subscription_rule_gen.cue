package res

import "list"

#azurerm_servicebus_subscription_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_servicebus_subscription_rule")
	close({
		correlation_filter?: matchN(1, [#correlation_filter, list.MaxItems(1) & [...#correlation_filter]])
		action?:                         string
		filter_type!:                    string
		id?:                             string
		name!:                           string
		sql_filter?:                     string
		sql_filter_compatibility_level?: number
		subscription_id!:                string
		timeouts?:                       #timeouts
	})

	#correlation_filter: close({
		content_type?:   string
		correlation_id?: string
		label?:          string
		message_id?:     string
		properties?: [string]: string
		reply_to?:            string
		reply_to_session_id?: string
		session_id?:          string
		to?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
