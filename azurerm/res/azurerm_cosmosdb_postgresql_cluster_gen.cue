package res

import "list"

#azurerm_cosmosdb_postgresql_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_postgresql_cluster")
	close({
		administrator_login_password?:         string
		citus_version?:                        string
		coordinator_public_ip_access_enabled?: bool
		coordinator_server_edition?:           string
		coordinator_storage_quota_in_mb?:      number
		coordinator_vcore_count?:              number
		earliest_restore_time?:                string
		ha_enabled?:                           bool
		id?:                                   string
		location!:                             string
		name!:                                 string
		node_count!:                           number
		node_public_ip_access_enabled?:        bool
		maintenance_window?: matchN(1, [#maintenance_window, list.MaxItems(1) & [...#maintenance_window]])
		node_server_edition?:      string
		node_storage_quota_in_mb?: number
		timeouts?:                 #timeouts
		node_vcores?:              number
		point_in_time_in_utc?:     string
		preferred_primary_zone?:   string
		resource_group_name!:      string
		servers?: [...close({
			fqdn?: string
			name?: string
		})]
		shards_on_coordinator_enabled?: bool
		source_location?:               string
		source_resource_id?:            string
		sql_version?:                   string
		tags?: [string]: string
	})

	#maintenance_window: close({
		day_of_week?:  number
		start_hour?:   number
		start_minute?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
