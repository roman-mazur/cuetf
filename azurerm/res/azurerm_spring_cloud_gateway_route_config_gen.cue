package res

import "list"

#azurerm_spring_cloud_gateway_route_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_gateway_route_config")
	close({
		filters?: [...string]
		id?:   string
		name!: string
		predicates?: [...string]
		open_api?: matchN(1, [#open_api, list.MaxItems(1) & [...#open_api]])
		protocol!:                string
		spring_cloud_app_id?:     string
		spring_cloud_gateway_id!: string
		sso_validation_enabled?:  bool
		route?: matchN(1, [#route, [...#route]])
		timeouts?: #timeouts
	})

	#open_api: close({
		uri?: string
	})

	#route: close({
		classification_tags?: [...string]
		description?: string
		filters?: [...string]
		order!: number
		predicates?: [...string]
		sso_validation_enabled?: bool
		title?:                  string
		token_relay?:            bool
		uri?:                    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
