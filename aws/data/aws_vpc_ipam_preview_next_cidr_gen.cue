package data

#aws_vpc_ipam_preview_next_cidr: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_vpc_ipam_preview_next_cidr")
	close({
		cidr?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		disallowed_cidrs?: [...string]
		id?:             string
		ipam_pool_id!:   string
		netmask_length?: number
		timeouts?:       #timeouts
	})

	#timeouts: close({
		read?: string
	})
}
