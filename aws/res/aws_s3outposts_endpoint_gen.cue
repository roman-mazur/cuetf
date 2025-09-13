package res

#aws_s3outposts_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3outposts_endpoint")
	close({
		access_type?:   string
		arn?:           string
		cidr_block?:    string
		creation_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		customer_owned_ipv4_pool?: string
		id?:                       string
		network_interfaces?: [...close({
			network_interface_id?: string
		})]
		outpost_id!:        string
		security_group_id!: string
		subnet_id!:         string
	})
}
