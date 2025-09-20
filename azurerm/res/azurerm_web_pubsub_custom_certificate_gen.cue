package res

#azurerm_web_pubsub_custom_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_web_pubsub_custom_certificate")
	close({
		timeouts?:              #timeouts
		certificate_version?:   string
		custom_certificate_id!: string
		id?:                    string
		name!:                  string
		web_pubsub_id!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
