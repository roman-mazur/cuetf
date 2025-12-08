package res

#azurerm_web_pubsub_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_web_pubsub_custom_domain")
	close({
		timeouts?:                         #timeouts
		domain_name!:                      string
		id?:                               string
		name!:                             string
		web_pubsub_custom_certificate_id!: string
		web_pubsub_id!:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
