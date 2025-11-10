package res

import "list"

#azurerm_datadog_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_datadog_monitor")
	close({
		id?: string
		datadog_organization!: matchN(1, [#datadog_organization, list.MaxItems(1) & [_, ...] & [...#datadog_organization]])
		location!:                        string
		marketplace_subscription_status?: string
		monitoring_enabled?:              bool
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:                string
		timeouts?:            #timeouts
		resource_group_name!: string
		sku_name!:            string
		tags?: [string]: string
		user!: matchN(1, [#user, list.MaxItems(1) & [_, ...] & [...#user]])
	})

	#datadog_organization: close({
		api_key!:           string
		application_key!:   string
		enterprise_app_id?: string
		id?:                string
		linking_auth_code?: string
		linking_client_id?: string
		name?:              string
		redirect_uri?:      string
	})

	#identity: close({
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#user: close({
		email!:        string
		name!:         string
		phone_number?: string
	})
}
