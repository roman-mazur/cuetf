package data

#aws_ec2_public_ipv4_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_ec2_public_ipv4_pool")
	close({
		description?:          string
		id?:                   string
		network_border_group?: string
		pool_address_ranges?: [...close({
			address_count?:           number
			available_address_count?: number
			first_address?:           string
			last_address?:            string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:  string
		pool_id!: string
		tags?: [string]: string
		total_address_count?:           number
		total_available_address_count?: number
	})
}
