package res

import "list"

#aws_ec2_transit_gateway_peering_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_transit_gateway_peering_attachment")
	close({
		arn?:                     string
		id?:                      string
		peer_account_id?:         string
		peer_region!:             string
		peer_transit_gateway_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		state?:  string
		options?: matchN(1, [#options, list.MaxItems(1) & [...#options]])
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_id!: string
	})

	#options: close({
		dynamic_routing?: string
	})
}
