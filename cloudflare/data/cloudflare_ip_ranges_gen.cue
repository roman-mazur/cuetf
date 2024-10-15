package data

#cloudflare_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_ip_ranges")
	china_ipv4_cidr_blocks?: [...string]
	china_ipv6_cidr_blocks?: [...string]
	cidr_blocks?: [...string]
	id?: string
	ipv4_cidr_blocks?: [...string]
	ipv6_cidr_blocks?: [...string]
}
