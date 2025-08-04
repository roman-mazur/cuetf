package res

#aws_datasync_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_agent")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		activation_key?:        string
		arn?:                   string
		id?:                    string
		ip_address?:            string
		name?:                  string
		timeouts?:              #timeouts
		private_link_endpoint?: string
		security_group_arns?: [...string]
		subnet_arns?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_endpoint_id?: string
	})

	#timeouts: close({
		create?: string
	})
}
