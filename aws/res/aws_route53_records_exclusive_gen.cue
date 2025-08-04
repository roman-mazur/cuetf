package res

#aws_route53_records_exclusive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_records_exclusive")
	close({
		resource_record_set?: matchN(1, [#resource_record_set, [...#resource_record_set]])
		timeouts?: #timeouts
		zone_id!:  string
	})

	#resource_record_set: close({
		failover?:           string
		health_check_id?:    string
		multi_value_answer?: bool
		name!:               string
		alias_target?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/alias_target", [..._#defs."/$defs/resource_record_set/$defs/alias_target"]])
		region?:         string
		set_identifier?: string
		cidr_routing_config?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/cidr_routing_config", [..._#defs."/$defs/resource_record_set/$defs/cidr_routing_config"]])
		traffic_policy_instance_id?: string
		ttl?:                        number
		type?:                       string
		geolocation?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/geolocation", [..._#defs."/$defs/resource_record_set/$defs/geolocation"]])
		geoproximity_location?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/geoproximity_location", [..._#defs."/$defs/resource_record_set/$defs/geoproximity_location"]])
		weight?: number
		resource_records?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/resource_records", [..._#defs."/$defs/resource_record_set/$defs/resource_records"]])
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
		coordinates?: matchN(1, [_#defs."/$defs/resource_record_set/$defs/geoproximity_location/$defs/coordinates", [..._#defs."/$defs/resource_record_set/$defs/geoproximity_location/$defs/coordinates"]])
		aws_region?:       string
		bias?:             number
		local_zone_group?: string
	})

	_#defs: "/$defs/resource_record_set/$defs/geoproximity_location/$defs/coordinates": close({
		latitude!:  string
		longitude!: string
	})

	_#defs: "/$defs/resource_record_set/$defs/resource_records": close({
		value!: string
	})
}
