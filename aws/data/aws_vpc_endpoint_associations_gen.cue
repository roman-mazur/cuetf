package data

#aws_vpc_endpoint_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_associations")
	close({
		associations?: [...close({
			associated_resource_accessibility?: string
			associated_resource_arn?:           string
			dns_entry?: [...close({
				dns_name?:       string
				hosted_zone_id?: string
			})]
			id?: string
			private_dns_entry?: [...close({
				dns_name?:       string
				hosted_zone_id?: string
			})]
			resource_configuration_group_arn?: string
			service_network_arn?:              string
			service_network_name?:             string
			tags?: [string]: string
		})]
		region?:          string
		vpc_endpoint_id!: string
	})
}
