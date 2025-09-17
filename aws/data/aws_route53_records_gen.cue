package data

#aws_route53_records: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_records")
	close({
		name_regex?: string
		resource_record_sets?: [...close({
			alias_target?: close({
				dns_name?:               string
				evaluate_target_health?: bool
				hosted_zone_id?:         string
			})
			cidr_routing_config?: close({
				collection_id?: string
				location_name?: string
			})
			failover?: string
			geolocation?: close({
				continent_code?:   string
				country_code?:     string
				subdivision_code?: string
			})
			geoproximity_location?: close({
				aws_region?: string
				bias?:       number
				coordinates?: close({
					latitude?:  string
					longitude?: string
				})
				local_zone_group?: string
			})
			health_check_id?:    string
			multi_value_answer?: bool
			name?:               string
			region?:             string
			resource_records?: [...close({
				value?: string
			})]
			set_identifier?:             string
			traffic_policy_instance_id?: string
			ttl?:                        number
			type?:                       string
			weight?:                     number
		})]
		zone_id!: string
	})
}
