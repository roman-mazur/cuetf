package data

#aws_ec2_managed_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_managed_prefix_list")
	close({
		address_family?: string
		arn?:            string
		entries?: [...close({
			cidr?:        string
			description?: string
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		max_entries?: number
		filter?: matchN(1, [#filter, [...#filter]])
		name?:     string
		timeouts?: #timeouts
		owner_id?: string
		tags?: [string]: string
		version?: number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
