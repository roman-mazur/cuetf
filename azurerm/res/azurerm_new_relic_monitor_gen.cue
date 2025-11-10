package res

import "list"

#azurerm_new_relic_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_new_relic_monitor")
	close({
		account_creation_source?: string
		account_id?:              string
		id?:                      string
		ingestion_key?:           string
		location!:                string
		name!:                    string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		plan!: matchN(1, [#plan, list.MaxItems(1) & [_, ...] & [...#plan]])
		timeouts?:            #timeouts
		org_creation_source?: string
		organization_id?:     string
		resource_group_name!: string
		user_id?:             string
		user!: matchN(1, [#user, list.MaxItems(1) & [_, ...] & [...#user]])
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#plan: close({
		billing_cycle?:  string
		effective_date!: string
		plan_id?:        string
		usage_type?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	#user: close({
		email!:        string
		first_name!:   string
		last_name!:    string
		phone_number!: string
	})
}
