package res

#azurerm_storage_container_immutability_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_storage_container_immutability_policy")
	close({
		timeouts?:                              #timeouts
		id?:                                    string
		immutability_period_in_days!:           number
		locked?:                                bool
		protected_append_writes_all_enabled?:   bool
		protected_append_writes_enabled?:       bool
		storage_container_resource_manager_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
