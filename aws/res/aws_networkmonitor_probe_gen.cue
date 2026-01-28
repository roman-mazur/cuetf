package res

#aws_networkmonitor_probe: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmonitor_probe")
	close({
		address_family?:   string
		arn?:              string
		destination!:      string
		destination_port?: number
		id?:               string
		monitor_name!:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		packet_size?: number
		probe_id?:    string
		protocol!:    string
		source_arn!:  string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})
}
