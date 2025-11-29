package res

import "list"

#google_apigee_dns_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_dns_zone")
	close({
		// Description for the zone.
		description!: string

		// ID of the dns zone.
		dns_zone_id!: string

		// Doamin for the zone.
		domain!: string
		id?:     string
		peering_config!: matchN(1, [#peering_config, list.MaxItems(1) & [_, ...] & [...#peering_config]])

		// Name of the Dns Zone in the following format:
		// organizations/{organization}/dnsZones/{dnsZone}.
		name?: string

		// The Apigee Organization associated with the Apigee instance,
		// in the format 'organizations/{{org_name}}'.
		org_id!:   string
		timeouts?: #timeouts
	})

	#peering_config: close({
		// The name of the producer VPC network.
		target_network_id!: string

		// The ID of the project that contains the producer VPC network.
		target_project_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
