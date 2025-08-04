package res

#aws_ec2_managed_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_managed_prefix_list")
	close({
		address_family!: string
		arn?:            string
		id?:             string
		max_entries!:    number
		name!:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		owner_id?: string
		entry?: matchN(1, [#entry, [...#entry]])
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
	})

	#entry: close({
		cidr!:        string
		description?: string
	})
}
