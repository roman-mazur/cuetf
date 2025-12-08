package res

import "list"

#azurerm_dev_test_linux_virtual_machine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_dev_test_linux_virtual_machine")
	close({
		allow_claim?:                bool
		disallow_public_ip_address?: bool
		fqdn?:                       string
		id?:                         string
		lab_name!:                   string
		lab_subnet_name!:            string
		lab_virtual_network_id!:     string
		location!:                   string
		name!:                       string
		notes?:                      string
		gallery_image_reference!: matchN(1, [#gallery_image_reference, list.MaxItems(1) & [_, ...] & [...#gallery_image_reference]])
		inbound_nat_rule?: matchN(1, [#inbound_nat_rule, [...#inbound_nat_rule]])
		password?:            string
		resource_group_name!: string
		size!:                string
		timeouts?:            #timeouts
		ssh_key?:             string
		storage_type!:        string
		tags?: [string]: string
		unique_identifier?: string
		username!:          string
	})

	#gallery_image_reference: close({
		offer!:     string
		publisher!: string
		sku!:       string
		version!:   string
	})

	#inbound_nat_rule: close({
		backend_port!:  number
		frontend_port?: number
		protocol!:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
