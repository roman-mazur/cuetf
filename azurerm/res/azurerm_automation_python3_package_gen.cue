package res

#azurerm_automation_python3_package: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_python3_package")
	close({
		timeouts?:                #timeouts
		automation_account_name!: string
		content_uri!:             string
		content_version?:         string
		hash_algorithm?:          string
		hash_value?:              string
		id?:                      string
		name!:                    string
		resource_group_name!:     string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
