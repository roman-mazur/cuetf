package res

#azurerm_analysis_services_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_analysis_services_server")
	close({
		admin_users?: [...string]
		backup_blob_container_uri?: string
		id?:                        string
		location!:                  string
		name!:                      string
		power_bi_service_enabled?:  bool
		ipv4_firewall_rule?: matchN(1, [#ipv4_firewall_rule, [...#ipv4_firewall_rule]])
		querypool_connection_mode?: string
		resource_group_name!:       string
		timeouts?:                  #timeouts
		server_full_name?:          string
		sku!:                       string
		tags?: [string]: string
	})

	#ipv4_firewall_rule: close({
		name!:        string
		range_end!:   string
		range_start!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
