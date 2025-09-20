package res

import "list"

#azurerm_iot_security_device_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_iot_security_device_group")
	close({
		allow_rule?: matchN(1, [#allow_rule, list.MaxItems(1) & [...#allow_rule]])
		range_rule?: matchN(1, [#range_rule, [...#range_rule]])
		timeouts?:  #timeouts
		id?:        string
		iothub_id!: string
		name!:      string
	})

	#allow_rule: close({
		connection_from_ips_not_allowed?: [...string]
		connection_to_ips_not_allowed?: [...string]
		local_users_not_allowed?: [...string]
		processes_not_allowed?: [...string]
	})

	#range_rule: close({
		duration!: string
		max!:      number
		min!:      number
		type!:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
