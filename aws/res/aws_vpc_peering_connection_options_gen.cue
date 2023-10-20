package res

import "list"

#aws_vpc_peering_connection_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_peering_connection_options")
	id?:                       string
	vpc_peering_connection_id: string
	accepter?:                 #accepter | list.MaxItems(1) & [...#accepter]
	requester?:                #requester | list.MaxItems(1) & [...#requester]

	#accepter: allow_remote_vpc_dns_resolution?: bool

	#requester: allow_remote_vpc_dns_resolution?: bool
}
