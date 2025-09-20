package res

import "list"

#azurerm_cognitive_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cognitive_deployment")
	close({
		model?: matchN(1, [#model, list.MaxItems(1) & [_, ...] & [...#model]])
		cognitive_account_id!:       string
		dynamic_throttling_enabled?: bool
		id?:                         string
		name!:                       string
		rai_policy_name?:            string
		version_upgrade_option?:     string
		sku?: matchN(1, [#sku, list.MaxItems(1) & [_, ...] & [...#sku]])
		timeouts?: #timeouts
	})

	#model: close({
		format!:  string
		name!:    string
		version?: string
	})

	#sku: close({
		capacity?: number
		family?:   string
		name!:     string
		size?:     string
		tier?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
