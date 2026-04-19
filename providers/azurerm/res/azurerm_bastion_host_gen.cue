package res

import "list"

#azurerm_bastion_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_bastion_host")
	close({
		ip_configuration?: matchN(1, [#ip_configuration, list.MaxItems(1) & [...#ip_configuration]])
		timeouts?:                  #timeouts
		copy_paste_enabled?:        bool
		dns_name?:                  string
		file_copy_enabled?:         bool
		id?:                        string
		ip_connect_enabled?:        bool
		kerberos_enabled?:          bool
		location!:                  string
		name!:                      string
		private_only_enabled?:      bool
		resource_group_name!:       string
		scale_units?:               number
		session_recording_enabled?: bool
		shareable_link_enabled?:    bool
		sku?:                       string
		tags?: [string]: string
		tunneling_enabled?:  bool
		virtual_network_id?: string
		zones?: [...string]
	})

	#ip_configuration: close({
		name!:                 string
		public_ip_address_id?: string
		subnet_id!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
