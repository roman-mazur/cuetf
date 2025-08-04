package data

#aws_vpc_endpoint_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_service")
	close({
		acceptance_required?: bool
		arn?:                 string
		availability_zones?: [...string]
		base_endpoint_dns_names?: [...string]
		id?:                    string
		manages_vpc_endpoints?: bool
		owner?:                 string
		private_dns_name?:      string
		private_dns_names?: [...string]
		service?: string
		filter?: matchN(1, [#filter, [...#filter]])
		service_id?:     string
		service_name?:   string
		service_region?: string
		service_regions?: [...string]
		timeouts?:     #timeouts
		service_type?: string
		supported_ip_address_types?: [...string]
		tags?: [string]: string
		vpc_endpoint_policy_supported?: bool
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
