package res

#azurerm_batch_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_batch_certificate")
	close({
		account_name!:         string
		certificate!:          string
		format!:               string
		id?:                   string
		name?:                 string
		password?:             string
		public_data?:          string
		timeouts?:             #timeouts
		resource_group_name!:  string
		thumbprint!:           string
		thumbprint_algorithm!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
