package res

import "list"

#aws_vpc_ipam_pool_cidr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam_pool_cidr")
	cidr?:              string
	id?:                string
	ipam_pool_cidr_id?: string
	ipam_pool_id!:      string
	netmask_length?:    number
	cidr_authorization_context?: #cidr_authorization_context | list.MaxItems(1) & [...#cidr_authorization_context]
	timeouts?: #timeouts

	#cidr_authorization_context: {
		message?:   string
		signature?: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
