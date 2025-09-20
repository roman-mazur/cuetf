package res

#azurerm_dev_test_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_test_policy")
	close({
		description?:         string
		evaluator_type!:      string
		fact_data?:           string
		id?:                  string
		lab_name!:            string
		name!:                string
		policy_set_name!:     string
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		threshold!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
