package res

import "list"

#azurerm_web_pubsub_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_pubsub_hub")
	close({
		event_handler?: matchN(1, [#event_handler, [...#event_handler]])
		anonymous_connections_enabled?: bool
		id?:                            string
		name!:                          string
		web_pubsub_id!:                 string
		event_listener?: matchN(1, [#event_listener, [...#event_listener]])
		timeouts?: #timeouts
	})

	#event_handler: close({
		auth?: matchN(1, [_#defs."/$defs/event_handler/$defs/auth", list.MaxItems(1) & [..._#defs."/$defs/event_handler/$defs/auth"]])
		system_events?: [...string]
		url_template!:       string
		user_event_pattern?: string
	})

	#event_listener: close({
		eventhub_name!:           string
		eventhub_namespace_name!: string
		system_event_name_filter?: [...string]
		user_event_name_filter?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/event_handler/$defs/auth": close({
		managed_identity_id!: string
	})
}
