package res

import "list"

#azurerm_web_pubsub_network_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_pubsub_network_acl")
	close({
		private_endpoint?: matchN(1, [#private_endpoint, [...#private_endpoint]])
		public_network!: matchN(1, [#public_network, list.MaxItems(1) & [_, ...] & [...#public_network]])
		timeouts?:       #timeouts
		default_action?: string
		id?:             string
		web_pubsub_id!:  string
	})

	#private_endpoint: close({
		allowed_request_types?: [...string]
		denied_request_types?: [...string]
		id!: string
	})

	#public_network: close({
		allowed_request_types?: [...string]
		denied_request_types?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
