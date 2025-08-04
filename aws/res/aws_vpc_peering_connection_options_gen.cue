package res

import "list"

#aws_vpc_peering_connection_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_peering_connection_options")
	close({
		accepter?: matchN(1, [#accepter, list.MaxItems(1) & [...#accepter]])
		requester?: matchN(1, [#requester, list.MaxItems(1) & [...#requester]])
		id?:                        string
		region?:                    string
		vpc_peering_connection_id!: string
	})

	#accepter: close({
		allow_remote_vpc_dns_resolution?: bool
	})

	#requester: close({
		allow_remote_vpc_dns_resolution?: bool
	})
}
