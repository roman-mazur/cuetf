package res

import "list"

#azurerm_service_fabric_managed_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_service_fabric_managed_cluster")
	close({
		authentication?: matchN(1, [#authentication, list.MaxItems(1) & [...#authentication]])
		custom_fabric_setting?: matchN(1, [#custom_fabric_setting, [...#custom_fabric_setting]])
		lb_rule!: matchN(1, [#lb_rule, [_, ...] & [...#lb_rule]])
		node_type?: matchN(1, [#node_type, [...#node_type]])
		timeouts?:               #timeouts
		backup_service_enabled?: bool
		client_connection_port!: number
		dns_name?:               string
		dns_service_enabled?:    bool
		http_gateway_port!:      number
		id?:                     string
		location!:               string
		name!:                   string
		password?:               string
		resource_group_name!:    string
		sku?:                    string
		subnet_id?:              string
		tags?: [string]: string
		upgrade_wave?: string
		username?:     string
	})

	#authentication: close({
		active_directory?: matchN(1, [_#defs."/$defs/authentication/$defs/active_directory", list.MaxItems(1) & [..._#defs."/$defs/authentication/$defs/active_directory"]])
		certificate?: matchN(1, [_#defs."/$defs/authentication/$defs/certificate", [..._#defs."/$defs/authentication/$defs/certificate"]])
	})

	#custom_fabric_setting: close({
		parameter!: string
		section!:   string
		value!:     string
	})

	#lb_rule: close({
		backend_port!:       number
		frontend_port!:      number
		probe_protocol!:     string
		probe_request_path?: string
		protocol!:           string
	})

	#node_type: close({
		vm_secrets?: matchN(1, [_#defs."/$defs/node_type/$defs/vm_secrets", [..._#defs."/$defs/node_type/$defs/vm_secrets"]])
		application_port_range!: string
		capacities?: [string]: string
		data_disk_size_gb!:                 number
		data_disk_type?:                    string
		ephemeral_port_range!:              string
		id?:                                string
		multiple_placement_groups_enabled?: bool
		name!:                              string
		placement_properties?: [string]: string
		primary?:            bool
		stateless?:          bool
		vm_image_offer!:     string
		vm_image_publisher!: string
		vm_image_sku!:       string
		vm_image_version!:   string
		vm_instance_count!:  number
		vm_size!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/authentication/$defs/active_directory": close({
		client_application_id!:  string
		cluster_application_id!: string
		tenant_id!:              string
	})

	_#defs: "/$defs/authentication/$defs/certificate": close({
		common_name?: string
		thumbprint!:  string
		type!:        string
	})

	_#defs: "/$defs/node_type/$defs/vm_secrets": close({
		certificates!: matchN(1, [_#defs."/$defs/node_type/$defs/vm_secrets/$defs/certificates", [_, ...] & [..._#defs."/$defs/node_type/$defs/vm_secrets/$defs/certificates"]])
		vault_id!: string
	})

	_#defs: "/$defs/node_type/$defs/vm_secrets/$defs/certificates": close({
		store!: string
		url!:   string
	})
}
