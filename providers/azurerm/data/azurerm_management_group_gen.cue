package data

#azurerm_management_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_management_group")
	close({
		timeouts?: #timeouts
		all_management_group_ids?: [...string]
		all_subscription_ids?: [...string]
		display_name?: string
		id?:           string
		management_group_ids?: [...string]
		name?:                       string
		parent_management_group_id?: string
		subscription_ids?: [...string]
		tenant_scoped_id?: string
	})

	#timeouts: close({
		read?: string
	})
}
