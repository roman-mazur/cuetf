package res

import "list"

#azurerm_spring_cloud_api_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_spring_cloud_api_portal")
	close({
		api_try_out_enabled?: bool
		gateway_ids?: [...string]
		https_only_enabled?: bool
		id?:                 string
		sso?: matchN(1, [#sso, list.MaxItems(1) & [...#sso]])
		instance_count?:                number
		name!:                          string
		public_network_access_enabled?: bool
		spring_cloud_service_id!:       string
		url?:                           string
		timeouts?:                      #timeouts
	})

	#sso: close({
		client_id?:     string
		client_secret?: string
		issuer_uri?:    string
		scope?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
