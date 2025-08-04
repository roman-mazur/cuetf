package res

import "list"

#aws_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint")
	close({
		arn?:         string
		auto_accept?: bool
		cidr_blocks?: [...string]
		dns_entry?: [...close({
			dns_name?:       string
			hosted_zone_id?: string
		})]
		id?:              string
		ip_address_type?: string
		network_interface_ids?: [...string]
		owner_id?:            string
		policy?:              string
		prefix_list_id?:      string
		private_dns_enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		requester_managed?:          bool
		resource_configuration_arn?: string
		dns_options?: matchN(1, [#dns_options, list.MaxItems(1) & [...#dns_options]])
		route_table_ids?: [...string]
		security_group_ids?: [...string]
		service_name?:        string
		service_network_arn?: string
		subnet_configuration?: matchN(1, [#subnet_configuration, [...#subnet_configuration]])
		service_region?: string
		state?:          string
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_endpoint_type?: string
		timeouts?:          #timeouts
		vpc_id!:            string
	})

	#dns_options: close({
		dns_record_ip_type?:                             string
		private_dns_only_for_inbound_resolver_endpoint?: bool
	})

	#subnet_configuration: close({
		ipv4?:      string
		ipv6?:      string
		subnet_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
