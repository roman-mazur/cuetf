package res

import "list"

#azurerm_api_management_logger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_api_management_logger")
	close({
		api_management_name!: string
		application_insights?: matchN(1, [#application_insights, list.MaxItems(1) & [...#application_insights]])
		buffered?:            bool
		description?:         string
		id?:                  string
		name!:                string
		resource_group_name!: string
		resource_id?:         string
		eventhub?: matchN(1, [#eventhub, list.MaxItems(1) & [...#eventhub]])
		timeouts?: #timeouts
	})

	#application_insights: close({
		connection_string?:   string
		instrumentation_key?: string
	})

	#eventhub: close({
		connection_string?:                string
		endpoint_uri?:                     string
		name!:                             string
		user_assigned_identity_client_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
