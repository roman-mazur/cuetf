package data

#azurerm_dev_test_virtual_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_test_virtual_network")
	close({
		timeouts?: #timeouts
		allowed_subnets?: [...close({
			allow_public_ip?: string
			lab_subnet_name?: string
			resource_id?:     string
		})]
		id?:                  string
		lab_name!:            string
		name!:                string
		resource_group_name!: string
		subnet_overrides?: [...close({
			lab_subnet_name?:                  string
			resource_id?:                      string
			use_in_vm_creation_permission?:    string
			use_public_ip_address_permission?: string
			virtual_network_pool_name?:        string
		})]
		unique_identifier?: string
	})

	#timeouts: close({
		read?: string
	})
}
