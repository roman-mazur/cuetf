package data

#azurerm_nginx_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_nginx_configuration")
	close({
		timeouts?: #timeouts
		config_file?: [...close({
			content?:      string
			virtual_path?: string
		})]
		id?:                  string
		nginx_deployment_id!: string
		package_data?:        string
		protected_file?: [...close({
			content?:      string
			content_hash?: string
			virtual_path?: string
		})]
		root_file?: string
	})

	#timeouts: close({
		read?: string
	})
}
