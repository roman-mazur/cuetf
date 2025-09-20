package res

#azurerm_federated_identity_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_federated_identity_credential")
	close({
		timeouts?: #timeouts
		audience!: [...string]
		id?:                  string
		issuer!:              string
		name!:                string
		parent_id!:           string
		resource_group_name!: string
		subject!:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
