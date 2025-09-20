package res

#azurerm_custom_ip_prefix: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_custom_ip_prefix")
	close({
		cidr!:                          string
		commissioning_enabled?:         bool
		id?:                            string
		internet_advertising_disabled?: bool
		location!:                      string
		name!:                          string
		parent_custom_ip_prefix_id?:    string
		resource_group_name!:           string
		timeouts?:                      #timeouts
		roa_validity_end_date?:         string
		tags?: [string]: string
		wan_validation_signed_message?: string
		zones?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
