package res

#aws_lightsail_lb: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_lb")
	close({
		arn?:               string
		created_at?:        string
		dns_name?:          string
		health_check_path?: string
		id?:                string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		instance_port!:   number
		ip_address_type?: string
		name!:            string
		protocol?:        string
		public_ports?: [...number]
		support_code?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
