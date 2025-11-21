package res

#aws_vpclattice_resource_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_resource_configuration")
	close({
		allow_association_to_shareable_service_network?: bool
		arn?:                                            string
		custom_domain_name?:                             string
		domain_verification_arn?:                        string
		domain_verification_id?:                         string
		domain_verification_status?:                     string
		id?:                                             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		resource_configuration_definition?: matchN(1, [#resource_configuration_definition, [...#resource_configuration_definition]])
		timeouts?: #timeouts
		port_ranges?: [...string]
		protocol?:                        string
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
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
