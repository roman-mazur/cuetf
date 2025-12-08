package res

#azurerm_active_directory_domain_service_replica_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_active_directory_domain_service_replica_set")
	close({
		timeouts?: #timeouts
		domain_controller_ip_addresses?: [...string]
		domain_service_id!:          string
		external_access_ip_address?: string
		id?:                         string
		location!:                   string
		service_status?:             string
		subnet_id!:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
