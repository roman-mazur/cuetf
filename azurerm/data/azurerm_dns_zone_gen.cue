package data

#azurerm_dns_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_dns_zone")
	close({
		timeouts?:                  #timeouts
		id?:                        string
		max_number_of_record_sets?: number
		name!:                      string
		name_servers?: [...string]
		number_of_record_sets?: number
		resource_group_name?:   string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
