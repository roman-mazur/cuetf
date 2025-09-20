package data

#azurerm_network_service_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_network_service_tags")
	close({
		timeouts?: #timeouts
		address_prefixes?: [...string]
		id?: string
		ipv4_cidrs?: [...string]
		ipv6_cidrs?: [...string]
		location!:        string
		location_filter?: string
		name?:            string
		service!:         string
	})

	#timeouts: close({
		read?: string
	})
}
