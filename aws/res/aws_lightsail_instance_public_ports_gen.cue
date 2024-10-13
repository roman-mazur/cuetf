package res

#aws_lightsail_instance_public_ports: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_instance_public_ports")
	id?:            string
	instance_name!: string
	port_info?: #port_info | [_, ...] & [...#port_info]

	#port_info: {
		cidr_list_aliases?: [...string]
		cidrs?: [...string]
		from_port!: number
		ipv6_cidrs?: [...string]
		protocol!: string
		to_port!:  number
	}
}
