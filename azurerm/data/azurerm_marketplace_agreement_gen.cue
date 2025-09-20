package data

#azurerm_marketplace_agreement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_marketplace_agreement")
	close({
		timeouts?:            #timeouts
		accepted?:            bool
		id?:                  string
		license_text_link?:   string
		offer!:               string
		plan!:                string
		privacy_policy_link?: string
		publisher!:           string
	})

	#timeouts: close({
		read?: string
	})
}
