package res

#azurerm_federated_identity_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_federated_identity_credential")
	close({
		timeouts?: #timeouts
		audience!: [...string]
		id?:                        string
		issuer!:                    string
		name!:                      string
		subject!:                   string
		user_assigned_identity_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
