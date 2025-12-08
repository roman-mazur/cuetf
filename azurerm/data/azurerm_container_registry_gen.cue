package data

#azurerm_container_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_container_registry")
	close({
		admin_enabled?:         bool
		admin_password?:        string
		admin_username?:        string
		data_endpoint_enabled?: bool
		data_endpoint_host_names?: [...string]
		id?:                  string
		location?:            string
		login_server?:        string
		timeouts?:            #timeouts
		name!:                string
		resource_group_name!: string
		sku?:                 string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
