package res

import "list"

google_apigee_dns_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_dns_zone")
	close({
		peering_config!: matchN(1, [#peering_config, list.MaxItems(1) & [_, ...] & [...#peering_config]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description for the zone.
		description!: string

		// ID of the dns zone.
		dns_zone_id!: string

		// Doamin for the zone.
		domain!: string
		id?:     string

		// Name of the Dns Zone in the following format:
		// organizations/{organization}/dnsZones/{dnsZone}.
		name?: string

		// The Apigee Organization associated with the Apigee instance,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string
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
