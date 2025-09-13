package res

#aws_vpc_ipam_resource_discovery_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_resource_discovery_association")
	close({
		arn?:         string
		id?:          string
		ipam_arn?:    string
		ipam_id!:     string
		ipam_region?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		timeouts?:                   #timeouts
		ipam_resource_discovery_id!: string
		is_default?:                 bool
		owner_id?:                   string
		state?:                      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
