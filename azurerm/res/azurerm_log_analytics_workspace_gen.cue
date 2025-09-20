package res

import "list"

#azurerm_log_analytics_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_log_analytics_workspace")
	close({
		allow_resource_only_permissions?:         bool
		cmk_for_query_forced?:                    bool
		daily_quota_gb?:                          number
		data_collection_rule_id?:                 string
		id?:                                      string
		immediate_data_purge_on_30_days_enabled?: bool
		internet_ingestion_enabled?:              bool
		internet_query_enabled?:                  bool
		local_authentication_enabled?:            bool
		location!:                                string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		name!:                               string
		primary_shared_key?:                 string
		reservation_capacity_in_gb_per_day?: number
		resource_group_name!:                string
		timeouts?:                           #timeouts
		retention_in_days?:                  number
		secondary_shared_key?:               string
		sku?:                                string
		tags?: [string]: string
		workspace_id?: string
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
