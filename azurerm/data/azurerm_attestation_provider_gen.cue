package data

#azurerm_attestation_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_attestation_provider")
	close({
		timeouts?:            #timeouts
		attestation_uri?:     string
		id?:                  string
		location?:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		trust_model?: string
	})

	#timeouts: close({
		read?: string
	})
}
