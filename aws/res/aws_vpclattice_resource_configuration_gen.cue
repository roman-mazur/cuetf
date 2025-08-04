package res

#aws_vpclattice_resource_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_resource_configuration")
	close({
		allow_association_to_shareable_service_network?: bool
		arn?:                                            string
		id?:                                             string
		name!:                                           string
		port_ranges?: [...string]
		protocol?: string
		resource_configuration_definition?: matchN(1, [#resource_configuration_definition, [...#resource_configuration_definition]])
		region?:                          string
		timeouts?:                        #timeouts
		resource_configuration_group_id?: string
		resource_gateway_identifier?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#resource_configuration_definition: close({
		arn_resource?: matchN(1, [_#defs."/$defs/resource_configuration_definition/$defs/arn_resource", [..._#defs."/$defs/resource_configuration_definition/$defs/arn_resource"]])
		dns_resource?: matchN(1, [_#defs."/$defs/resource_configuration_definition/$defs/dns_resource", [..._#defs."/$defs/resource_configuration_definition/$defs/dns_resource"]])
		ip_resource?: matchN(1, [_#defs."/$defs/resource_configuration_definition/$defs/ip_resource", [..._#defs."/$defs/resource_configuration_definition/$defs/ip_resource"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/resource_configuration_definition/$defs/arn_resource": close({
		arn!: string
	})

	_#defs: "/$defs/resource_configuration_definition/$defs/dns_resource": close({
		domain_name!:     string
		ip_address_type!: string
	})

	_#defs: "/$defs/resource_configuration_definition/$defs/ip_resource": close({
		ip_address!: string
	})
}
