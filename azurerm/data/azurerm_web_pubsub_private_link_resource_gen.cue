package data

#azurerm_web_pubsub_private_link_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_pubsub_private_link_resource")
	close({
		timeouts?: #timeouts
		id?:       string
		shared_private_link_resource_types?: [...close({
			description?:      string
			subresource_name?: string
		})]
		web_pubsub_id!: string
	})

	#timeouts: close({
		read?: string
	})
}
