package res

#aws_ec2_instance_metadata_defaults: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ec2_instance_metadata_defaults")
	close({
		http_endpoint?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		http_put_response_hop_limit?: number
		http_tokens?:                 string
		id?:                          string
		instance_metadata_tags?:      string
	})
}
