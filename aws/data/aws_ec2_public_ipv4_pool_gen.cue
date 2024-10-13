package data

#aws_ec2_public_ipv4_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_public_ipv4_pool")
	description?:          string
	id?:                   string
	network_border_group?: string
	pool_address_ranges?: [...{
		address_count?:           number
		available_address_count?: number
		first_address?:           string
		last_address?:            string
	}]
	pool_id!: string
	tags?: [string]: string
	total_address_count?:           number
	total_available_address_count?: number
}
