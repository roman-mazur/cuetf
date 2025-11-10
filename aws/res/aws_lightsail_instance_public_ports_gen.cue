package res

#aws_lightsail_instance_public_ports: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_instance_public_ports")
	close({
		port_info!: matchN(1, [#port_info, [_, ...] & [...#port_info]])
		id?:            string
		instance_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#port_info: close({
		cidr_list_aliases?: [...string]
		cidrs?: [...string]
		from_port!: number
		ipv6_cidrs?: [...string]
		protocol!: string
		to_port!:  number
	})
}
