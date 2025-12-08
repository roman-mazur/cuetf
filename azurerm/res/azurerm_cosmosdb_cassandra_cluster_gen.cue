package res

import "list"

#azurerm_cosmosdb_cassandra_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cosmosdb_cassandra_cluster")
	close({
		authentication_method?: string
		client_certificate_pems?: [...string]
		default_admin_password!:         string
		delegated_management_subnet_id!: string
		external_gossip_certificate_pems?: [...string]
		external_seed_node_ip_addresses?: [...string]
		hours_between_backups?: number
		id?:                    string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		location!:            string
		name!:                string
		repair_enabled?:      bool
		timeouts?:            #timeouts
		resource_group_name!: string
		tags?: [string]: string
		version?: string
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
}
