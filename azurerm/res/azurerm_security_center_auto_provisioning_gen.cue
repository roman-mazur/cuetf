package res

#azurerm_security_center_auto_provisioning: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_security_center_auto_provisioning")
	close({
		timeouts?:       #timeouts
		auto_provision!: string
		id?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
