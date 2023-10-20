package res

import "list"

#aws_vpc_peering_connection_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_peering_connection_accepter")
	accept_status?: string
	auto_accept?:   bool
	id?:            string
	peer_owner_id?: string
	peer_region?:   string
	peer_vpc_id?:   string
	tags?: [string]: string
	tags_all?: [string]: string
	vpc_id?:                   string
	vpc_peering_connection_id: string
	accepter?:                 #accepter | list.MaxItems(1) & [...#accepter]
	requester?:                #requester | list.MaxItems(1) & [...#requester]
	timeouts?:                 #timeouts

	#accepter: allow_remote_vpc_dns_resolution?: bool

	#requester: allow_remote_vpc_dns_resolution?: bool

	#timeouts: {
		create?: string
		update?: string
	}
}
