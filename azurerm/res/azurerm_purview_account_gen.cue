package res

import "list"

#azurerm_purview_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_purview_account")
	close({
		atlas_kafka_endpoint_primary_connection_string?:   string
		atlas_kafka_endpoint_secondary_connection_string?: string
		aws_external_id?:                                  string
		catalog_endpoint?:                                 string
		guardian_endpoint?:                                string
		id?:                                               string
		location!:                                         string
		managed_event_hub_enabled?:                        bool
		identity!: matchN(1, [#identity, list.MaxItems(1) & [_, ...] & [...#identity]])
		managed_resource_group_name?: string
		managed_resources?: [...close({
			event_hub_namespace_id?: string
			resource_group_id?:      string
			storage_account_id?:     string
		})]
		name!:                   string
		timeouts?:               #timeouts
		public_network_enabled?: bool
		resource_group_name!:    string
		scan_endpoint?:          string
		tags?: [string]: string
	})

	#identity: close({
		identity_ids?: [...string]
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
}
