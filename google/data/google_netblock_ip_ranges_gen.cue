package data

#google_netblock_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_netblock_ip_ranges")
	close({
		cidr_blocks?: [...string]
		cidr_blocks_ipv4?: [...string]
		cidr_blocks_ipv6?: [...string]
		id?:         string
		range_type?: string
	})
}
