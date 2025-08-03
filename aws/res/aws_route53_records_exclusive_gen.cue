package res

#aws_route53_records_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_records_exclusive")
	close({
		zone_id!: string
		resource_record_set?: matchN(1, [#resource_record_set, [...#resource_record_set]])
		timeouts?: #timeouts
	})

	#resource_record_set: close({
		failover?:        string
		health_check_id?: string
		alias_target?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/alias_target", [..._#defs."/$defs/resource_record_set/$defs/alias_target"]])
		cidr_routing_config?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/cidr_routing_config", [..._#defs."/$defs/resource_record_set/$defs/cidr_routing_config"]])
		multi_value_answer?: bool
		geolocation?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/geolocation", [..._#defs."/$defs/resource_record_set/$defs/geolocation"]])
		geoproximity_location?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/geoproximity_location", [..._#defs."/$defs/resource_record_set/$defs/geoproximity_location"]])
		name!:                       string
		region?:                     string
		set_identifier?:             string
		traffic_policy_instance_id?: string
		ttl?:                        number
		type?:                       string
		resource_records?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/resource_records", [..._#defs."/$defs/resource_record_set/$defs/resource_records"]])
		weight?: number
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/resource_record_set/$defs/alias_target": close({
		dns_name!:               string
		evaluate_target_health!: bool
		hosted_zone_id!:         string
	})

	_#defs: "/$defs/resource_record_set/$defs/cidr_routing_config": close({
		collection_id!: string
		location_name!: string
	})

	_#defs: "/$defs/resource_record_set/$defs/geolocation": close({
		continent_code?:   string
		country_code?:     string
		subdivision_code?: string
	})

	_#defs: "/$defs/resource_record_set/$defs/geoproximity_location": close({
		aws_region?:       string
		bias?:             number
		local_zone_group?: string
		coordinates?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/geoproximity_location/$defs/coordinates", [..._#defs."/$defs/resource_record_set/$defs/geoproximity_location/$defs/coordinates"]])
	})

	_#defs: "/$defs/resource_record_set/$defs/geoproximity_location/$defs/coordinates": close({
		latitude!:  string
		longitude!: string
	})

	_#defs: "/$defs/resource_record_set/$defs/resource_records": close({
		value!: string
	})
}
