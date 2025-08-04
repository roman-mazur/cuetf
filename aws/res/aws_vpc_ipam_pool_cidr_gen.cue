package res

import "list"

#aws_vpc_ipam_pool_cidr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_pool_cidr")
	close({
		cidr?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		id?:                string
		ipam_pool_cidr_id?: string
		ipam_pool_id!:      string
		netmask_length?:    number
		cidr_authorization_context?: matchN(1, [#cidr_authorization_context, list.MaxItems(1) & [...#cidr_authorization_context]])
		timeouts?: #timeouts
	})

	#cidr_authorization_context: close({
		message?:   string
		signature?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
