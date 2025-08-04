package res

import "list"

#aws_vpc_peering_connection_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_peering_connection_options")
	close({
		accepter?: matchN(1, [#accepter, list.MaxItems(1) & [...#accepter]])
		requester?: matchN(1, [#requester, list.MaxItems(1) & [...#requester]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
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
