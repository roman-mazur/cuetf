package res

import "list"

#aws_route53_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53_record")
	allow_overwrite?:                  bool
	fqdn?:                             string
	health_check_id?:                  string
	id?:                               string
	multivalue_answer_routing_policy?: bool
	name!:                             string
	records?: [...string]
	set_identifier?: string
	ttl?:            number
	type!:           string
	zone_id!:        string
	alias?: #alias | list.MaxItems(1) & [...#alias]
	cidr_routing_policy?: #cidr_routing_policy | list.MaxItems(1) & [...#cidr_routing_policy]
	failover_routing_policy?: #failover_routing_policy | list.MaxItems(1) & [...#failover_routing_policy]
	geolocation_routing_policy?: #geolocation_routing_policy | list.MaxItems(1) & [...#geolocation_routing_policy]
	geoproximity_routing_policy?: #geoproximity_routing_policy | list.MaxItems(1) & [...#geoproximity_routing_policy]
	latency_routing_policy?: #latency_routing_policy | list.MaxItems(1) & [...#latency_routing_policy]
	weighted_routing_policy?: #weighted_routing_policy | list.MaxItems(1) & [...#weighted_routing_policy]

	#alias: {
		evaluate_target_health!: bool
		name!:                   string
		zone_id!:                string
	}

	#cidr_routing_policy: {
		collection_id!: string
		location_name!: string
	}

	#failover_routing_policy: type!: string

	#geolocation_routing_policy: {
		continent?:   string
		country?:     string
		subdivision?: string
	}

	#geoproximity_routing_policy: {
		aws_region?:       string
		bias?:             number
		local_zone_group?: string
		coordinates?: #geoproximity_routing_policy.#coordinates | [...#geoproximity_routing_policy.#coordinates]

		#coordinates: {
			latitude!:  string
			longitude!: string
		}
	}

	#latency_routing_policy: region!: string

	#weighted_routing_policy: weight!: number
}
