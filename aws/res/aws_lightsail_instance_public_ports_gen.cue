package res

#aws_lightsail_instance_public_ports: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_instance_public_ports")
	close({
		id?:            string
		instance_name!: string
		region?:        string
		port_info?: matchN(1, [#port_info, [_, ...] & [...#port_info]])
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
