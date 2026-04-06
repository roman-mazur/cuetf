package res

#azurerm_automation_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_certificate")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		base64!:                  string
		description?:             string
		exportable?:              bool
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		thumbprint?:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
