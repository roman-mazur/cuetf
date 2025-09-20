package res

import "list"

#azurerm_dns_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dns_zone")
	close({
		soa_record?: matchN(1, [#soa_record, list.MaxItems(1) & [...#soa_record]])
		id?:                        string
		max_number_of_record_sets?: number
		name!:                      string
		name_servers?: [...string]
		number_of_record_sets?: number
		resource_group_name!:   string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#soa_record: close({
		email!:         string
		expire_time?:   number
		fqdn?:          string
		host_name?:     string
		minimum_ttl?:   number
		refresh_time?:  number
		retry_time?:    number
		serial_number?: number
		tags?: [string]: string
		ttl?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
