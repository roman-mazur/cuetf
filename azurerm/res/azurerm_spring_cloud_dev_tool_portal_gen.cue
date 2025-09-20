package res

import "list"

#azurerm_spring_cloud_dev_tool_portal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_spring_cloud_dev_tool_portal")
	close({
		sso?: matchN(1, [#sso, list.MaxItems(1) & [...#sso]])
		application_accelerator_enabled?: bool
		application_live_view_enabled?:   bool
		id?:                              string
		name!:                            string
		public_network_access_enabled?:   bool
		spring_cloud_service_id!:         string
		timeouts?:                        #timeouts
	})

	#sso: close({
		client_id?:     string
		client_secret?: string
		metadata_url?:  string
		scope?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
