package res

#azurerm_cognitive_account_rai_blocklist: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cognitive_account_rai_blocklist")
	close({
		timeouts?:             #timeouts
		cognitive_account_id!: string
		description?:          string
		id?:                   string
		name!:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
