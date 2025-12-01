package res

#aws_default_vpc_dhcp_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_default_vpc_dhcp_options")
	close({
		arn?:                 string
		domain_name?:         string
		domain_name_servers?: string
		id?:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                            string
		ipv6_address_preferred_lease_time?: string
		netbios_name_servers?:              string
		netbios_node_type?:                 string
		ntp_servers?:                       string
		owner_id?:                          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
