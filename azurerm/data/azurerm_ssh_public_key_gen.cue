package data

#azurerm_ssh_public_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_ssh_public_key")
	close({
		timeouts?:            #timeouts
		id?:                  string
		name!:                string
		public_key?:          string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
