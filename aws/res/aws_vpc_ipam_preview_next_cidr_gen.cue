package res

#aws_vpc_ipam_preview_next_cidr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam_preview_next_cidr")
	cidr?: string
	disallowed_cidrs?: [...string]
	id?:             string
	ipam_pool_id:    string
	netmask_length?: number
}
