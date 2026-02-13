package data

#azurerm_cognitive_account_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_cognitive_account_project")
	close({
		cognitive_account_name!: string
		default?:                bool
		description?:            string
		display_name?:           string
		endpoints?: [string]: string
		id?: string
		identity?: [...close({
			identity_ids?: [...string]
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:            string
		name!:                string
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
