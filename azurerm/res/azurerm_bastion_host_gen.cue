package res

import "list"

#azurerm_bastion_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_bastion_host")
	close({
		copy_paste_enabled?:  bool
		dns_name?:            string
		file_copy_enabled?:   bool
		id?:                  string
		ip_connect_enabled?:  bool
		kerberos_enabled?:    bool
		location!:            string
		name!:                string
		resource_group_name!: string
		ip_configuration?: matchN(1, [#ip_configuration, list.MaxItems(1) & [...#ip_configuration]])
		scale_units?:               number
		session_recording_enabled?: bool
		timeouts?:                  #timeouts
		shareable_link_enabled?:    bool
		sku?:                       string
		tags?: [string]: string
		tunneling_enabled?:  bool
		virtual_network_id?: string
		zones?: [...string]
	})

	#ip_configuration: close({
		name!:                 string
		public_ip_address_id!: string
		subnet_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
