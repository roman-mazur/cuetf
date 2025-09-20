package data

#azurerm_batch_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_batch_certificate")
	close({
		timeouts?:             #timeouts
		account_name!:         string
		format?:               string
		id?:                   string
		name!:                 string
		public_data?:          string
		resource_group_name!:  string
		thumbprint?:           string
		thumbprint_algorithm?: string
	})

	#timeouts: close({
		read?: string
	})
}
