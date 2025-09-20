package res

import "list"

#azurerm_cdn_frontdoor_origin: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_cdn_frontdoor_origin")
	close({
		cdn_frontdoor_origin_group_id!:  string
		certificate_name_check_enabled!: bool
		enabled?:                        bool
		host_name!:                      string
		http_port?:                      number
		https_port?:                     number
		private_link?: matchN(1, [#private_link, list.MaxItems(1) & [...#private_link]])
		id?:                 string
		name!:               string
		timeouts?:           #timeouts
		origin_host_header?: string
		priority?:           number
		weight?:             number
	})

	#private_link: close({
		location!:               string
		private_link_target_id!: string
		request_message?:        string
		target_type?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
