package res

#azurerm_nginx_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_nginx_configuration")
	close({
		config_file?: matchN(1, [#config_file, [...#config_file]])
		id?:                  string
		nginx_deployment_id!: string
		package_data?:        string
		root_file!:           string
		protected_file?: matchN(1, [#protected_file, [...#protected_file]])
		timeouts?: #timeouts
	})

	#config_file: close({
		content!:      string
		virtual_path!: string
	})

	#protected_file: close({
		content!:      string
		content_hash?: string
		virtual_path!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
