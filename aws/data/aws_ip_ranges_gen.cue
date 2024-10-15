package data

#aws_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ip_ranges")
	cidr_blocks?: [...string]
	create_date?: string
	id?:          string
	ipv6_cidr_blocks?: [...string]
	regions?: [...string]
	services!: [...string]
	sync_token?: number
	url?:        string
}
