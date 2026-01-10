package res

import "list"

#aws_vpc_peering_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpc_peering_connection")
	close({
		accept_status?: string
		auto_accept?:   bool
		id?:            string
		peer_owner_id?: string
		peer_region?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		accepter?: matchN(1, [#accepter, list.MaxItems(1) & [...#accepter]])
		requester?: matchN(1, [#requester, list.MaxItems(1) & [...#requester]])
		peer_vpc_id!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id!:   string
		timeouts?: #timeouts
	})

	#accepter: close({
		allow_remote_vpc_dns_resolution?: bool
	})

	#requester: close({
		allow_remote_vpc_dns_resolution?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
