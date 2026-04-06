package res

#azurerm_management_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_management_group")
	close({
		timeouts?:                   #timeouts
		display_name?:               string
		id?:                         string
		name?:                       string
		parent_management_group_id?: string
		subscription_ids?: [...string]
		tenant_scoped_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
