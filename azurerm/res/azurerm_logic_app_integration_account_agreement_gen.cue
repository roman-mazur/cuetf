package res

import "list"

#azurerm_logic_app_integration_account_agreement: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_integration_account_agreement")
	close({
		agreement_type!:           string
		content!:                  string
		guest_partner_name!:       string
		host_partner_name!:        string
		id?:                       string
		integration_account_name!: string
		metadata?: [string]: string
		guest_identity!: matchN(1, [#guest_identity, list.MaxItems(1) & [_, ...] & [...#guest_identity]])
		name!: string
		host_identity!: matchN(1, [#host_identity, list.MaxItems(1) & [_, ...] & [...#host_identity]])
		timeouts?:            #timeouts
		resource_group_name!: string
	})

	#guest_identity: close({
		qualifier!: string
		value!:     string
	})

	#host_identity: close({
		qualifier!: string
		value!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
