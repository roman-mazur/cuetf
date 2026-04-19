package res

#azurerm_automation_runtime_environment_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_runtime_environment_package")
	close({
		timeouts?:                          #timeouts
		automation_runtime_environment_id!: string
		content_uri!:                       string
		content_version?:                   string
		default?:                           bool
		hash_algorithm?:                    string
		hash_value?:                        string
		id?:                                string
		name!:                              string
		size_in_bytes?:                     number
		version?:                           string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
