package res

#azurerm_user_assigned_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_user_assigned_identity")
	close({
		timeouts?:            #timeouts
		client_id?:           string
		id?:                  string
		location!:            string
		name!:                string
		principal_id?:        string
		resource_group_name!: string
		tags?: [string]: string
		tenant_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
