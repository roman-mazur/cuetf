package res

import "list"

#aws_route53_resolver_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53_resolver_endpoint")
	close({
		arn?:         string
		direction!:   string
		host_vpc_id?: string
		id?:          string
		ip_address!: matchN(1, [#ip_address, list.MaxItems(10) & [_, _, ...] & [...#ip_address]])
		name?: string
		protocols?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		resolver_endpoint_type?: string
		security_group_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#ip_address: close({
		ip?:        string
		ip_id?:     string
		ipv6?:      string
		subnet_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
