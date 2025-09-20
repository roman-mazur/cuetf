package res

#azurerm_palo_alto_local_rulestack_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_palo_alto_local_rulestack_prefix_list")
	close({
		timeouts?:      #timeouts
		audit_comment?: string
		description?:   string
		id?:            string
		name!:          string
		prefix_list!: [...string]
		rulestack_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
