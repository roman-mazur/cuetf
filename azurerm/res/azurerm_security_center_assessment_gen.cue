package res

import "list"

#azurerm_security_center_assessment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_security_center_assessment")
	close({
		status!: matchN(1, [#status, list.MaxItems(1) & [_, ...] & [...#status]])
		additional_data?: [string]: string
		assessment_policy_id!: string
		id?:                   string
		target_resource_id!:   string
		timeouts?:             #timeouts
	})

	#status: close({
		cause?:       string
		code!:        string
		description?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
