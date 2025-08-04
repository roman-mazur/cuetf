package res

#aws_vpclattice_service_network_vpc_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service_network_vpc_association")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		arn?:        string
		created_by?: string
		id?:         string
		security_group_ids?: [...string]
		service_network_identifier!: string
		timeouts?:                   #timeouts
		status?:                     string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_identifier!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
