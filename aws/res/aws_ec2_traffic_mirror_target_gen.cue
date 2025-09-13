package res

#aws_ec2_traffic_mirror_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_traffic_mirror_target")
	close({
		arn?:                               string
		description?:                       string
		gateway_load_balancer_endpoint_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		id?:                        string
		network_interface_id?:      string
		network_load_balancer_arn?: string
		owner_id?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
