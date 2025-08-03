package res

import "list"

#aws_route53_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53_record")
	close({
		alias?: matchN(1, [#alias, list.MaxItems(1) & [...#alias]])
		allow_overwrite?: bool
		cidr_routing_policy?: matchN(1, [#cidr_routing_policy, list.MaxItems(1) & [...#cidr_routing_policy]])
		failover_routing_policy?: matchN(1, [#failover_routing_policy, list.MaxItems(1) & [...#failover_routing_policy]])
		geolocation_routing_policy?: matchN(1, [#geolocation_routing_policy, list.MaxItems(1) & [...#geolocation_routing_policy]])
		geoproximity_routing_policy?: matchN(1, [#geoproximity_routing_policy, list.MaxItems(1) & [...#geoproximity_routing_policy]])
		latency_routing_policy?: matchN(1, [#latency_routing_policy, list.MaxItems(1) & [...#latency_routing_policy]])
		timeouts?: #timeouts
		fqdn?:     string
		weighted_routing_policy?: matchN(1, [#weighted_routing_policy, list.MaxItems(1) & [...#weighted_routing_policy]])
		health_check_id?:                  string
		id?:                               string
		multivalue_answer_routing_policy?: bool
		name!:                             string
		records?: [...string]
		set_identifier?: string
		ttl?:            number
		type!:           string
		zone_id!:        string
	})

	#alias: close({
		evaluate_target_health!: bool
		name!:                   string
		zone_id!:                string
	})

	#cidr_routing_policy: close({
		collection_id!: string
		location_name!: string
	})

	#failover_routing_policy: close({
		type!: string
	})

	#geolocation_routing_policy: close({
		continent?:   string
		country?:     string
		subdivision?: string
	})

	#geoproximity_routing_policy: close({
		aws_region?:       string
		bias?:             number
		local_zone_group?: string
		coordinates?: matchN(1, [_#defs."/$defs/geoproximity_routing_policy/$defs/coordinates", [..._#defs."/$defs/geoproximity_routing_policy/$defs/coordinates"]])
	})

	#latency_routing_policy: close({
		region!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#weighted_routing_policy: close({
		weight!: number
	})

	_#defs: "/$defs/geoproximity_routing_policy/$defs/coordinates": close({
		latitude!:  string
		longitude!: string
	})
}
