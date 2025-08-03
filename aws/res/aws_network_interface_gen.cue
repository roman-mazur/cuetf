package res

#aws_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_interface")
	close({
		arn?:                 string
		description?:         string
		enable_primary_ipv6?: bool
		id?:                  string
		interface_type?:      string
		ipv4_prefix_count?:   number
		ipv4_prefixes?: [...string]
		ipv6_address_count?: number
		ipv6_address_list?: [...string]
		ipv6_address_list_enabled?: bool
		ipv6_addresses?: [...string]
		ipv6_prefix_count?: number
		ipv6_prefixes?: [...string]
		mac_address?: string
		attachment?: matchN(1, [#attachment, [...#attachment]])
		outpost_arn?:      string
		owner_id?:         string
		private_dns_name?: string
		private_ip?:       string
		private_ip_list?: [...string]
		private_ip_list_enabled?: bool
		private_ips?: [...string]
		private_ips_count?: number
		region?:            string
		security_groups?: [...string]
		source_dest_check?: bool
		subnet_id!:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#attachment: close({
		attachment_id?: string
		device_index!:  number
		instance!:      string
	})
}
