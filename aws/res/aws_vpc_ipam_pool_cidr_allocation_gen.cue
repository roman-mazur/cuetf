package res

#aws_vpc_ipam_pool_cidr_allocation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_pool_cidr_allocation")
	cidr?:        string
	description?: string
	disallowed_cidrs?: [...string]
	id?:                      string
	ipam_pool_allocation_id?: string
	ipam_pool_id!:            string
	netmask_length?:          number
	resource_id?:             string
	resource_owner?:          string
	resource_type?:           string
}
