package res

#aws_ec2_traffic_mirror_session: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_traffic_mirror_session")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		description?:          string
		id?:                   string
		network_interface_id!: string
		owner_id?:             string
		packet_length?:        number
		session_number!:       number
		tags?: [string]:     string
		tags_all?: [string]: string
		traffic_mirror_filter_id!: string
		traffic_mirror_target_id!: string
		virtual_network_id?:       number
	})
}
